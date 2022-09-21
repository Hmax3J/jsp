<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp'>
	ID: <input type='text' name='loginId'/>
	PASSWORD: <input type='password' name='loginPw'/>
	<input type='submit'/>
</form>
<%
	String errmsg = request.getParameter("errMsg");
%>
	<%= errmsg != null ? errmsg : "" %>