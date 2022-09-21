<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String loginId = request.getParameter("loginId");
	String loginPw = request.getParameter("loginPw");
	
	if(loginId.equals("java")) {
		if(loginPw.equals("java")) {
%>
			<c:redirect url='main.jsp'>
				<c:param name="msg" value="java님, 환영합니다."/>
			</c:redirect> 
<%
		} else {
%>
			<c:redirect url='login.jsp'>
				<c:param name="errMsg" value="올바른 ID와 PW를 입력하세요."/>
			</c:redirect> <!-- url은 login.jsp?name=value 형태가 된다. -->
<%
		}
%>
<%
	} else {
%>
	<c:redirect url='login.jsp'>
		<c:param name="errMsg" value="올바른 ID와 PW를 입력하세요."/>
	</c:redirect>
<%
	}
%>