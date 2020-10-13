<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 쿠키만들기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<Script>
	$(function(){
		$('#btn').click(function(){
			//javscript에서 쿠키 기록하기
			var now = new Date();
			document.cookie = "food=pizza;path=/;expires=2020"+now.setDate(now.getDate()+7);
			now = new Date();
			document.cookie = "language=java;path=/;expires="+now.setDate(now.getDate()+1);
		});
	});
</Script>
<%
	//jsp에서 쿠키 생성하기				변수    값
	Cookie cook = new Cookie("username","홍길동");
	cook.setMaxAge(5*60);//쿠키의 생명주기(소멸시점: 초단위)
	response. addCookie(cook);
%>
</head>
<body>
<input type="button" value="버튼을 클릭하시면 쿠키가 생성됩니다.(javascript)" id="btn"/>
	
</body>
</html>