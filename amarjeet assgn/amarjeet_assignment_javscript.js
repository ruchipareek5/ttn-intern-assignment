/* Question 1*/
var arr=[5,97,3,4,76,24,6,4,12,46,67,321,6,3,32,18,46,87,44,66];
undefined
arr
(20) [5, 97, 3, 4, 76, 24, 6, 4, 12, 46, 67, 321, 6, 3, 32, 18, 46, 87, 44, 66]
resultArray=arr.filter(function(val,ind,array) { return val>20 })
(11) [97, 76, 24, 46, 67, 321, 32, 46, 87, 44, 66]

/* Question 2*/
var intern=new Array(29);
for(var i=0;i<29;i++)
{
	intern[i]=prompt("Welcome intern. Enter your name");
}
""

for(var i=0;i<29;i++)
{
	console.log(intern[i])
}
VM97:4 gaurav
VM97:4 sakshi
VM97:4 shubham
VM97:4 surbhi
VM97:4 deepshikha
VM97:4 rohit
VM97:4 vishakha
VM97:4 aayushi
VM97:4 deepika
VM97:4 gagan
VM97:4 lohit
VM97:4 mehak
VM97:4 prateek
VM97:4 rishab
VM97:4 souvik
VM97:4 sukriti
VM97:4 vagish
VM97:4 yatin
VM97:4 shivangi
VM97:4 siddharth
VM97:4 nishita
VM97:4 ujjawal
VM97:4 reshma
VM97:4 niharika
VM97:4 amarjeet
VM97:4 dolly
VM97:4 arpit
VM97:4 sharukh

/*Question 3*/

var menu =
    {		menuName:['noodles','burger','dal makhni','shahi makhni'],
		price:[60,80,120,160]
    };
	
var i=0;
do{
	console.log(menu.menuName[i]+"\t\t:\t"+menu.price[i]);
	i++;
}while(i<menu.menuName.length)
noodles		:	60
VM230:3 burger		:	80
VM230:3 dal makhni		:	120
VM230:3 shahi makhni		:	160

var i=0;
do{
	
	confirm(menu.menuName[i]+"\t:\t"+menu.price[i]);
var stat=confirm("do you want to select any other item");
	i++;
}while(stat==true&&i<menu.menuName.length);	
