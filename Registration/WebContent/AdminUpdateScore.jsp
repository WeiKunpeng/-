<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="Bean.ScoreBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���³ɼ�</title>
    
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
  
  <form  action="/RegistrationTest/ScoreUpdateServlet" method = "post">
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
   ScoreBean st=new ScoreBean(); 
   String stuid=request.getParameter("sid");
   String testnum=request.getParameter("tnumber");
   System.out.println("���tnumber:"+testnum);
   
   st=st.scoreform(stuid,testnum);
 	
   %>
      <br></br><br></br><br>
      
   <table align="center" width="500" height="250">
   
   <tr>
   <td>
  <input name="studentid" type="hidden"  value="<%=request.getParameter("sid")%>" />
  </td>
   </tr><tr>
   <td>
  <input name="testnumber" type="hidden"  value="<%=request.getParameter("tnumber")%>" />
  </td>
   </tr>
   <tr>
   <td>ѧ ��</td>
   <td>
  <input name="sid"   value="<%=st.getSid()%>" />
  </td>
   </tr>

   
    <tr><td>�� ��</td>
  <td>
  <input name="sname"  value = "<%=st.getSname()%>" />
  </td>
  </tr>
   
   <tr>
   <td>���Ա��</td>
   <td>
  <input name="tnumber"   value="<%=st.getTnumber()%>" />
  </td>
  </tr>
 <tr>
   <td>���Կ�Ŀ</td>
   <td>
  <input name="tsubject"  value="<%=st.getTsubject()%>" />
  </td>
  </tr>

   <tr><td>�� ��</td>
  <td>
  <input name="score" type="text"  value="<%=st.getScore()%>"/>
  </td>
  </tr>

   
    
  <p><input type="submit" id="name" value="�޸�"/></p>
  
   
   </table></form>
  </body>
</html>
