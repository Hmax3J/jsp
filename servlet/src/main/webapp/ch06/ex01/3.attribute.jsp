<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("userName", "최한석");
%>
${userName} <br>
${hello} <br> <!-- 존재하지 않는 attribute name을 쓰면 null값이 된다. -->
${empty hello} <br> <!-- 조사하는 값이 null이면 true, 아니면 false가 return 된다. -->
${empty userName ? "무명" : userName}
${!empty userName ? userName : "무명"}