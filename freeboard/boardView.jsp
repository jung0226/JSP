<%@page import="com.bitcamp.freeboard.FreeboardVO"%>
<%@page import="com.bitcamp.freeboard.FreeboardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int nowPage=Integer.parseInt(request.getParameter("nowPage"));
	FreeboardDAO dao = new FreeboardDAO();
	FreeboardVO vo = dao.getOneRecordSelect(no, 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="/webJSP/etc/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="webJSP/etc/bootstrap.js"></script>
<script>
	function delQue(){
		//사용자에게 질문	확인 : true, 취소 : false
		if(confirm("삭제하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/freeboard/boardDel.jsp?no=<%=no%>&nowPage=<%=nowPage%>";
		}
	}
</script>
</head>
<body>
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
		
		<%
			//현재 보고있는 글 내용이 글쓴이인 경우 수정, 삭제를 표시한다.
			if(session.getAttribute("userid")!=null && session.getAttribute("userid").equals(vo.getUserid())){			
		%>
			<a href="/webJSP/freeboard/boardEdit.jsp?no=<%=vo.getNo()%>&nowPage=<%=nowPage%>">수정</a>
			<a href="javascript:delQue()">삭제</a>
		<%} %>
	</div>
</div>

</body>
</html>