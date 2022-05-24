<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- 부트스트랩 cdn으로 사용, table_data.jsp에서 배열 데이터 가져오기 -->
<div class="container mt-3">
  <h2>게시판</h2>
  <p>공지사항 확인바랍니다.</p>            
  <table class="table table-striped" id="mytable">
  	<colgroup>
  		<col width="8%" />
  		<col width="12%" />
  		<col width="*" />
  		<col width="12%" />
  		
  		<col width="12%" />
  	<colgroup>
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>내용</th>
        <th>작성자</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
     
    </tbody>
  </table>
</div>

</body>
</html>

<script>
	$(()=>{
		$.ajax({
			url: "table_data.jsp",
			dataType: "json"
		})
		.done((data)=>{
			console.log(data);
			data.forEach((n)=>{      //data가 한번씩만 옴
				var temp = "<tr>";
					temp = temp + "<td>" + n.id + "</td>";
					temp = temp + "<td>" + n.title + "</td>";
					temp = temp + "<td>" + n.contents + "</td>";
					temp = temp + "<td>" + n.writer + "</td>";
					temp = temp + "<td>" + n.date + "</td>";
					temp = temp + "</tr>";
				console.log(temp);
				$("#mytable > tbody:last").append(temp);
			})
		})
		.fail((jqXHR, textStatus)=>{
			console.log(jqXHR, textStatus);
		})
	})
	
	
</script>
