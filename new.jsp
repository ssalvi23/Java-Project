<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<form>
      <input type="submit" class="sub" value="SUBMIT"  />
	  </form>

<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshopify", "root", "1234");
Statement st = conn.createStatement();
ResultSet rs=st.executeQuery("select uniqueid from login");
int id=0;
if(rs.last()){
id=rs.getInt("id")+1;
}
st.executeUpdate("insert into login(userid,uniqueid,pwd) values('akshu',"+id+",'delhi')");
out.println("Data is inserted successfully");
}
catch(Exception e){}
%>
</body>
</html>
