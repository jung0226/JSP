<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<!-- header.jsp include -->
	<jsp:include page="header.jsp"/><!-- include는 액션태그이다. 액션태그에는 여러가지가 있다. -->
	<div id="content">
		<!-- .jsp로 inclue된 경우 데이터 호환이 되지 않는다. -->
		name : <%//=name %><br/>
		num : <%//=num %><br/>
		<img src="/webJSP/img/1.jpg"/>
	</div>
	<!-- footer.jsp include -->
	<jsp:include page="footer.jsp"/>
</body>
</html>