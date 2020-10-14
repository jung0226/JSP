<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<!-- Bootstrap CSS -->
<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="/webJSP/etc/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/webJSP/etc/bootstrap.js"></script>

<style>
	ul, li{
		margin:0;
		padding:0;
		list-style-type:none;
	}
	#lst>li{
		float:left;
		line-height:35px;
		border-bottom:1px solid gray;
		width:10%;
	}
	#lst>li:nth-of-type(5n+2){
		width:60%;
	}
</style>
</head>
<body>
	<div class="container">
		<h1>게시판</h1>
		<div>총 레코드 수 : 454522개</div>
		<div>pages : 1/12</div>
		<ul id="lst">
			<li>번호</li>
			<li>제목</li>
			<li>글쓴이</li>
			<li>등록일</li>
			<li>조회수</li>
			<li>10</li>
			<li>제목제목</li>
			<li>홍길동</li>
			<li>2020-10-14</li>
			<li>0</li>
			<li>9</li>
			<li>제목제목99</li>
			<li>이순신</li>
			<li>2020-10-14</li>
			<li>0</li>
			<li>8</li>
			<li>제목제목88</li>
			<li>세종대왕</li>
			<li>2020-10-14</li>
			<li>0</li>
			<li>7</li>
			<li>제목제목77</li>
			<li>이순신</li>
			<li>2020-10-14</li>
			<li>0</li>
			<li>6</li>
			<li>제목제목66</li>
			<li>세종대왕</li>
			<li>2020-10-14</li>
			<li>0</li>
		</ul>
		<div>
			<a href="<%=request.getContextPath()%>/index.jsp">홈</a>
			<a href="<%=request.getContextPath() %>/freeboard/boardwrite.jsp">글쓰기</a>
		</div>
	</div>
</body>
</html>