package main


import (
	"fmt"
	"github.com/shurcooL/github_flavored_markdown"
	"html/template"
	"net/http"
	"strconv"
)

func postForm(w http.ResponseWriter, r *http.Request)  {
	htop(w,r)
	var user User
	user = isauth(w,r)
		p := &Postformdata{Id: user.id, Fname: user.fname, Sname: user.sname}
		t, _ := template.ParseFiles("tmpl/postform.html")
		t.Execute(w, p)
	t, _ = template.ParseFiles("tmpl/footer.html")
	t.ExecuteTemplate(w, "footer",nil)
}

func postHandle(w http.ResponseWriter, r *http.Request) {
	htop(w,r)
	var user User
	user = isauth(w,r)

		db := dbConnect()
//		r.ParseForm()
		postdata := r.FormValue("postdata")
		var markdown []byte = github_flavored_markdown.Markdown([]byte(postdata))
		result, err := db.Exec("insert into posts (owner, post) values(?,?)", user.id, markdown)
		if err != nil {
			fmt.Println(err)
		}
	var lid int64
		lid, err = result.LastInsertId()
		if err != nil {
			fmt.Println(err)
		}
		fmt.Println(result.RowsAffected())
		row := db.QueryRow("select post, users.fname, users.sname, posts.posttime from posts left join users on posts.owner = users.id where posts.id=? ", lid)
		var fname, sname, posttime string
		var post []byte
		err = row.Scan(&post, &fname, &sname, &posttime)
		if err != nil {
			fmt.Println(err)
		}
		t, _ := template.ParseFiles("tmpl/header.html")
		t.Execute(w, nil)
		w.Write(github_flavored_markdown.Markdown([]byte("<div>")))
		w.Write(github_flavored_markdown.Markdown(post))
		fmt.Println(w, "запостчено" + fname + " " + sname+", "+ posttime)
		//t, _ = template.ParseFiles("tmpl/footer.html")
		//t.Execute(w, nil)
		db.Close()
	}
func postview(w http.ResponseWriter, r *http.Request) {
	htop(w,r);
	postid := r.URL.Path[len("/postview/"):]

	i, err := strconv.Atoi(postid)
	if err != nil {
		fmt.Println(err)
	}

		db := dbConnect()
		row := db.QueryRow("select post, users.username, posts.posttime from posts left join users on posts.owner = users.id where posts.id=? ",  i )
		var username, posttime string
		var post []byte
		err = row.Scan(&post, &username, &posttime)
		if err != nil {
			fmt.Println(err)
		}
		w.Write(github_flavored_markdown.Markdown([]byte("<div>")))
		w.Write(github_flavored_markdown.Markdown(post))
		w.Write(github_flavored_markdown.Markdown([]byte("</div>")))
		p := &Postdata{Posttime: posttime}

	c := Comdata{}
	rows, err := db.Query("select comment, fname, sname, comtime from comments left join users on comments.owner = users.id where postid=? order by comtime", postid)
	fmt.Println(postid)
	if err != nil {
	    fmt.Println(err)
	}

	for rows.Next() {
	    err = rows.Scan(&c.Comment, &c.Fname, &c.Sname, &c.Comtime)
	    if err != nil {
		fmt.Println(err)
		continue
	    }
	    w.Write(github_flavored_markdown.Markdown([]byte("<div>")))
	    w.Write(github_flavored_markdown.Markdown(c.Comment))
	    pc := &Comdata{Fname: c.Fname, Sname: c.Sname, Comtime: c.Comtime}
	    tc, err := template.ParseFiles("tmpl/comm.html")
	    if err != nil {
		fmt.Println(err)
	    }
	    tc.Execute(w, pc)
	    }
	w.Write(github_flavored_markdown.Markdown([]byte("</div></div>")))

    

		t, _ := template.ParseFiles("tmpl/post.html")
		t.Execute(w, p)
		db.Close()

}
