<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.util.Date' %>
<% // service method
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %><br> <!-- expression 밖의 html은 write로 번역된다. -->
<%= date2 %> <!-- expression 괄호안에 부분은 print로 번역된다. -->