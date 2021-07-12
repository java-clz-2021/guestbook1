<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	GuestbookDao guestbookDao = new GuestbookDao();

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	GuestbookVo guestbookVo = new GuestbookVo(name, password, content);
	
	guestbookDao.guestbookInsert(guestbookVo);
	
	response.sendRedirect("./addList.jsp");
%>
