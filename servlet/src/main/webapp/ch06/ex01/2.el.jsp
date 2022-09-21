<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
String: ${"hello"} <br>
int: ${10} <br>
double: ${10.0} <br>
boolean: ${true} <br>
null: ${null} <%-- <%= null --%> <hr> <!-- null은 익스프레션에서는 500 error -->

\${ 5 * 2 }: ${ 5 * 2 } <br>
${ 5 > 2 } <Br>
${ 5 > 2 ? 5 : 2 } <br>
${ 5 > 2 || 5 < 2 }