<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li>${user}</li> <!-- 명사하나 쓰면 attribute name이다. user.toString이 호출된다. user만 쓰면 객체 전부가 나온다. -->
	<li>${user.userName}</li> <!-- user.getUserName()이 호출된다. 그래서 getter를 준비했다. -->
	<li>${pageScope.user.userName}</li>
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
</ul>