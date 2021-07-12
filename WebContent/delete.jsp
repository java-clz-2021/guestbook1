<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	GuestbookDao guestbookDao = new GuestbookDao();
	
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookVo guestbookVo = new GuestbookVo();
	guestbookVo.setNo(no);
	guestbookVo.setPassword(password);
	
	guestbookDao.guestbookDelete(guestbookVo);
	
	response.sendRedirect("addList.jsp");
%>