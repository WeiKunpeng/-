<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ɼ���ʾ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<style type="text/css">
		body{
			background-image:url(picture/1.jpg);
			background-size:cover; 
		}
		p{
			font-size:30px;
			position:fixed;
			top:25%;
			left:30%;
		}
		table{
			align="center";
			width="450";
			height="117";
			border-style: solid; 
			border-width: 1px;
			border-collapse:collapse;
			position:fixed;
			top:40%;
			left:30%;
		}
		a{ 
			 font-size:20px;
			position:fixed;
			top:65%;
			left:70%;
			color:black;
		}
	</style>
  </head>
  
   <div >
  <body>
  <p>��ѧ�����ĳɼ���</p>
   <br></br><br></br><br>
   <table align="center" width="500" height="200" border="1">
   <tr> <td>ѧ��</td>
   <td><%=session.getAttribute("sid")%></td> </tr>
   
   <tr><td>����</td>
  <td> <%=session.getAttribute("sname") %></td>
  </tr>
 
  <tr><td>���Ա��</td>
  <td><%=session.getAttribute("tnumber")%></td>
  </tr>
  <tr><td>���Կ�Ŀ</td>
  <td> <%=session.getAttribute("tsubject") %></td>
  </tr>
   <tr>
   <td>�ɼ�</td>
   <td><%=session.getAttribute("score")%> </td>
   </tr>
</table>
<a href="UserSelect.jsp?sid=<%=session.getAttribute("sid")%>">������ҳ</a>
</form>
  </body></div>
</html>
