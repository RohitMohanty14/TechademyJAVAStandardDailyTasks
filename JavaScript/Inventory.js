let officeSupplies = [];

function addSupply(item) {
  officeSupplies.push(item);
  console.log("Added:", item);
  displayInventory();
}

function removeSupply(item) {
  const index = officeSupplies.indexOf(item);
  if (index !== -1) {
    officeSupplies.splice(index, 1);
    console.log("Removed:", item);
  } else {
    console.log("Item not found:", item);
  }
  displayInventory();
}

function displayInventory() {
  console.log("Office Supplies Inventory:");
  if (officeSupplies.length === 0) {
    console.log("Inventory is empty.");
  } else {
    officeSupplies.forEach((item, index) => {
      console.log(index + 1 + ". " + item);
    });
  }
  console.log();
}
