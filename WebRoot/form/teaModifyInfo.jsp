<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@page import="com.myeclipse.hibernate.Teacher"%>
 
<html> 
	<head>
		<title>�޸Ľ�ʦ������Ϣ</title>
	</head>
	<body>
		<h1>�޸Ľ�ʦ������Ϣ</h1>
		<hr>
		<br>
		
		<%
			Teacher teacher = (Teacher)session.getAttribute("TeaInfo");
		 %>
		 
		<html:form action="/teaModifyInfo">
			Ժϵ&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="school" value = "<%=teacher.getSchool()%>"/><br/>
			��������<html:text property="email" value = "<%=teacher.getEmail()%>"/><br/>
			�ֻ�����<html:text property="phoneNumber" value = "<%=String.valueOf(teacher.getPhoneNum())%>"/><br/>
			
			<html:submit value = "�޸�"/>
			<html:link href = "http://localhost:8080/WebHomework/form/teacherWeb.jsp">����</html:link>
			
		</html:form>
	</body>
</html>