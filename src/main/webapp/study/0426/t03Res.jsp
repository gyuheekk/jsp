<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>t03Res.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>t03Res.jsp</h2>
  <p>아이디 : ${mid}</p>
  <p>비밀번호 : ${pwd}</p>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>