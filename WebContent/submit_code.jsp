<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="org.apache.commons.lang3.StringEscapeUtils" %>
<%@ page language="java" import="org.apache.*" %>

<%
	
	String submit_code1=request.getParameter("paste_code");
	String title_code=request.getParameter("title_code");

	Random random = new Random(System.currentTimeMillis());
	int gen_key=10000 + random.nextInt(20000);
	
	String submit_code2 = StringEscapeUtils.escapeHtml4(submit_code1);
	
	
	try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pastebin", "root", "1234");
    PreparedStatement pstmt=con.prepareStatement("insert into paste_tool(gen_key, title, source_codes) VALUES(?, ?, ?)");
    
    pstmt.setInt(1, gen_key);
    pstmt.setString(2, title_code);
    pstmt.setString(3, submit_code2);
    
    pstmt.executeUpdate();
    
    pstmt.close();
    
    response.sendRedirect("viewCode.jsp?id="+gen_key);
    
}
catch(Exception e){
	e.printStackTrace();
}
%>