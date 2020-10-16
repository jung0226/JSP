<%@page import="com.bitcamp.register.RegisterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//request
	request.setCharacterEncoding("UTF-8");
%>
<!-- RegisterVO 객체 생성 
	RegisterVO vo = new RegisterVO();
	id: 변수
	class: 객체 생성할 클래스
	scope: application, session, page, request
	
	setProperty : 이전 페이지의 데이터를 request한다.
-->
<jsp:useBean id="vo" class="com.bitcamp.register.RegisterVO" scope="page"/>
<jsp:setProperty name="vo" property="*"/>
<%
	RegisterDAO dao = new RegisterDAO();
	int cnt =dao.memberInsert(vo);
	if(cnt>0){
		%>
		<script>
			alert("회원등록이 완료되었습니다.");
			location.href="/webJSP/index.jsp";
		</script>
		<% 
	}else{
		%>
		<script>
			alert("회원등록 실패하였습니다.");
			history.go(-1);
		</script>
		<%
	}
%>
