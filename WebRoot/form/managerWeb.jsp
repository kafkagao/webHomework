<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>����Ա�α��ѯϵͳ</title>
	</head>
	<body>
		<h1>����Ա�α��ѯϵͳ</h1>
		<hr>
		<br>
		
		<html:link forward = "manAddTimetable">���ӿα���Ϣ</html:link>&nbsp;&nbsp;
		<html:link forward = "manModDelTimetable">��ɾ�α���Ϣ</html:link>
		
		<br><br>
		<hr>
		<br>
		
		<html:form action="/managerWeb">
			<html:select property="queryitem" value="1">
			<html:option value="1">ѧ�ڱ��</html:option>
			<html:option value="2">��ʦ���</html:option>
			<html:option value="3">�༶���</html:option>
			<html:option value="4">����</html:option>
			<html:option value="5">�γ�����</html:option>
			</html:select>
			
			<html:text property="queryinstance"/>
			
			<html:submit value="��ѯ�α���Ϣ"/>
			
		</html:form>
		
		<br>
		<html:link href = "http://localhost:8080/WebHomework/form/userLogin.jsp">����</html:link>
		
	</body>
</html>