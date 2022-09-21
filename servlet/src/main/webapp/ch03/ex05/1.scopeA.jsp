<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<% // data의 scope를 구분해본다. 
	pageContext.setAttribute("one", "페이지"); // attr name, attr value를 작성하고 추가한다. 현재 페이지가 실행되는 동안 유지된다.
	request.setAttribute("two", "리퀘스트"); // pageContext보다 scope 이 크다. 클라이언트에 response를 보내기 전 까지 유지된다. 업무별로 사용 할 때 쓰는게 좋다.
	session.setAttribute("three", "세션"); // 클라이언트나 서버가 끊기 전 까지 유지된다. user별로 사용 할 때 쓰는 게 좋다. 쇼핑몰 장바구니 같은 느낌이다.
	application.setAttribute("four", "애플리케이션"); // 톰캣이 실행되는 동안 유지된다. 앱 전체에서 사용 할 때 쓴다.
%>
<c:redirect url='1.scopeB.jsp'/>