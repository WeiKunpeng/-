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
    
    <title>�ɼ�</title>
    
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
  <form  action=""  method = "post">
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
</div>     <%
  	ArrayList all = new ArrayList();
  	all = new ScoreBean().scoreform1();
  	if(all!=null)
  	{
  	Iterator it = all.iterator();  	
   %>
         <table align="center" width="400" height="200" border="1" style="position:fixed;top:40%;left:45%;">
    <tr>
    
    <td  witdh="10%"><div align="center">ѧ��</div></td>
    <td  witdh="10%"><div align="center">����</div></td>
    <td  witdh="10%"><div align="center">���Ա��</div></td>
    <td  witdh="10%"><div align="center">���Կ�Ŀ</div></td>
    <td  witdh="10%"><div align="center">�ɼ�</div></td>
 

    </tr>
    <%
    while(it.hasNext())
    {
    	 ScoreBean score = (ScoreBean)it.next();
     %>
    <tr>
 	<td  witdh="10%"><%=score.getSid()%></td>
 	<td  witdh="10%"><%=score.getSname()%></td>
 	<td  witdh="10%"><%=score.getTnumber()%></td>
 	<td  witdh="10%"><%=score.getTsubject()%></td>
 	<td  witdh="10%"><%=score.getScore()%></td>
    </tr>
    <%} }
    else {
    response.sendRedirect("index.jsp");
    }
    %>
    </table>
   </form>
  </body>
</html>
