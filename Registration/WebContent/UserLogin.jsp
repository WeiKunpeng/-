<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��¼ҳ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	head{
		
	}
	div {
	
		
	}
	body{
	
		background-image:url("picture/1.jpg");
		background-size:cover; 
	}
	table{
	
		position:fixed;
		top:40%;left:50%;
	}
	p {
		position:fixed;
		top:52%;left:55%;
	
	}
	input {
                border:1px solid black;
                -moz-border-radius: 10px;
               
            }
	</style>
  </head>
  <div style="width:35%;border:2px solid black;position:fixed;top:35%;left:42%;text-align:center">
  
   <a style="font-size:40px;position:fixed;top:20%;left:45%;"><font >���߿��Ա���ϵͳ</font></a>
  <body >
    <form action="/RegistrationTest/UserLoginServlet" method = "post">
    <br></br><br></br><br></br><br></br>
    <table  >
   <tr>
   <td>ѧ��&nbsp;&nbsp;&nbsp;</td>
   <td>
  <input name="id" type="text" size="22"/>
  </td>
   </tr>
   
   <tr><td>����&nbsp;&nbsp;&nbsp;</td>
  <td>
  <input name="password"  type="password" size="22" />&nbsp;&nbsp;
  <td><a href="UserRegister.jsp"> ����ע�� </a><br></br></td>
  </td>
  <p>
     &nbsp;<input type="submit"  id="name" value="ѧ����¼"/>
  &nbsp;<input type="reset"  id="name" value="����"/>
    </p></table>
    </form>

  </body>
  </div>
</html>
