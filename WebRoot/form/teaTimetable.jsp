<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
 
<html> 
	<head>
		<title>��ʦ�α�</title>
	</head>
	
	<body>
		<h1>��ʦ�α�</h1>
		<hr>
		<br>
		
		<table border="1">
  			<tr>
    			<th>ѧ�ڱ��</th>
    			<th>�༶���</th>
    			<th>����</th>
    			<th>�γ�����</th>
    			<th>�Ͽ���ʼ��</th>
    			<th>�Ͽ���ֹ��</th>
    			<th>�Ͽ���ʼ����</th>
    			<th>�Ͽ���ֹ����</th>
  			</tr>
		
			<%
				String url = "jdbc:mysql://localhost/test?user=root&password=123";
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection connection = DriverManager.getConnection(url);
				Statement statement = connection.createStatement();
				
				//Get WorkNum
				String RealID = (String)session.getAttribute("RealID");
				
				//get worknum corresponding timetable
				ResultSet rs = statement.executeQuery("SELECT DISTINCT timetable.TermNum, timetable.ClassID, timetable.Room, course.`Name` as CourseName, timetable.BeginWeek, timetable.EndWeek, timetable.BeginCourse, timetable.EndCourse FROM timetable , course WHERE timetable.WorkNum = "+RealID+" AND timetable.CourseID = course.ID");
			
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>"+rs.getString("TermNum")+"</td>");
					out.print("<td>"+rs.getString("ClassID")+"</td>");
					out.print("<td>"+rs.getString("Room")+"</td>");
					out.print("<td>"+rs.getString("CourseName")+"</td>");
					out.print("<td>"+rs.getString("BeginWeek")+"</td>");
					out.print("<td>"+rs.getString("EndWeek")+"</td>");
					out.print("<td>"+rs.getString("BeginCourse")+"</td>");
					out.print("<td>"+rs.getString("EndCourse")+"</td>");
					out.print("</tr>");
				}
				
				connection.close();
		 	%>
		 </table>
		 
		 <html:link href = "http://localhost:8080/WebHomework/form/teacherWeb.jsp">����</html:link>
		 
	</body>
</html>