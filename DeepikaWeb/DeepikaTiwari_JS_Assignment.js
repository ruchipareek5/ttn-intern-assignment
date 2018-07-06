// Deepika Tiwari - JavaScript Assignment

// Question 1
var myArr = [];
// undefined
for (i = 0; i < 20; i++) { myArr.push(i * 2); }
// 20
myArr;
// (20) [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38]
function checkForTwenty(num) { return num > 20; }
// undefined
myArr.filter(checkForTwenty);
// (9) [22, 24, 26, 28, 30, 32, 34, 36, 38]

// Question 2
var internArr = [];
// undefined
for (i = 1; i <= 10; i++) { internArr.push(prompt("Name of intern " + i)); }
// 10
internArr;
// (10) ["Deepika", "Deepshikha", "Niharika", "Sukirti", "Dolly", "Nishtha", "Mehak", "Shivangi", "Sakshi", "Ayushi"]

// Question 3
var menu = [{item: "pizza", price: 400}, {item: "pasta", price: 275}, {item: "lasagna", price: 450}, {item: "chilli cheese", price: 375}];
// 4
menu.push({item: "baked vegetables", price: 295});
// 5
menu.push({item: "honey chilli potato", price: 180});
// 6
menu;
/*
(6) [{…}, {…}, {…}, {…}, {…}, {…}]
0: {item: "pizza", price: 400}
1: {item: "pasta", price: 275}
2: {item: "lasagna", price: 450}
3: {item: "chilli cheese", price: 375}
4: {item: "baked vegetables", price: 295}
5: {item: "honey chilli potato", price: 180}
length: 6
__proto__: Array(0)
*/
var itemNumber = 0;

do {
	itemNumber = prompt("What's your order?\n0. Pizza\n1. Pasta\n2. Lasagna\n3. Chilli Cheese\n4. Baked Vegetables\n5. Honey Chilli Potato\nEnter anything else to quit");
	console.log(JSON.stringify(menu[itemNumber]));
} while (itemNumber >= 0 && itemNumber <= 5);
console.log("Enjoy your meal!");

/*
{item: "pizza", price: 400}
{item: "pasta", price: 275}
{item: "lasagna", price: 450}
Enjoy your meal!
*/
