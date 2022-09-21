<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response); // A에서 B로 이동해야지 라는게 목적이다. A는 더 이상 필요가 없다. 이벤트 없이 자동으로 바로 페이지 이동이 일어났다.
%>