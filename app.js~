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
        SELECT t.teamname\
        FROM team t,\
            (SELECT b.team_id\
             FROM belong b\
             WHERE b.user_id IN\
                (SELECT user_id\
                 FROM user\
                 WHERE username='kana')\
                )F\
        WHERE F.team_id=t.team_id;\
        ";
       
        console.log("DBG:" + query);
    db.all(query, {}, function (err, rows) {
        if (err) {
            console.log("ERROR: " + err.message);
        }
        res.render('index', {
            results: rows
        })
    })
});

app.listen(3000, () => console.log('Example app listening on port 3000!'))
