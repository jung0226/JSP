<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration, java.util.Arrays" %>
<%
	//post방식 전송일 경우 한글을 인코딩 후 request한다.
	request.setCharacterEncoding("UTF-8");

	String username = request.getParameter("username");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	
	//checkbox는 1개 이상 선택되므로 배열로 가져 옴.
	String inter[] = request.getParameterValues("inter");
	
	String local = request.getParameter("local");
	
	System.out.println("이름= "+username);
	System.out.println("아이디= "+userid);
	System.out.println("비밀번호= "+pwd);
	System.out.println("성별= "+gender);
	System.out.println("관심분야= "+ Arrays.toString(inter));
	System.out.println("지역= "+local);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8"/>
<title>reqFormOK</title>
<script>
	//alert("확인을 누르시면 홈페이지로 이동합니다.");
	//location.href="../index.jsp";
</script>
</head>
<body>
	<h2>form의 전송데이터</h2>
	<%
		int a=1000;
		out.println(a);
	%>
	<ul>
		<li>이름 : <%= username+"입니다." %></li> <!-- 실행문이 한개밖에 못 들어감. -->
		<li>아이디 : <%=userid %></li>
		<li>비밀번호 : <%=pwd %></li>
		<li>성별 : <%=gender %></li>
		<li>관심분야 : <%=Arrays.toString(inter) %></li>
		<li>지역 : <%=local %></li>
	</ul>
	<!-- 엘리멘트: 개발자가 정한 변수명 -->
	<h2>이전 페이지 폼의 엘리멘트 알아내기</h2>
	<%
		Enumeration<String> element= request.getParameterNames();
	%>
	<ul>
		<%
			while(element.hasMoreElements()){
		%>
		<li><%=element.nextElement() %></li>
		<%} %>
	</ul>
	<ul>
		<li>접속자의 ip : <%=request.getRemoteAddr() %></li>
		<!-- localhost가 아닌 ip주소로 웹브라우저 검색하면 접속자의 ip주소가 나옴. -->
		<!-- http://192.168.0.208:9090/webJSP/request/reqFormOk.jsp -> 접속자의 ip는 내 ip주소가 나옴. -->	
		<li>인코딩 코드값 : <%=request.getCharacterEncoding() %></li>
		<li>contentType : <%=request.getContentType() %></li>
		<li>전송방식 : <%=request.getMethod() %></li>
		<li>프로토콜 : <%=request.getProtocol() %></li>
		<li>URI : <%=request.getRequestURI() %></li><!-- 현재 실행되는 페이지의 폴더와 파일명 -->
		<li>ContextPath : <%=request.getContextPath() %></li>
		<li>서버이름 : <%=request.getServerName() %></li>
		<li>포트 : <%=request.getServerPort() %></li>
		<li>절대주소 : <%=request.getServletContext().getRealPath("/") %></li>
		<!-- 파일 업로드, 다운로드 할 때 절대주소 필요함. -->
	</ul>
</body>
</html>