<%@page import="service.FollowServiceImpl"%>
<%@page import="service.FollowService"%>
<%@page import="dao.FollowDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	int myid = (int)session.getAttribute("id");
    	int yourid = Integer.parseInt(request.getParameter("yourid"));
    
    	FollowDAO dao = new FollowDAO();
    
    	FollowService service = new FollowServiceImpl(dao);
    	
    	
    %>
    
    <%=service.checkFollow(myid, yourid)%>