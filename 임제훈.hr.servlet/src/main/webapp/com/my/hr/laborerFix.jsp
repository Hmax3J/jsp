<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='java.time.LocalDate, java.time.format.DateTimeFormatter' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	LaborerService laborerService = new LaborerServiceImpl();

	String id = request.getParameter("laborerId");
	int laborerId = Integer.parseInt(id);
	String name = request.getParameter("laborerName");
	String date = request.getParameter("hireDate");
	LocalDate hireDate = LocalDate.parse(date, DateTimeFormatter.ISO_DATE);
	
	laborerService.fixLaborer(new Laborer(laborerId, name, hireDate));
%>
<c:redirect url='../../../main.jsp'/>