<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="Bean.CheckBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ɼ���ѯ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
     <div align="center"> <font size="12" color=blue>��̨����ϵͳ</font><br></br></div>
  <body style="background-image:url(picture/1.jpg)">
  <form  action=""  method = "post">
   <table  align="left">
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
   </table>
     <%
  	ArrayList all = new ArrayList();
  	all=(ArrayList)session.getAttribute("check");
  	if(all!=null)
  	{
  	Iterator it = all.iterator();  	
   %>
        <table align="center" width="60%" cellpadding="3" cellspacing="1">
    <tr>
    <td bgcolor="#E6E0B3" witdh="10%"><div align="center">ѧ��</div></td>
    <td bgcolor="#E6E0B3" witdh="10%"><div align="center">����</div></td>
    <td bgcolor="#E6E0B3" witdh="10%"><div align="center">���Ա��</div></td>
    <td bgcolor="#E6E0B3" witdh="10%"><div align="center">���Կ�Ŀ</div></td>
    <td bgcolor="#E6E0B3" witdh="10%"><div align="center">�ɼ�</div></td>
 

    </tr>
    <%
    while(it.hasNext())
    {
    	 CheckBean score = (CheckBean)it.next();   ////next����
     %>
    <tr>

 	<td bgcolor="#E6E0B3" witdh="10%"><%=score.getSid()%></td>
 	<td bgcolor="#E6E0B3" witdh="10%"><%=score.getSname()%></td>
 	<td bgcolor="#E6E0B3" witdh="10%"><%=score.getTnumber()%></td>
 	<td bgcolor="#E6E0B3" witdh="10%"><%=score.getTsubject()%></td>
 	<td bgcolor="#E6E0B3" witdh="20%"><%=score.getScore()%></td>
    </tr>
    <%} }
    else {
    response.sendRedirect("CheckError.jsp");
    }
    %>
    </table>
   </form>
  </body>
</html>
