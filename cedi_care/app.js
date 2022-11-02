let express = require('express')
let mysql = require('mysql')
let db = require('./database')
let bodyParser = require('body-parser')
let dotenv = require('dotenv')

dotenv.config({ path: './.env'});

let state = 'off';
let app = express()

//set view rendering engine
app.set('view engine', 'ejs');

//set folder to load static files from
app.use(express.static(__dirname + '/public'));
app.use(express.urlencoded({ extended: false }));
app.use(bodyParser.json());

  const redirectDashboard = (req, res, next) =>{
	if(state == 'on'){
		res.redirect('/dashboard')
	}else{
		res.render('login')
	}
}

app.get('/', (req, res) =>{
        res.render('login') 
        console.log(state)
})

app.post('/budjet', (req, res) =>{
    let title = req.body.title
    let expense_type = req.body.expense_type
    let period = req.body.period
    let end_date = req.body.end_date 
    
    let params = [title, expense_type, period, end_date]
    
    sql_query = "INSERT INTO budjet (`title`, `expense_type`, `period`, `end_date`) values (?,?,?,?)"
    
    db.query(sql_query, (err)=>{
        if (!err){
            res.status(200).send({'msg': 'ok'})
        }else{
            res.send({"msg":"notokay"})
            res.end()
        }
    })
})

app.post('/check', (req, res)=>{
    params = [req.body.username, req.body.password]
    sql_query = 'SELECT EXISTS (SELECT * FROM users WHERE msisdn = ? AND password = ?)'

    db.query(sql_query, params, (err, data, fields)=>{
        if (err) throw err
        if (Object.values(data[0])[0] == 1){
            res.status(200).json({'msg':'success'})
            state = 'on';
        }
        else{
            state = 'off';
        }
       
    }) 
})


/*route imports */
const dashboardRouter = require('./routes/dashboard'); 
const { end } = require('./database')

/* using imported routes */
app.use('/', dashboardRouter);


app.listen(process.env.APP_PORT, () => {
    console.log(`server started on port ${process.env.APP_PORT}`)
    
})