<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<% // 페이지를 물리적으로 실체화 시킨 것을 pageContext라고 한다.
	pageContext.setAttribute("user", new User("최한석", 12)); // name은 string type이고 value는 Object이라 모든 type이 가능하다.
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %><br>
<%= user %>