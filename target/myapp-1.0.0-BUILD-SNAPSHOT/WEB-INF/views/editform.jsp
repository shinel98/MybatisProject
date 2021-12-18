<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycompany.myapp.board.BoardDAO,com.mycompany.myapp.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%-- 
<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>
--%>

<h1>Edit Form</h1>
<form action="/board/editpost/editok" method="get">
<input type="hidden" name="seq" value="${boardVO.getSeq()}"/>
<table>
<tr><td>ClassName:</td><td><input type="text" name="classname" value="${boardVO.getClassname()}"/></td></tr>
<tr><td>Credit:</td><td><input type="text" name="credit" value="${boardVO.getCredit()}"/></td></tr>
<tr><td>Professor:</td><td><input type="text" name="professor" value="${boardVO.getProfessor()}" /></td></tr>
<tr><td>Day:</td><td><input type="text" name="day" value="${boardVO.getDay()}" /></td></tr>
<tr><td>Time:</td><td><input type="text" name="time" value="${boardVO.getTime()}" /></td></tr>
<tr><td>Zoom:</td><td><input type="text" name="zoom" value="${boardVO.getZoom()}" /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${boardVO.getContent()}</textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>