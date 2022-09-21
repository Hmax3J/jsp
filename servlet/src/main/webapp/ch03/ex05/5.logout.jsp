<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<%
	session.invalidate(); // 자기 자신을 없앤다. 세션을 끝낸다. 잘 기억해 두어야 한다.
%>