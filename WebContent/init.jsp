<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page import="article_manager.Article" %>
<%@ page import="article_manager.ArticleManager" %>
<%@ page import="java.util.ArrayList" %>

<%

	ArticleManager am = new ArticleManager();
	ArticleManager.aList = new ArrayList<Article>();

	RequestDispatcher dis = request.getRequestDispatcher("list.jsp");
	dis.forward(request, response);

%>