function calc(a, b, operation) {
  switch (operation) {
    case 'add':
      console.log('Addition: ' + (a + b));
      break; 
    case 'subtract':
      console.log('Subtraction: ' + (a - b));
        break;
    case 'multiply':
      console.log('Multiplication: ' + (a * b));

    case 'divide':
      if (b === 0) {
        console.log('Cannot divide by zero');
        break;
      }
      console.log('Division: ' + (a / b));
      break;
    case 'modulus': 
      console.log('Modulus: ' + (a % b));
      break;
    default:
      console.log('Unknown operation');
  }
}