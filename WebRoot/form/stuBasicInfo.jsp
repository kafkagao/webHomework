<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
 
<html> 
	<head>
		<title>ѧ��������Ϣ</title>
	</head>
	<body>
		<h1>ѧ��������Ϣ</h1>
		<hr>
		<br>
		
		<table border = "1">
		
			<%
				//����������
				String driverName="com.mysql.jdbc.Driver";
				//���ݿ��û���
				String userName="root";
				//����
				String userPasswd="";
				//���ݿ���
				String dbName="test";
				//�������
				String url = "jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;
				//�������ݿ�
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection connection=DriverManager.getConnection(url);
			
				//sql statement
				Statement statement = connection.createStatement();
			
				//get student basic information
				ResultSet rsBasicInfo = statement.executeQuery("select * from student where StuNum = " + session.getAttribute("RealID"));
				
				//show in table
				while (rsBasicInfo.next()) {
					out.print("<tr><td>ѧ��</td><td>"+rsBasicInfo.getString("StuNum")+"</td></tr>");
					out.print("<tr><td>����</td><td>"+rsBasicInfo.getString("Name")+"</td></tr>");
					out.print("<tr><td>���֤��</td><td>"+rsBasicInfo.getString("IDNum")+"</td></tr>");
					out.print("<tr><td>�༶���</td><td>"+rsBasicInfo.getString("ClassID")+"</td></tr>");
					out.print("<tr><td>����</td><td>"+rsBasicInfo.getString("Email")+"</td></tr>");
					out.print("<tr><td>�ֻ�����</td><td>"+rsBasicInfo.getString("PhoneNum")+"</td></tr>");
				}
			 %>
		</table>
		<br>
		<html:link href = "http://localhost:8080/WebHomework/form/studentWeb.jsp">����</html:link>
		
	</body>
</html>