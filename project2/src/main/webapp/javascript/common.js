

// 공통의 파일 만들기


function isNumeric(s){
	for(i=0; i<s.length; i++){
		if(s[i]<'0' || s[i] >'9' )
		return false; // 숫자아님, 정수값만 체크함	 
	}
	return true; // 숫자로만 구성되어야 ture 리턴
}

function isString(s){
	for(i=0; i<s.length; i++){
		if(s[i]<'0' || s[i] >'9' )
		return true; 
	}
	return false; 
}