//importing express module
let express = require('express');
//making use of the router function of express module
let router = express.Router();

//import database configuration
let db = require('../database');

/* API route to get count of all assets with static query parameters */
router.get('/dashboard/ref', (req, res) =>{
  //let allData = {};
  const trans_table_sql="SELECT DISTINCT reference FROM transactions"; 

  db.query(trans_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         console.log(data.length)
         let arr = []
        for (i in Object.values(data)){
          arr.push(Object.values(data[i])[0])
        }
        console.log(arr)
         res.status(200).send(arr)
    }
  })
}); // end of query

router.get('/dashboard/daily', (req, res) =>{

  const trans_table_sql="SELECT SUM(amounttransferred) AS total, reference FROM transactions WHERE msisdn=233202000121 GROUP BY reference"; 
  "SELECT"

  db.query(trans_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         res.status(200).json(data)
    }
  })
}); // end

router.get('/dashboard/weekly', (req, res) =>{

  const trans_table_sql="SELECT reference, SUM(amounttransferred) AS total, WEEK(transdate) as week FROM transactions WHERE msisdn=233202000121 GROUP BY reference"; 

  db.query(trans_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         res.status(200).json(data)
    }
  })
}); // end

router.get('/dashboard/monthly', (req, res) =>{

  const trans_table_sql="SELECT  reference, SUM(amounttransferred) AS total, MONTHNAME(transdate) AS month FROM transactions WHERE msisdn=233202009882 GROUP BY reference"; 

  db.query(trans_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         console.log(data)
         res.status(200).json(data)
    }
  })
}); // end

router.get('/dashboard/summary', (req, res) =>{

  const trans_table_sql="SELECT reference, SUM(amounttransferred) AS total FROM transactions WHERE msisdn=233202009882 GROUP BY reference"; 

  db.query(trans_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         console.log(data)
         res.status(200).json(data)
    }
  })
}); // end


router.get('/dashboard/budjet', (req, res) =>{

  const budjet_table_sql="SELECT expense_type, expense_amount AS expense FROM budjet WHERE msisdn_id=233202009882 GROUP BY expense_type"; 

  db.query(budjet_table_sql, (err, data) =>{
    if(err) {
      console.log(err)
      return
    }else{
         res.removeHeader('content-security-policy')
	       res.removeHeader('x-xss-protection')
         res.setHeader('Content-Type', 'application/json')
         console.log(data)
         res.status(200).json(data)
    }
  })
}); // end

//export to reach it in app.js
module.exports = router;