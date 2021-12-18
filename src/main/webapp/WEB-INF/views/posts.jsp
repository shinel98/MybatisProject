<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.BoardDAO, com.mycompany.myapp.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='/myapp/board/delete/' +id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
<tr>
	<th>Day</th>
	<th>Time</th>
	<th>ClassName</th>
	<th>Credit</th>
	<th>Professor</th>
	<th>Zoom</th>
	<th>Content</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getDay()}</td>
		<td>${u.getTime()}</td>
		<td>${u.getClassname()}</td>
		<td>${u.getCredit()}</td>
		<td>${u.getProfessor()}</td>
		<td>${u.getZoom()}</td>
		<td>${u.getContent()}</td>
		<td><a href="/myapp/board/editpost/${u.getSeq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="/myapp/board/add">Add New Post</a>
</body>
</html>