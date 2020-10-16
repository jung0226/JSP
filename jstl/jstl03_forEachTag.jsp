<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bitcamp.freeboard.FreeboardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<h1>forEach : 반복문</h1>
	<c:set var="dan" value="${7}"></c:set>
	
	<!-- for(int a=0; a<10; a++) 

				변수		초기값	 최종값	  증가값(1씩 증가할 경우 생략 가능)-->
	<c:forEach var="i" begin="2" end="9" step="1">
		${dan} *${i }=${dan*i }<br/>
	</c:forEach>
	
	<h1>배열을 이용한 반복문</h1>
	<c:set var="arr" value="<%= new int[]{10,45,72,56,24,11,94,16} %>"></c:set>
	<!-- 반복될때마다 첫번째부터 끄집어내서 변수에 담음. -->
	<c:forEach var="data" items="${arr }">
	[${data }]
	</c:forEach>
	<h1>컬렉션의 데이터를 이용한 반복문</h1>
	<%
		List<String> list = new ArrayList<String>();
		list.add("홍길동");
		list.add("이순신");
		list.add("세종대왕");
		list.add("정약용");
	%>
	<c:set var="data2" value="<%=list%>"></c:set>
	<ul>
		<c:forEach var="name" items="<%=list%>"><!-- items="${data2}" -->
			<li>${name }</li>
		</c:forEach>
	</ul>
	<%
		List<FreeboardVO> freeList = new ArrayList<FreeboardVO>();
		freeList.add(new FreeboardVO(1, "글제목", "goguma"));
		freeList.add(new FreeboardVO(70,"첫 솔로 이수현 악뮤에서 보기 힘든 끼 보여드릴게요","악뮤"));
		freeList.add(new FreeboardVO(71,"오뜨회사","오리온"));
	%>
	<ol>
		<c:forEach var="i" items="<%=freeList %>">
			<li>${i.no}, ${i.subject}, ${i.userid}</li>
		</c:forEach>
	</ol>
	<h1>hashMap의 데이터를 이용한 반복문</h1>
	<%
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("name","홍길동");
		hm.put("tel","010-12345-7845");
		hm.put("addr", "서울시 마포구 백범로");	
	%>
	<ol>
		<c:forEach var="mapData" items="<%=hm %>">
			<li>${mapData.key}:${mapData.value}</li>
		</c:forEach>
	</ol>
</body>
</html>