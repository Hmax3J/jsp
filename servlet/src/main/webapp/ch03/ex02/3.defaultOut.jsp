<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String text = request.getParameter("text");
	String number = request.getParameter("number");
	String date = request.getParameter("date");
	String checkbox = request.getParameter("checkbox");
	String radio = request.getParameter("radio");
	
	String text2 = request.getParameter("text2");
	String number2 = request.getParameter("number2");
	String date2 = request.getParameter("date2");
	String checkbox2 = request.getParameter("checkbox2");
	String radio2 = request.getParameter("radio2");
%>
<%= text %> <%= text2 %> <br>
<%= number %> <%= number2 %> <br>
<%= date %> <%= date2 %> <br> <!-- text, number, date는 값이 없으면 브라우저가 나타내는 default 값이 ''이다. -->
<%= checkbox %> <%= checkbox2 %> <br> <!-- checkbox, radio는 user가 체크한 것을 표현한 값이 on 이라는 문자다. -->
<%= radio %> <%= radio2 %> <br> <!--  checkbox, radio는 브라우저가 나타내는 default 값이 null이다. --> 