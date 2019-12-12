var mysql = require("mysql");
var util = require("util");
// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Winter01@",
  database: "EmployeDB"
});

connection.connect();
connection.query = util.promisify(connection.query);

module.exports = connection;