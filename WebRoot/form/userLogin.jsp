<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>�α��ѯϵͳ</title>
	</head>
	<body>
		<h1>�α��ѯϵͳ</h1>
		<hr>
		<br>
		<html:form action="/userLogin">
		     	�û� : <html:text property="username"/><br/>
		     	���� : <html:password property="userpwd"/><br/>
		<html:submit value = "�ύ"/>
		</html:form>
	</body>
</html>

