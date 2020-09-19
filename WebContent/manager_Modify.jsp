<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.actionForm.ManagerForm"%>
<%@ page import="com.core.ChStr"%>
<%
ManagerForm managerForm=(ManagerForm)request.getAttribute("managerQueryif");
ChStr chStr=new ChStr();
int ID=managerForm.getId().intValue();
String	name=chStr.toChinese(managerForm.getName());
int sysset=managerForm.getSysset();
int readerset=managerForm.getReaderset();
int bookset=managerForm.getBookset();
int borrowback=managerForm.getBorrowback();
int sysquery=managerForm.getSysquery();
%>
<html>
<head>
<title>权限设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<center>
<table width="500" height="450" border="0" cellpadding="0" cellspacing="0" bgcolor="#9999CC">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="3%" height="25">&nbsp;</td>
        <td width="94%">&nbsp;</td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="131"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">	<form name="form1" method="post" action="manager.do?action=managerModify">
	<table height="240"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="200" height="100" align="center"><h1>管理员名称：		</h1></td>
        <td width="190">
          <input name="id" type="hidden" value="<%=ID%>"><input name="name" type="text" readonly="yes" style="width:230;height:30;font-size:25px;" value="<%=name%>" >        </td>
      </tr>
      <tr>
        <td height="150" align="center"><h1>拥有的权限：</h1></td>
        <td><table width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="200"><input name="sysset" type="checkbox" class="noborder" id="sysset" value="1" <%if(sysset==1){out.println("checked");}%>>
				<h1>系统设置</h1></td>
            <td width="200"><input name="readerset" type="checkbox" class="noborder" id="readerset" value="1" <%if(readerset==1){out.println("checked");}%>>
              <h1>读者管理</h1></td>
          </tr>
          <tr>
            <td><input name="bookset" type="checkbox" class="noborder" id="bookset" value="1" <%if(bookset==1){out.println("checked");}%>>
              <h1>图书管理</h1></td>
            <td><input name="borrowback" type="checkbox" class="noborder" id="borrowback" value="1" <%if(borrowback==1){out.println("checked");}%>>
              <h1>图书借还</h1></td>
          </tr>
          <tr>
            <td height="23"><input name="sysquery" type="checkbox" class="noborder" id="sysquery" value="1" <%if(sysquery==1){out.println("checked");}%>>
              <h1>系统查询</h1></td>
            <td>&nbsp;</td>
          </tr>
        </table>          </td>
      </tr>
      <tr>
        <td height="150" align="center">&nbsp;</td>
        <td><input name="Button" type="submit" class="btn_grey" value="保存" style="width:70;height:30;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="关闭" onClick="window.close();" style="width:70;height:30;"></td>
      </tr>
    </table>
	</form></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="17">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</center>
</body>
</html>
