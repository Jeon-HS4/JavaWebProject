<%@page import="javax.xml.crypto.dsig.spec.ExcC14NParameterSpec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*, my.model.*, my.dao.*, my.util.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Darle - 상품삭제</title>
<link href="qnadesign.css" rel="stylesheet" type="text/css">

</head>

<body>

        
        <%
        int pid = Integer.parseInt(request.getParameter("pid"));
        Connection conn = ConnectionProvider.getConnection();
		try{
        	ProductDao dao = new ProductDao();
        	dao.deleteById(conn, pid);
        }catch(SQLException e){}finally{
        	JdbcUtil.close(conn);
    	}
        %>
	<jsp:forward page="/Admin/prodlist.jsp"></jsp:forward>
    </body>
</html>
