<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="/webJSP/etc/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/webJSP/etc/bootstrap.js"></script>
<script>
	$(function(){
		$("#startAjax").click(function(){
			//	호출파일		 								    콜백함수	 서버에서 받은 데이터,상태 
			$.get("test.jsp?username=이순신&tel=010-4111-4545",function(data 	        	,status){
				$("#result").append(data);
			});
		});
	});
</script>
</head>
<body>
<h1>jquery에서 ajax구현하기(GET방식)</h1>
<button id="startAjax">클릭하세요</button>
<div id="result">
</div>
</body>
</html>