<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="Bean.UserLoginBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸�ѧ����Ϣ</title>
    
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
			position:fixed;top:60%;left:70%;
		}
		
	</style>
	  </head>

  <div id="header"><h1 align:center>��̨����</h1></div>
 <div id="nav">
   <form  action=""  method = "post">
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
   
     <%
  	ArrayList alter = new ArrayList();
  	alter = new UserLoginBean().showStudent();
  	if(alter!=null)
  	{
  	Iterator it = alter.iterator();  	//Iterator���е���
   %>
        <table  align="center" width="300" height="200" border="1" style="position:fixed;top:40%;left:45%;">
    <tr>
    
    <td  witdh="10%"><div align="center">ѧ��</div></td>
    <td  witdh="10%"><div align="center">����</div></td>
    <td  witdh="10%"><div align="center">�Ա�</div></td>
    </tr>
    <%
    while(it.hasNext())   //hasNext����������Ƿ���Ԫ��
    {
    	 UserLoginBean student = (UserLoginBean)it.next();  //next����
     %>
    <tr>
 	<td  witdh="10%"><%=student.getId()%></td>
 	<td  witdh="10%"><%=student.getName()%></td>
 	<td  witdh="10%"><%=student.getSex()%></td>
 	<td  witdh="10%"><a href = "AdminUpdateMessage.jsp?sid=<%=student.getId()%>">�޸�</a></td>
 	<!-- ���������䣬��ѧ��id����AdminUpdateMessage.jsp�� -->
    </tr>                               
    <%} 
    System.out.print("��⣺id����777777");}
    else {
    response.sendRedirect("index.jsp");
    }
    %>
    </table>
   </form>
  </body>
</html>
