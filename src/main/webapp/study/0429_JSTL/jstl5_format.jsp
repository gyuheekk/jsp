<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/certification.jsp" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>jstl5_format.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>JSTL Framt연습</h2>
  <div class="text-right">
    <button type="button" onclick="location.href='jstl1.jsp';" class="btn btn-primary btn-sm">JSTL core라이브러리</button>
    <button type="button" onclick="javascript:location.href='jstl2.jsp';" class="btn btn-success btn-sm">JSTL반복문</button>
    <button type="button" onclick="location.href='jstl3_vo.jsp';" class="btn btn-info btn-sm">JSTL 반복문응용</button>
    <button type="button" onclick="location.href='jstl4_function.jsp';" class="btn btn-secondary btn-sm">JSTL Functon</button>
  </div>
	<hr/>
	
	<pre>
		사용용도 : 형식문자열을 표현(지정)할때 사용한다.(예: 쉼표, 통화량(화폐)단위, 백분율..., 날짜형식...)
		사용법 : < fmt : 명령어... value="$ {값/변수}" pattern="표현패턴" [type="화폐단위"] />
	</pre>
	<c:set var="won1" value="7654321"/>
	<c:set var="won2" value="7654.321"/>
	<div>
		won1 : ${won1} / won2 : ${won2}<br/>
		<hr/>
		1. 천단위 쉼표 : <br/>
		<fmt:formatNumber value="${won1}" /> : <fmt:formatNumber value="$"/>
	</div>

</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>