function Factorial(n) {
    if (n < 0) {
        console.log("Factorial is not defined for negative numbers.");
    }
    if (n === 0 || n === 1) {
        return 1;
    }
    return n * Factorial(n - 1);
}