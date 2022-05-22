<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/project2/javascript/common.js"></script>
</head>
<body>	
	
	<%-- 이부분에서 <form method="post" action="/project2/calc.do"> 에서 서블릿 호출할수도 있음 --%>
	<form name="myform" id="myform" method="post" action="/project2/calc.do">  
	
		x: <input type="text" name="x" /> <br/>
		y: <input type="text" name="y" /> <br/>
		
		<input type="button" value="보내기" id="btnSend"/>
	</form>
	
</body>
</html>

<script>
// <input type="submit" value="보내기" id="btnSend"/>
// type submit이면 무조건 전송이라 오류 발생할 수 있음, 값 없을 떄, 그래서 조건 주기
	window.onload = function () {
		document.getElementById("btnSend");
		btnSend.addEventListener("click", function () {
			// form 태그에 대한 참조를 가져온다
			// 1. var frm = document.name 속성
			// 2. var frm = document.getElementById("아이디속성");
			// 3. var frm = document.form[인덱스]
			
			var frm = document.myform;
			if(frm.x.value.trim().length <=0){
				alert("숫자를 입력하세요")
				frm.x.focus(); // 커서를 옮긴다.
				return false; // 함수를 종료하고 서버로 가는것을 막는다.
			}
			if(isNumeric(frm.x.value)==false){
				alert("숫자를 입력하세요")
				frm.x.value=""; // 내용 지워버림
				frm.x.focus(); // 커서를 옮긴다.
				return false; // 함수를 종료하고 서버로 가는것을 막는다.
			}
			if(frm.y.value.trim().length <=0){
				alert("숫자를 입력하세요")
				frm.y.focus(); // 커서를 옮긴다.
				return false; // 함수를 종료하고 서버로 가는것을 막는다.
			}
			if(isNumeric(frm.y.value)==false){
				alert("숫자를 입력하세요")
				frm.y.value=""; // 내용 지워버림
				frm.y.focus(); // 커서를 옮긴다.
				return false; // 함수를 종료하고 서버로 가는것을 막는다.
			}
			frm.submit(); // 서버로 보내라
			
			// 위의 처럼 해서 하면은 send3.jsp에서 값 입력 안하고 input 누르면은 알림창 뜨고, calc.do로 가버림
			// 그래서 type="button"으로 해야함
		})
	}
</script>