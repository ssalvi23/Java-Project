import java.sql.*;
class dbtest15 
{
public static void main(String args[])
{
Connection con;
	try
	{
	Class.forName("com.mysql.bookdsn.jdbc.Driver");
	System.out.println("Driver registered successfully");
	}
	catch(Exception e)
	{
	System.out.println(e.getMessage());
	System.out.println("Error in driver registration...");
	}
	try
	{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshopify.accdb","root","1234");
	Statement st=con.createStatement();
	st.executeUpdate("insert into login values('akshu',1234)");
	System.out.println("Row inserted...");
	con.close();
	}
	catch(SQLException e1)
	{
	System.out.println(e1.getMessage());
	}

}
}
//dbtest15.java
//Displaying dbtest15.java.