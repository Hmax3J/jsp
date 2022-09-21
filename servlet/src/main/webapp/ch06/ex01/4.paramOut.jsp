<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<p> ${param.userId == "java" ? param.userId : "손님"}, 환영합니다.</p>
<p> ${param.num1} + ${param.num2} = ${param.num1 + param.num2} </p>
<p> ${param.submitDay} </p>
<p>
	<c:forEach var='season' items='${paramValues.season}'> <!-- var는 attribute name, items는 attribute value다. -->
		${season}
	</c:forEach> <!-- attribute value가 n개 이면 접두사가 paramValues로 바뀐다. -->
</p>