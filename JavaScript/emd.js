  let employees = [];

  function addEmployee(name, role = "Trainee", salary = 10000) {
    employees.push({ name, role, salary });
    console.log("Employee added:", name);
  }

  function listEmployees() {
    console.log("Employee List:");
    employees.forEach((emp, index) => {
      console.log(`${index + 1}. Name: ${emp.name}, Role: ${emp.role}`);
    });
    console.log();
  }

  function getSalaries(Code) {
    if (Code === "admin123") {
      console.log("Salaries:");
      employees.forEach(emp => {
        console.log(`${emp.name}: ₹${emp.salary}`);
      });
    } else {
      console.log("Access Denied: Invalid Code");
    }
  }