<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
 
<html> 
	<head>
		<title>��ʦ������Ϣ</title>
	</head>
	<body>
		<h1>��ʦ������Ϣ</h1>
		<hr>
		<br>
		
		<table border = "1">
		
			<%
				String url = "jdbc:mysql://localhost/test?user=root&password=123";
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection connection = DriverManager.getConnection(url);
				Statement statement = connection.createStatement();
			
				//get student basic information
				ResultSet rsBasicInfo = statement.executeQuery("select * from teacher where WorkNum = " + session.getAttribute("RealID"));
				
				//show in table
				while (rsBasicInfo.next()) {
					out.print("<tr><td>Ա����</td><td>"+rsBasicInfo.getString("WorkNum")+"</td></tr>");
					out.print("<tr><td>����</td><td>"+rsBasicInfo.getString("Name")+"</td></tr>");
					out.print("<tr><td>���֤��</td><td>"+rsBasicInfo.getString("IDNum")+"</td></tr>");
					out.print("<tr><td>Ժϵ����</td><td>"+rsBasicInfo.getString("School")+"</td></tr>");
					out.print("<tr><td>����</td><td>"+rsBasicInfo.getString("Email")+"</td></tr>");
					out.print("<tr><td>�ֻ�����</td><td>"+rsBasicInfo.getString("PhoneNum")+"</td></tr>");
				}
			 %>
		</table>
		<br>
		<html:link href = "http://localhost:8080/WebHomework/form/teacherWeb.jsp">����</html:link>
		
	</body>
</html>