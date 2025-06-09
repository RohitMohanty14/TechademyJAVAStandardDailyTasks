function arrayLargeandSmall(arr) {
    if (arr.length === 0) {
        console.log
    }
    else if (arr.length === 1) {
        console.log("Largest and smallest element: " + arr[0]);
    }
    else{
    
      let largest = arr[0];
      let smallest = arr[0];

      for (let i = 1; i < arr.length; i++) {
          if (arr[i] > largest) {
              largest = arr[i];
          }
          if (arr[i] < smallest) {
              smallest = arr[i];
          }
       }

      console.log("Largest element: " + largest);
      console.log("Smallest element: " + smallest);
    }
}