<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��̨����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<style type="text/css">
		#header {
			background-color:black;
    		color:white;
    		text-align:center;
    		padding:5px;
		}
		#nav {
		    line-height:30px;
		    background-color:#eeeeee;
		    height:600px;
		    width:200px;
		    float:left;
		    padding:5px;	      
		}
	
				p {
			font-size:25px;
			color:blue;
		}
		
	</style>
  </head>
  <div id="header"><h1 align:center>��̨����</h1></div>
 <div id="nav">
<font size="4" color=blue>������Ϣ����</font><br></br>
    <a href="AdminCheckMessage.jsp"> ��Ϣ��ѯ </a><br></br>
    <a href="AdminAlterMessage.jsp"> ��Ϣ�޸� </a><br></br>
    
    <font size="4" color=blue>������Ϣ����</font><br></br>
    <a href="AdminCheckTest.jsp"> ��Ϣ��ѯ </a><br></br>
    <a href="AdminAlterTest.jsp"> ��Ϣ�޸� </a><br></br>
    <a href="AdminInsertTest.jsp"> ���ӿ��� </a><br></br>
    
    <font size="4" color=blue>�����ɼ�����</font><br></br>
    <a href="AdminCheckScore.jsp"> �ɼ���ѯ </a><br></br>
   <!--   <a href="AdminFillInScore.jsp"> �ɼ�¼�� </a><br></br>-->
    <a href="AdminAlterScore.jsp"> �޸ĳɼ� </a><br></br>
</div>
 
   
   <body>
  <div style="position:fixed;top:30%;left:35%;text-align:center"> 
   </br>
   <table>
  
   <p style="font-szie:100px;">��ӭ�����̨����ϵͳ</p>
   <p>��ϵͳ���Խ��п�����Ϣ��ѯ���޸ģ�����¼�뿼���ɼ���</p>
   </br>
   </table>
   </div>
  </body>
</html>
