<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="Bean.TestBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��Ϣ�޸�</title>
    
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
			position:fixed;
			top:70%;
			left:50%;
		}
		
	</style>
  </head>
  
  <form  action="/RegistrationTest/AdminUpdateTestServlet" method = "post">
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
   
   <%
   String testnumber=request.getParameter("tnumber");
   TestBean test=new TestBean();
   test=test.showTest(testnumber);

   %>
      <br></br><br></br><br>
      
   <table align="center" width="500" height="250">
   <tr>
   <td>
  <input name="testnumber" type="hidden" value=<%=request.getParameter("tnumber")%> />
  </td>
   </tr>
   
   <tr>
   <td>���Ա��</td>
   <td>
  <input name="number" type="text" value=<%=test.getNumber() %> />
  </td>
   </tr>
   <tr>
   <td>���Կ�Ŀ</td>
   <td>
  <input name="subject" type="text"  value=<%=test.getSubject() %> />
  </td>
   </tr>
    <tr><td>��������</td>
  <td>
  <input name="date" type="text" value=<%=test.getDate() %> />
  </td>
  </tr>
  <tr><td>����ʱ��</td>
  <td>
  <input name="time" type="text" value=<%=test.getTime() %> />
  </td>
  </tr>
  <tr><td>���Եص�</td>
  <td>
  <input name="address" type="text" value=<%=test.getAddress() %> />
  </td>
  </tr>
   

   
    <p>
  <input type="submit" id="name" value="�޸�"/>
 </p>
   
   </table></form>
  </body>
</html>
