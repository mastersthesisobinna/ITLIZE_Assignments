function showDate() {
    var todaysDate = new Date();

    if (todaysDate.getDay() == 1)
        document.getElementById('showDate').innerHTML = "Today is : Monday";
    else if (todaysDate.getDay() == 2)
        document.getElementById('showDate').innerHTML = "Today is : Tuesday";
    else if (todaysDate.getDay() == 3)
        document.getElementById('showDate').innerHTML = "Today is : Wednesday";
    else if (todaysDate.getDay() == 4)
        document.getElementById('showDate').innerHTML = "Today is : Thursday";
    else if (todaysDate.getDay() == 5)
        document.getElementById('showDate').innerHTML = "Today is : Friday";
    else if (todaysDate.getDay() == 6)
        document.getElementById('showDate').innerHTML = "Today is : Saturday";
    else if (todaysDate.getDay() == 7)
        document.getElementById('showDate').innerHTML = "Today is : Sunday";
    else
        document.getElementById('showDate').innerHTML = "Error in date display";
}


function showTime() {
    var today = new Date();
    var hour24 = today.getHours();
    var hourAmPm;
    var minute = today.getMinutes();
    var second = today.getSeconds();

    //convert 24hour to AM/PM
    switch (hour24) {
        case 0: hourAmPm = "12 AM";
            break;
        case 1: hourAmPm = "1 AM";
            break;
        case 2: hourAmPm = "2 AM";
            break;
        case 3: hourAmPm = "3 AM";
            break;
        case 4: hourAmPm = "4 AM";
            break;
        case 5: hourAmPm = "5 AM";
            break;
        case 6: hourAmPm = "6 AM";
            break;
        case 7: hourAmPm = "7 AM";
            break;
        case 8: hourAmPm = "8 AM";
            break;
        case 9: hourAmPm = "9 AM";
            break;
        case 10: hourAmPm = "10 AM";
            break;
        case 11: hourAmPm = "11 AM";
            break;
        case 12: hourAmPm = "12 PM";
            break;
        case 13: hourAmPm = "1 PM";
            break;
        case 14: hourAmPm = "2 PM";
            break;
        case 15: hourAmPm = "3 PM";
            break;
        case 16: hourAmPm = "4 PM";
            break;
        case 17: hourAmPm = "5 PM";
            break;
        case 18: hourAmPm = "6 PM";
            break;
        case 19: hourAmPm = "7 PM";
            break;
        case 20: hourAmPm = "8 PM";
            break;
        case 21: hourAmPm = "9 PM";
            break;
        case 22: hourAmPm = "10 PM";
            break;
        case 23: hourAmPm = "11 PM";
            break;
        case 24: hourAmPm = "12 AM";
            break;

        default:
            hourAmPm = undefined;
    }



    document.getElementById('showTime').innerHTML = "Current time is " + hourAmPm + " : " + minute + " : " + second;

}

function showCurrentDateFormat1() {
    //mm-dd-yyyy

    var today = new Date();
    var month = (today.getMonth()) - 1; //daylight saving
    var day = today.getDay();
    var year = today.getFullYear();


    document.getElementById('currentDate').innerHTML = month + '-' + day + '-' + year + '<br />';
}

function showCurrentDateFormat2() {
    //mm/dd/yyyy

    var today = new Date();
    var month = (today.getMonth()) - 1; //daylight saving
    var day = today.getDay();
    var year = today.getFullYear();


    document.getElementById('currentDate').innerHTML = month + '/' + day + '/' + year + '<br />';
}

function showCurrentDateFormat3() {
    //dd-mm-yyyy

    var today = new Date();
    var month = (today.getMonth()) - 1;             //daylight saving
    var day = today.getDay();
    var year = today.getFullYear();


    document.getElementById('currentDate').innerHTML = day + '-' + month + '-' + year + '<br />';
}

function showCurrentDateFormat4() {
    //dd/mm/yyyy

    var today = new Date();
    var month = (today.getMonth()) - 1;             //daylight saving
    var day = today.getDay();
    var year = today.getFullYear();


    document.getElementById('currentDate').innerHTML = day + '/' + month + '/' + year + '<br />';
}

function calculate(button, number1, number2) {
    var button = document.getElementById(button).value;             //Get the button that was cliked (i.e. multiply or divide button)
    var input1 = document.getElementById(number1).value;            //Get the first value entered as input 
    var input2 = document.getElementById(number2).value;            //Get the second value entered as input

    //convert values for use
    var input1ToNumber = Number(input1);
    var input2ToNumber = Number(input2);
    var result;


    if (input1 == "") {
        document.getElementById("resultArithmetic").innerHTML = "Please enter a digit as 1st Number";
    }
    else if (input2 == "") {
        document.getElementById("resultArithmetic").innerHTML = "Please enter a digit as 2nd Number";
    } else {
        if (button == "multiply") {
            //document.getElementById("resultArithmetic").innerHTML = "Multiply";
            result = input1ToNumber * input2ToNumber;
            document.getElementById("resultArithmetic").innerHTML = "The Result Is : <br />" + result;
        } else if (button == "divide") {
            //document.getElementById("resultArithmetic").innerHTML = "Divide";
            if (input2ToNumber == "0") {
                document.getElementById("resultArithmetic").innerHTML = "Warning! Division by zero not allowed";
            } else {
                result = input1ToNumber / input2ToNumber;
                document.getElementById("resultArithmetic").innerHTML = "The Result Is : <br />" + result;
            }
        }

    }
}


