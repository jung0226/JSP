<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.bitcamp.freeboard.FreeboardDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
	int no =Integer.parseInt(request.getParameter("no"));
	String subject=request.getParameter("subject");
	String content = request.getParameter("content");
	
	int nowPage = Integer.parseInt(request.getParameter("nowPage"));
	
	FreeboardDAO dao = new FreeboardDAO();
	int result = dao.getUpdateRecord(no, subject, content);
	if(result>0){
		%>
			<script>
				alert("글이 수정되었습니다.");
				location.href="<%=request.getContextPath()%>/freeboard/boardView.jsp?no=<%=no%>&nowPage=<%=nowPage%>";
			</script>		
		<%
	}else{		
		%>
			<script>
				alert("글등록 실패하였습니다.");
				history.back();
			</script>
		<%
	}
	
	
%>