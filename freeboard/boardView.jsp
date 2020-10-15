<%@page import="com.bitcamp.freeboard.FreeboardVO"%>
<%@page import="com.bitcamp.freeboard.FreeboardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="/webJSP/etc/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="webJSP/etc/bootstrap.js"></script>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int nowPage=Integer.parseInt(request.getParameter("nowPage"));
	FreeboardDAO dao = new FreeboardDAO();
	FreeboardVO vo = dao.getOneRecordSelect(no);
%>
<div class="container">
	<h1>글내용보기</h1>
	<ul>
		<li>작성자: <%=vo.getUserid() %></li>
		<li>작성일: <%=vo.getWritedate() %></li>
		<li>조회수: <%=vo.getHit() %></li>
		<li>제목: <%=vo.getSubject() %></li>
		<li>글내용 <br/>
			<%=vo.getContent() %>
		</li>
	</ul>
	<div>
		<a href="<%=request.getContextPath()%>/index.jsp">홈</a>
		<a href="<%=request.getContextPath()%>/freeboard/boardList.jsp?nowPage=<%=nowPage%>">목록</a>
		<a href="#">수정</a>
		<a href="#">삭제</a>
	</div>
</div>

</body>
</html>