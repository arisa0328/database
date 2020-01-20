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
                SELECT u.username,count(usermoto_id)\
                FROM user u LEFT OUTER JOIN message m\
                ON u.user_id=m.usermoto_id\
                WHERE m.usersaki_id='kotono_3'\
                GROUP BY u.username;\
                ";
       
       
        console.log("DBG:" + query);
    db.all(query, {}, function (err, rows) {
        if (err) {
            console.log("ERROR: " + err.message);
        }
        res.render('index2', {
            results: rows
        })
    })
});

app.listen(3000, () => console.log('Example app listening on port 3000!'))
