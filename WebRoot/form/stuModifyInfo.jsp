<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@page import="com.myeclipse.hibernate.Student"%>
 
<html> 
	<head>
		<title>�޸�ѧ��������Ϣ</title>
	</head>
	<body>
		<h1>�޸�ѧ��������Ϣ</h1>
		<hr>
		<br>
		
		<%
			Student student = (Student)session.getAttribute("StuInfo");
		 %>
		 
		<html:form action="/stuModifyInfo">
			�༶���<html:text property="classID" value = "<%=String.valueOf(student.getClassId())%>"/><br/>
			��������<html:text property="email" value = "<%=student.getEmail()%>"/><br/>
			�ֻ�����<html:text property="phoneNumber" value = "<%=String.valueOf(student.getPhoneNum())%>"/><br/>
			
			<html:submit value = "�޸�"/>
			<html:link href = "http://localhost:8080/WebHomework/form/studentWeb.jsp">����</html:link>
			
		</html:form>
	</body>
</html>

