<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList, java.util.StringTokenizer' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(Cookie cookie: cookies)
			if(cookie.getName().equals("cart"))
				cart = cookie.getValue();
	}
	String[] products = request.getParameterValues("product");
	if(products != null && products.length > 0) {
		for(String product: products)
			cart = cart.replaceFirst(product + "/", ""); // 처음 만난 부분만 replace 한다. 중복 수정을 안한다.
		
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);
	} else {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>