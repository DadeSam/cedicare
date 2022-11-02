CEDICARE ENDPOINT for API FETCH CALLs
---------------------------------------------------

STEPS to DEPLOY
-----------------------------------------
     DATABASE SETUP
        1. Install mysql server on your local pc.
            (or just install xampp server. It comes with mariadb, which will work fine)
        2. Import the 'cedicare_tables.sql' file into your mysql server
            This will create a database called cedicare 3 tables named transactions, users, budjet.

    APP deployment
       ** I assume you have node installed already **
        1. Clone the application from the git repository to your local machine
        2. Open command prompt or any terminal of choice and change directory to the location of the application
        3. whilst still in the directory, run  `npm install` to install relevant pakcages
        4. run `node app.js` to start the server. The server listens on port 2000.


ENDPOINTS TO HIT FOR DATA
------------------------------------
    Aggregations
        1. For daily data, you will hit the endpoint http://localhost:2000/dashboard/daily
        2. For week;y data, you will hit the endpoing http://localhost:2000/dashboard/weekly
        3. For week;y data, you will hit the endpoing http://localhost:2000/dashboard/monthly
        4. For summary data, you will hit the endpoint http://localhost:2000/dashboard/summary
        5. To get types of references a user has set or used in his/her transactions, hit the endpoint http://localhost:2000/dashboard/summary
    
    Budjet
        1. To return budjet that has been added, you will hit http://localhost:2000/dashboard/budjet
        2. To post a filled budjet form, you will do a post request to http://localhost:2000/budjet

***NOTE***
ALL THESE QUERIES FOR ONE USER ONLY
BY DEFAULT I HAVE SET IT TO DENNIS'S MSISDN
FOR THE MAIN THING, WE WILL SET A LOCAL VARIABLE TO HANDLE THIS DYNAMICALLY
SINCE WE DON"T HAVE A LOGIN PAGE TO HOLD THAT USER_ID/MSISN NUMBER.
