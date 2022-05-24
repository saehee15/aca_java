<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	x : <input type="text" id="x" ><br/>
	y : <input type="text" id="y" ><br/>
	result : <span id="result"></span> <br/>
	
	<button id="btnSend" type="button">결과확인</button>
</body>
</html>

<script>
window.onload=function(){
	var btnSend = document.getElementById("btnSend");
	btnSend.addEventListener("click", function(){
		callAjax();
	});
}

function callAjax()
{
	
	var xhttp = new XMLHttpRequest(); 
	var x = document.getElementById("x").value;
	var y = document.getElementById("y").value;
	
	var url = "/project2/ajaxTest/calc_result.jsp?x="+x+"&y="+y;
		
	console.log(x, y);
	xhttp.onload = function(){
		var result = JSON.parse(this.responseText);  //JSON.parse : 문자열 -> JSON객체로 전환
		
		console.log(this.responseText);
		console.log(result);

		document.getElementById("result").innerHTML = result["result"];
	}
	
	xhttp.open("GET", url, true);
	xhttp.send();
}
</script>