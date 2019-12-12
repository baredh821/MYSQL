const { prompt } = require("inquirer");
const db = require("./db");

require("console.table");

startProg();

async function startProg() {
    const { choice } = await prompt([
        {
            type: "list",
            name: "choice",
            message: " What wou;d you like to do?",
            choices: [
                {
                    name: "View All Employees",
                    Value: "VIEW_EMPLOYEES"
                },
                {
                    name: "View all employees by department",
                    value: "VIEW_EMPLOYEES_BY_DEPARTMENT"
                },
                {
                    name: "View all employees by Manager",
                    value: "VIEW_EMPLOYEES_BY_MANAGER"
                },
                {
                    name: "Add Employee",
                    value: "ADD_EMPLOYEE"
                },
                {
                    name: "Delete Employee",
                    value: "DELETE_EMPLOYEE"
                }
            ]
        }
    ])
    switch(choice){
        case "VIEW_EMPLOYEES": return viewEmployees();
        break;
         case "VIEW_EMPLOYEES_BY_DEPARTMENT": return viewEmployeeByDept();
        break;
        case "VIEW_EMPLOYEES_BY_MANAGER": return viewEmployeesByManager();
        break;
        case "ADD_EMPLOYEE": return addEmployees();
        break;
        case "DELETE_EMPLOYEE": return deleteEmployees();
        // break;
        // default: return quit();

    }
}

async function viewEmployees(){
    const employees = await db.findAllEmployee();
    console.table(employees);
    startProg();
}