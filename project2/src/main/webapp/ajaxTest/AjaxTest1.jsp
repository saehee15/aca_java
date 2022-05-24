<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Ajax 연습하기 1</h1>
	<div id="result"></div>
	<button type="button" id="btnSend">백그라운드로 정보 읽어옴	</button>
	<!-- submit을 안 할 거라 버튼만 할 거임 ajax는 전송하는 게 아니고 백그라운드로 왔다갔다 하는 거임 -->
</body>
</html>

<script>
function loadDoc()
{
var http = new XMLHttpRequest();  //xml로 http를 요청

http.onload = function() {
	console.log("call"); //그냥 출력
	document.getElementById("result").innerHTML = this.responseText;
	//수신된 데이터를 demo라는 아이디를 갖는 객체에 출력하라
}
http.open("GET", "ajax_info.txt", true);  //방식, url, 비동기면 true, 거의 true임.(동기로 오면 붙잡기 때문에 true만 써라.. 애초에 ajax가 원칙이 비동기인데 동기로 하지 말고)
http.send();
//여기까지 이 구조가 기본. 순서가 바뀌지 않음.
//open과 send는 리턴값을 못받아.
}

window.onload=function(){  //윈도우 온로드 이거도 콜백
	var btnSend = document.getElementById("btnSend");
	btnSend.addEventListener("click", function(){  //이벤트리스너도 콜백
		loadDoc();
	});
}

</script>