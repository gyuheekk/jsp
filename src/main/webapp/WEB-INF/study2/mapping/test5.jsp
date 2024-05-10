<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file = "/include/certification.jsp" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>test5.jsp</title>
	<%@ include file = "/include/bs4.jsp" %>
	<script>
		'use strict';
		
		 	function fCheck() {
		 		let check = myform.member.value;
		 		
		 		if(check.trim()=="") {
		 			alert("항목을 선택하세요");
		 		}
		 		else {
		 			myform.action = check;
		 			myform.submit();
		 		}
		 		
		}
	</script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
	<h2>이곳은 test5.jsp(/WEB-INF/study2/mapping)</h2>
	<hr/>
	<div>
		<form name="myform">
			<select name="member" onchange="fCheck()" class="form-control mr-3">
				<option>선택</option>
				<option value="input5.do5">회원가입</option>
				<option value="update5.do5">수정</option>
				<option value="delete5.do5">삭제</option>
				<option value="search5.do5">검색</option>
				<option value="list5.do5">전체조회</option>
			</select>
		</form>
	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>