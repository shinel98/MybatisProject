<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="/board/addpost" method="get">
<table>
<tr><td>ClassName:</td><td><input type="text" name="classname"/></td></tr>
<tr><td>Credit:</td><td><input type="text" name="credit"/></td></tr>
<tr><td>Professor:</td><td><input type="text" name="professor"/></td></tr>
<tr><td>Day:</td><td><input type="text" name="day"/></td></tr>
<tr><td>Time:</td><td><input type="text" name="time"/></td></tr>
<tr><td>Zoom:</td><td><input type="text" name="zoom"/></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><a href="/board/list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>