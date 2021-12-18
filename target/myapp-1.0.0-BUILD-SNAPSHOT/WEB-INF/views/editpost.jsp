<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.board.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.mycompany.myapp.board.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO memberDAO = new BoardDAO();
	int i=memberDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>