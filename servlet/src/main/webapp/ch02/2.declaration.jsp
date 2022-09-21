<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%! // 선언부분, 전역변수와 함수 선언
	public int add(int num1, int num2) {
		return num1 + num2;
	}
	
	int num1 = 1; // member 변수
%>
<% // scriptlet
	int num2 = 2; // 지역 변수
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>