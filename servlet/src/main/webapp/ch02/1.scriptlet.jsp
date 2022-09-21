<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- directive --%> <%-- jsp 주석 --%> 
<% // scriptlet에 선언하는 것은 jsp service method
	int num1 = 1;
	int num2 = 2; // local 변수
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!-- expression -->