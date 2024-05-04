<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />

<div id="header" class="jumbotron text-center" style="margin-bottom:0; background-image: url('${pageContext.request.contextPath}/images/117.jpg');")>
  <h1><font color="white">Guuue's first homepage</font></h1>
  <p><font color="white">(본 사이트는 반응형으로 제작되었습니다.)</font></p>
</div>
<!-- <style>
 h1 {
 	font-family: "Roboto", sans-serif;
  font-weight: 400;
  font-style: normal;
 }
 
</style> -->
<script>
	$(function() {
		$("#header").on("click",function(){
			location.href = "http://192.168.50.60:9090/javaclass/Main";
		});
	});
</script>