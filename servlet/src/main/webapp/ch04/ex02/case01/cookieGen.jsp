<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<a href='main.html'>메인</a> <br><br>
<%
	Cookie cookie = new Cookie("name", "john");
	response.addCookie(cookie);
%>