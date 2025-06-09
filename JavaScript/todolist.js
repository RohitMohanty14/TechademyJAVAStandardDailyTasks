const todoList = [];
function addTask(taskName) {
    todoList.push({
        name: taskName,
        status: "pending"
    });
}
function completeTask(taskName) {
    const task = todoList.find(t => t.name === taskName);
    if (task) {
        task.status = "completed";
    } else {
        console.log(`Task "${taskName}" not found.`);
    }
}
function displayTasks() {
    if (todoList.length === 0) {
        console.log("No tasks in the list.");
        return;
    }
    todoList.forEach((task, index) => {
        console.log(`${index + 1}. ${task.name} - ${task.status}`);
    });
}