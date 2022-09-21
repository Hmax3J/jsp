<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String userName = request.getParameter("userName"); // get은 parameter를 쿼리스트링으로 관리한다. 파라미터가 url의 일부가 된다.
	String age = request.getParameter("age"); // url에 ? 뒤 부터가 쿼리스트링이다. 
	String birthday = request.getParameter("birthday"); // url이라 header에 저장된다. url에 안뜨게 하려면 post method를 사용해야 한다. 
%>
<h3>사용자</h3>
<ul>
	<li>이름: <%= userName %></li>
	<li>나이: <%= age %></li>
	<li>생일: <%= birthday %></li>
</ul>