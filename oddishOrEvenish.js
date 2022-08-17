const number = prompt("Enter a number: ");

var total = 0,
    sNumber = number.toString();
    
oddishOrEvenish(sNumber);

function oddishOrEvenish(sNumber){
	for (var i = 0, len = sNumber.length; i < len; i += 1) {
    		total += Number(sNumber[i]);
    	 }
  if(total % 2 == 0) 
     console.log("Even.");
 
 if(total % 2 == 1) 
     console.log("Odd.");
}
    
