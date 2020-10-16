<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.bitcamp.freeboard.FreeboardDAO"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int nowPage = Integer.parseInt(request.getParameter("nowPage"));
	
	FreeboardDAO dao = new FreeboardDAO();
	int result = dao.getDeleteRecord(no);
	
	if(result>0){//삭제
		%>
			<script>
				alert("글이 삭제되었습니다.");
				location.href="<%=request.getContextPath()%>/freeboard/boardList.jsp?nowPage=<%=nowPage%>";
			</script>
		<%
	}else{
		%>
			<script>
				alert("글이 삭제 실패하였습니다.");
				history.go(-1);
			</script>
		<%
	}
	
%>