<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%  
	pageContext.setAttribute("one", "페이지2"); // 현재 실행중인 page의 정보를 담고있다.
	request.setAttribute("two", "리퀘스트2"); 
	session.setAttribute("three", "세션2"); // attribute name이 같으면 overwrite 한다.
	application.setAttribute("four", "애플리케이션2"); 
%>
<c:redirect url='1.scopeB.jsp'/>