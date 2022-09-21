<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:if test='${param.color == 1}'>빨강</c:if>
<c:if test='${param.color == 2}'>노랑</c:if>
<c:if test='${param.color == 3}'>파랑</c:if> <!-- if끼리 비 배타적이다. -->
<c:if test='${param.color == 1}'>RED</c:if> <!-- el을 액션태그 속성값으로 적극적으로 사용한다. -->