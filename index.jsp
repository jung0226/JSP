<!-- 지시부 ->import -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar, java.util.Scanner" %>
<%@ page import="java.io.InputStream" %>
<!-- 소스보기 실행시 jsp부분은 빈줄로 나옴. 빈줄 제거하는 방법 -->
<%@ page trimDirectiveWhitespaces="true" %>
<%!
	//선언부 : 메소드나 변수를 선언하는 곳이다.
	//웹의 접근제한자는 무조건 public
	public String gugudan(int dan){
		String guguDan = "<ul>";
		for(int i=2; i<=9; i++){
			guguDan += "<li>"+dan+"*"+i+"="+(dan*i)+"</li>";
		}
		guguDan +="</ul>";
		return guguDan;
	}
	public int multiple(int a, int b){
		return a*b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{
		width:200px;
		height:200px;
	}
</style>
<script>
	document.write('<h2>JAVAScript</h2>');
</script>
</head>
<body>
<h1>JSP HOME : <%=session.getId() %></h1>
<%
	String logStatus = (String)session.getAttribute("logStatus");
	if(logStatus==null || logStatus.equals("")){ %>
	<a href="<%=request.getContextPath() %>/response/login.html">로그인</a>
	<a href="<%=request.getContextPath() %>/register/regForm.jsp">회원가입</a>
	<%}else if(logStatus!=null && logStatus.equals("Y")){ %>
	<%=session.getAttribute("username") %><a href="<%=request.getContextPath() %>/response/logout.jsp">로그아웃</a>
	<%} %>
<hr/>
<ul>
	<li><a href="<%=request.getContextPath()%>/freeboard/boardList.jsp">게시판</a></li>
</ul>
<hr/>
<!-- --------------------------------------------
	JSTL(JSP Standard Tag Library)
	https://tomcat.apache.org/taglibs/standard/에서
	jakarta-taglibs-standard-1.1.2.zip다운로드후
	jstl.jar, standard.jar을 WEB-INF/lib에 복사한다.
--------------------------------------------- -->
<ul>
	<li><a href="/webJSP/jstl/jstl01_setTag.jsp">setTag</a>: 변수를 선언하고 값을 보관 또는 삭제한다.</li>
	<li><a href="/webJSP/jstl/jstl02_ifTag.jsp?username=홍길동&age=30&userid=goguma">if Tag</a>: 조건문</li>
	<li><a href="/webJSP/jstl/jstl03_forEachTag.jsp">forEach Tag</a>: 반복문</li>
	<li><a href="/webJSP/jstl/jstl04_forTokensTag.jsp">forTokens Tag</a>: 문자열 특정 기호로 자르기</li>
	<li><a href="/webJSP/jstl/jstl05_urlTag.jsp">url Tag</a>: url 주소와 파라미터의 정보를 가진다.</li>
	<li><a href="/webJSP/jstl/jstl06_chooseTag.jsp?username=홍길동&age=25">choose Tag</a>: 다중 if문, switch문</li>
	<li><a href="/webJSP/jstl/jstl07_redirectTag.jsp">redirect Tag</a>:페이지 이동</li>
</ul>
<!-- 스크립트릿 -->
<%
	int a=200;
%>
<!-- 		/webJSP -->
<img src="<%=request.getContextPath() %>/img/1.jpg"/>
<%
	int result=a*1000;
	//jsp에서  out내장객체는 클라이언트에게 response한다.
	out.println("<div style='background-color:pink'>result="+result+"</div>");
	
	//오늘 날짜
	Calendar now = Calendar.getInstance();//날짜와 시간
	int month= now.get(Calendar.MONTH)+1;
	int day = now.get(Calendar.DAY_OF_MONTH);
	out.println("오늘은 "+month+"월 "+day+"일입니다.");
%>

<%
	//선언부의 메소드 호출
	out.println(gugudan(6));
	out.println("곱= "+multiple(1234,5678));
	System.out.println("gob= "+multiple(500,400)); //jsp에서 값 넘어왔는지 등을 확인할 때 사용.
	
%>
</body>
</html>