var sqlite3 = require('sqlite3').verbose()
var bodyParser = require('body-parser')
const express = require('express')
const app = express()
app.use(express.static('public'));
app.set('view engine', 'pug')
var urlencodedParser = bodyParser.urlencoded({ extended: false })
app.use(bodyParser.json())

var db = new sqlite3.Database('line.db')

app.get('/', function (req, res, next) {
    var query = "\
                SELECT n.contents,n.datatime,u.username\
                FROM note n,user u,\
               (SELECT user_id\
                FROM belong\
                WHERE team_id='banana_3')W\
                WHERE W.user_id=n.user_id\
                and  u.user_id=n.user_id;\
                ";

              
       
        console.log("DBG:" + query);
    db.all(query, {}, function (err, rows) {
        if (err) {
            console.log("ERROR: " + err.message);
        }
        res.render('index3', {
            results: rows
        })
    })
});

app.listen(3000, () => console.log('Example app listening on port 3000!'))
