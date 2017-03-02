// http://nodingbat.com/exercises/warmup-1/notString
//
// Given a string, return a new string where 'not ' has been added to the front.
// However, if the string already begins with 'not', return the string unchanged.

var notString=function(str) {
  	var first3 = str.slice(0, 3);
	if (first3 === "not") {
    	return str;
    } else {
  		return "not " + str;
    }
}

// Referenced:
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/slice
