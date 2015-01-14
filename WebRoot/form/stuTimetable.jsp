<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
 
<html> 
	<head>
		<title>ѧ���α�</title>
	</head>
	
	<body>
		<h1>ѧ���α�</h1>
		<hr>
		<br>
		
		<table border="1">
  			<tr>
    			<th>ѧ�ڱ��</th>
    			<th>��ʦ����</th>
    			<th>�༶���</th>
    			<th>����</th>
    			<th>�γ�����</th>
    			<th>�Ͽ���ʼ��</th>
    			<th>�Ͽ���ֹ��</th>
    			<th>�Ͽ���ʼ����</th>
    			<th>�Ͽ���ֹ����</th>
  			</tr>
		
			<%
				//����������
				String driverName="com.mysql.jdbc.Driver";
				//���ݿ��û���
				String userName="root";
				//����
				String userPasswd="123";
				//���ݿ���
				String dbName="test";
				//�������
				String url = "jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;
				//�������ݿ�
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection connection=DriverManager.getConnection(url);
				
				//sql statement
				Statement statement = connection.createStatement();
				
				//get student class id
				String RealID = (String)session.getAttribute("RealID");
				
				ResultSet rsForClassID = statement.executeQuery("SELECT student.ClassID FROM student WHERE Student.StuNum = " + RealID);
				
				rsForClassID.next();
				
				//get class id corresponding timetable
				ResultSet rs = statement.executeQuery("SELECT DISTINCT timetable.TermNum, teacher.`Name` as TeacherName, timetable.ClassID, timetable.Room, course.`Name` as CourseName, timetable.BeginWeek, timetable.EndWeek, timetable.BeginCourse, timetable.EndCourse FROM timetable , teacher , course WHERE timetable.ClassID = "+rsForClassID.getString("ClassID")+" AND timetable.WorkNum = teacher.WorkNum AND timetable.CourseID = course.ID");
			
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>"+rs.getString("TermNum")+"</td>");
					out.print("<td>"+rs.getString("TeacherName")+"</td>");
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
		 
		 <html:link href = "http://localhost:8080/WebHomework/form/studentWeb.jsp">����</html:link>
		 
	</body>
</html>

