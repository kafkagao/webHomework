<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>�޸�����</title>
	</head>
	
	<body>
		<h1>�޸�����</h1>
		<br>
		<hr>
		<br>
	
		<html:form action="/modifyPwd">
			������<html:password property="newPwd"/><br/><br/>
			<html:submit value = "�ύ" />&nbsp;&nbsp;
			<html:link href = "http://localhost:8080/WebHomework/form/userLogin.jsp">����</html:link>
		</html:form>
	</body>
</html>

