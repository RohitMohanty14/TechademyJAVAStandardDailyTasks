function generateEmail(name, department="Consultant", date) {
  const message = `Dear ${name},\nWelcome to the ${department} team! Your joining date is ${date}.`;
  return message;
}