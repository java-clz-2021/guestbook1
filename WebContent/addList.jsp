<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	GuestbookDao dao = new GuestbookDao();
	List<GuestbookVo> guestbookList = dao.getGuestbookList();
	System.out.println(guestbookList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="add.jsp" method="post">
		<table border="1" width="500px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br/>

	<% 
		for(GuestbookVo guestbookVo :guestbookList){
	%>
			<table border="1"  width="500px">
				<tr>
					<td>[<%=guestbookVo.getNo() %>]</td>
					<td><%=guestbookVo.getName() %></td>
					<td><%=guestbookVo.getRegDate() %></td>
					<td><a href="./deleteForm.jsp?no=<%=guestbookVo.getNo() %>">삭제</a></td>
				</tr>
				<tr>
					<td colspan=4><%=guestbookVo.getContent() %></td>
				</tr>
			</table>
		    <br/>
	<% 
		}
	%>
</body>
</html>