<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  int su1 = Integer.parseInt(request.getParameter("su1"));
  int su2 = Integer.parseInt(request.getParameter("su2"));
  
  int tot = su1 + su2;
%>

<p>첫번째 수 : <%=su1 %></p>
<p>두번째 수 : <%=su2 %></p>
<p>두수의 합 : <%=tot %></p>
<hr/>
<p><a href="ex1.jsp">돌아가기</a></p>
