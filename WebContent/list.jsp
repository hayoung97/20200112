<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="article_manager.ArticleManager" %>
<%@ page import="article_manager.Article" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	ArticleManager am = new ArticleManager();
	am.init();
	ArrayList<Article> list = am.getAllArticles();
%>

<h2>게시판</h2>
<hr>
<table border="1">  
    <tr>
    	<td>
            번호
        </td>
        <td>
            제목
        </td>
        <td>
            작성자
        </td>
        <td>
            작성일
        </td>
    </tr>
    <% for(int i = 0; i < list.size(); i++) { %>
     <tr>
     	 <td><%= list.get(i).getId() %></td>
         <td><a href="detail.jsp?id=<%= list.get(i).getId() %>"><%= list.get(i).getTitle() %></a></td>
         <td><%= list.get(i).getNick() %></td>
         <td><%= list.get(i).getRegDate() %></td>
    </tr>
    <%}%>
</table>
<a href="addForm.jsp">게시물 등록</a>
<a href="init.jsp">초기화 하기</a>

</body>
</html>