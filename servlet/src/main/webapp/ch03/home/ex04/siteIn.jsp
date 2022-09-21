<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String errMsg = request.getParameter("errMsg");
%>
<form action='siteProc.jsp'>
	<label>다음</label>
	<input type='radio' name='site' value='https://www.daum.net'/>
	<label>네이버</label>
	<input type='radio' name='site' value='https://www.naver.com'/>
	<br>
	<input type='submit'/>
	<h3 style='color:red'><%= errMsg != null ? errMsg : ""%></h3>
</form>