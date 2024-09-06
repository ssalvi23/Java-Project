<DOCTYPE html>
<html>
<head>
<title>Login</title>
<!@ page import="java.sql.*" %>
</head>
<body>
<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("Jdbc:Odbc:bookdsn");

String usr= request.getParameter("userid");
String pwd= request.getParameter("password");

//create statement
Statement st=con.createStatement();
Resultset rs=st.executeQuery("select * from login");

//get values usinhg loop
while(re.next())
{
	String uname= rs.getString(1);
	String ps= rs.getString(2);
	
	if(username.equals(uname) && password.equals(ps))
	{
		out.print("login suucessfully");
	}
	
	else
	{
		out.print("invalid username and password");
	}
}
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>