function returnURL() {
    var pageUrl = document.URL;

    document.getElementById('loadedPageURL').innerHTML = (pageUrl);
}


function reverseCharacter(inputValue) {
    var value = document.getElementById(inputValue).value;              //string value from your input
    var size = value.length;                                            //the returned length will be used to create the array object
    var arrayValue = [];
    var reversedValue = [];

    //create an array object to hold the string value
    for (var i = 0; i < size; i++)
        arrayValue[i] = value.charAt(i);

    //use a for loop to reverse the data in the array object
    for (var i = 0, j = (size - 1) ; i < size; i++, j--) {
        reversedValue[i] = arrayValue[j];                               //reversedValue[0] will now hold the data stored in arrayValue[4]
    }

    document.getElementById('originalValue').innerHTML = "Original Value entered : " + String(arrayValue).replace(/,/g, '');
    document.getElementById('reversedValue').innerHTML = "Reversed version of the original value : " + String(reversedValue).replace(/,/g, '');
}



function secondLargest() {
    var a = [1, 2, 3, 4, 5];
    var max = a[0];         //current max
    var tempMax = max;      //holds the value of current max
    var secMax = a[0];      //current second max
    var size = a.length;

    for (var i = 1; i < size; i++) {
        if (a[i] > max) {
            max = a[i];
            if (max > secMax && tempMax < max) {   //if current max is greater than current secMax AND old max (i.e. temporary max) is less than current max then
                secMax = tempMax;                  //new secMax is assigned old tempMax value
                tempMax = max;                     //new tempMax is assigned the current max
            }
        }
        else {                                     //if element at given index is not greater than current max then
            if (a[i] > secMax)                     //check whether that element at the given index is greater than the current secMax.
                secMax = a[i];                     //if the element at the given index is greater than current min, then new secMax is assigned element (a[i])
        }
    }

    document.getElementById('secondLargest').innerHTML = "Array : " + a + "<br/>Largest : " + max + "<br />Second Largest : " + secMax;

}


function secondLowest() {
    var a = [1, 2, 3, 4, 5];
    var min = a[0];
    var secMin = a[1];
    var size = a.length;

    for (var i = 1; i < size; i++) {
        if (a[i] <= min) {
            secMin = min;
            min = a[i];
        }
        if (a[i] > min && a[i] <= secMin) {
            secMin = a[i];
        }
    }
    document.getElementById('secondLowest').innerHTML = "Array : " + a + "<br/>Lowest : " + min + "<br />Second Lowest : " + secMin;

}


function getRange(start, finish) {
    var first = document.getElementById(start).value;
    var last = document.getElementById(finish).value;

    var firstConvert = Number(first);
    var lastConvert = Number(last);

    var result = function (x, y) {
        var findRange = range(x, y); //See my method definition for range() function below
        return findRange;
    };

    document.getElementById('resultRange').innerHTML = "[" + result(firstConvert, lastConvert) + "]";
}



function range(lowestNumber, highestNumber) {
    //this function will get the values between the set range
    var convert1 = Number(lowestNumber); //the minimum value
    var convert2 = Number(highestNumber) //the maximum value
    var diff = convert2 - convert1;
    var length = diff + 1; //used as length of array
    var a = []; //array object to hold range values

    if (diff <= 1) {
        return "No integer values between the specified range is returned";
    }

    for (var i = 0, j = convert1; i < length; i++, j++) {
        a[i] = j;
    }

    //remove the last element in the array            
    a.pop();

    //remove the first element in the array
    a.shift();

    //return remaining elements in the array
    return a;
}


function sortArray() {
    var points = [34, 7, 23, 32, 5, 62];
    var sorted = points.sort(function (a, b) { return a - b });

    document.getElementById('arraySortResult').innerHTML = "[" + sorted + "]";
}


function getLargestElement() {
    var a = [-5, -2, -6, 0, -1];
    var max = a[0];
    var temp = max;
    var length = a.length;

    for (var i = 1; i < length; i++) {
        if (a[i] > temp) {
            max = a[i];
            temp = max;
        }
    }

    document.getElementById('findLargestResult').innerHTML = max;
}


function NaNCheck(value) {
    var parsedValue = document.getElementById(value).value;

    //check whether the value parsed is a NaN type
    if (Number.isNaN(parsedValue))
        document.getElementById('NaNTypeCheckResult').innerHTML = "True and the type is " + (typeof parsedValue);
    else
        document.getElementById('NaNTypeCheckResult').innerHTML = "False and the type is " + (typeof parsedValue);

}


function compareTypes() {
    var a = [1, 2, 3, 4];
    var a2 = '1, 2, 3, 4';


    if (a === a2)
        document.getElementById('resultOfValueTypes').innerHTML =
                                                                "<br />Both value types are the <strong>same</strong>" +
                                                                    "<br />Value type of <strong><em>var a = [1, 2, 3, 4]</em></strong> is: " + typeof a +
                                                                        "<br />Value type of <strong><em>var a2 = '1, 2, 3, 4'</em></strong> is: " + typeof a2;
    else
        document.getElementById('resultOfValueTypes').innerHTML =
                                            "<br />Both value types are <strong>not the same</strong>." +
                                                "<br />Value type of <strong><em>var a = [1, 2, 3, 4]</em></strong> is: " + typeof a +
                                                    "<br />Value type of <strong><em>var a2 = '1, 2, 3, 4'</em></strong> is: " + typeof a2;

}