<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>��ɾ�α���Ϣ</title>
	</head>
	<body>
		<h1>��ɾ�α���Ϣ</h1>
		<hr>
		<br>
		
		<html:form action="/manModDelTimetable">
			��¼�� <html:text property="recordNum"/><br/>
			����&nbsp;&nbsp;&nbsp;<html:select property="function"><html:option value="1">�޸�</html:option><html:option value="2">ɾ��</html:option></html:select>
			<br>
			<br>
			<html:submit value = "�ύ"/>
			&nbsp;&nbsp;
			<html:link href = "http://localhost:8080/WebHomework/form/managerWeb.jsp">����</html:link>
		</html:form>
	</body>
</html>

