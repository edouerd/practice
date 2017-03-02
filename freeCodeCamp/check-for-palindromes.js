// https://www.freecodecamp.com/challenges/check-for-palindromes
//
// Finish Notes:
//
// Referenced:
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/toLowerCase
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp


function palindrome(str) {
  // make string lowercase & eliminate all weird characters 
  var normalStr = str.toLowerCase().replace(/[^A-Za-z0-9]/gi, '');
  
  // I need to turn the 'str' variable into an array and reverse it
  // turning it/assigning it into a new array, reverseStr
  var reverseStr = normalStr.split('').reverse().join('');
  
  // I then need to compare the two arrays
  // to see if they are equal, if they are, then it's a palindrome.
  if (normalStr === reverseStr) {
    return true;
  } else {
    return false;
  }
}
palindrome("_eye");
