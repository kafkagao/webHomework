<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>��ʦ�α��ѯϵͳ</title>
	</head>
	<body>
		<h1>��ʦ�α��ѯϵͳ</h1>
		<hr>
		<br>
		
		<html:link forward = "modifyPwd">�޸�����</html:link>
		<br>
		<hr>
		
		<html:form action="/teacherWeb">
			��ѯ������Ϣ<html:radio property="choice" value = "1"/><br/>
			�޸Ļ�����Ϣ<html:radio property="choice" value = "2"/><br/>
			��ѯ�α�&nbsp;&nbsp;&nbsp;&nbsp;<html:radio property="choice" value = "3"/><br/>
			<html:submit value = "�ύ"/>
			<html:link href = "http://localhost:8080/WebHomework/form/userLogin.jsp">����</html:link>
		</html:form>
	</body>
</html>

