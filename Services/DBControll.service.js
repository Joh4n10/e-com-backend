const mysql = require('mysql');

class DBControllService {

    constructor() {

        this.checkConnection();
    }


    con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "Albania321J@@",
        database: "e_store"
    });

    checkConnection = () => {
        this.con.connect((err) => {
            if (err) {
                console.error('error connecting: ' + err.stack);
                return;
            }
            else {
                console.log("Connected!");
            }
        });
    }

    runQuery = (sql) => {
        return new Promise((res, rej) => {
            this.con.query(sql, (err, result) => {
                if (err) rej(err);
                res(result);
            });
        })

    }
}

module.exports = DBControllService;