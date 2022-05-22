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

 	<form name="myform" id="myform" method="post"  action="/project2/score.do">  
 	
 		
		user: <input type="text" name="user"> <br/>
		kor1: <input type="text" name="kor" /> <br/>
		eng1: <input type="text" name="eng" /> <br/>
		mat: <input type="text" name="mat" /> <br/>
		
		<input type="button" value="보내기" id="btnSend"/>
	</form>
	
</body>
</html>
<script>
window.onload = function () {
	document.getElementById("btnSend");
	btnSend.addEventListener("click", function () {

		var frm = document.myform;
		if(frm.user.value.trim().length <=0){
			alert("이름를 입력하세요")
			frm.user.focus(); 
			return false; 
		}
		if(isString(frm.user.value)==false){
			alert("이름를 입력하세요")
			frm.user.value=""; 
			frm.user.focus();
			return false; 
		}
		if(frm.kor.value.trim().length <=0){
			alert("숫자를 입력하세요")
			frm.kor.focus(); 
			return false;
		}
		if(isNumeric(frm.kor.value)==false){
			alert("숫자를 입력하세요")
			frm.kor.value=""; 
			frm.kor.focus();
			return false; 
		}
		if(frm.eng.value.trim().length <=0){
			alert("숫자를 입력하세요")
			frm.eng.focus(); 
			return false; 
		}
		if(isNumeric(frm.eng.value)==false){
			alert("숫자를 입력하세요")
			frm.eng.value=""; 
			frm.eng.focus(); 
			return false; 
		}
		if(frm.eng.value.trim().length <=0){
			alert("숫자를 입력하세요")
			frm.mat.focus(); 
			return false; 
		}
		if(isNumeric(frm.mat.value)==false){
			alert("숫자를 입력하세요")
			frm.mat.value=""; 
			frm.mat.focus();
			return false; 
		}
		frm.submit(); 
	})
}
</script>