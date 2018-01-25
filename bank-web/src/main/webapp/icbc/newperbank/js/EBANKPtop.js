
function synFrame(url,topNum)
{
	parent.topFrame.topColor(topNum);
	document.URL=url;
	return;
}
var timerID = null
var timerRunning = false

function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var year = now.getFullYear();
var month = now.getMonth() + 1;
var date1 = now.getDate();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds();
var timeValue = "";

timeValue += year + "/";
timeValue += ((month < 10) ? "0" : "") + month + "/";
timeValue += ((date1 < 10) ? "0" : "") + date1 +" ";
timeValue += hours;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes;
timeValue += ((seconds < 10) ? ":0" : ":") + seconds;

document.all.calendarClock.innerHTML=timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true ;

}
function startclock () {
//stopclock();
//showtime()
}