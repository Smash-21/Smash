<%@page import="java.sql.*" errorPage="err.jsp"%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","");

int ano = Integer.parseInt(request.getParameter("ano"));
String type = request.getParameter("type");
float bal = Float.parseFloat(request.getParameter("bal"));
PreparedStatement ps = con.prepareStatement("insert into account values(?,?,?)");
ps.setInt(1,ano);
ps.setString(2,type);
ps.setFloat(3,bal);
ps.executeUpdate();
%>
Account created successfully.<br>
<a href='SaveAccount.html'>Add Account</a> <a href='view_accounts.jsp'>View Accounts</a>

//view_accounts.jsp
<%@page import="java.sql.*"%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","");
Statement s = con.createStatement();
ResultSet rs = s.executeQuery("select * from account");
%>
<table border=1>
<tr><th>Account No</th><th>Type</th><th>Balance</th></tr>
<%
while(rs.next()){
%>
<tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getFloat(3)%></td>
</tr>
<%
            }
%>
</table><br>
<a href='SaveAccount.html'>Home</a>