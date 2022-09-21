<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ol>
	<li>${scope}</li> <!-- 좁은 순에서 넓은 순으로 검색한다. 찾는 순간 return하고 끝낸다. -->
	<li>${pageScope.scope}</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>