<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.dao.ReaderDAO" %>
<%@ page import="com.dao.ReaderTypeDAO" %>
<%@ page import="com.actionForm.ReaderForm" %>
<%@ page import="com.actionForm.ReaderTypeForm"%>
<%@ page import="java.util.*"%>
<html>
<%
String str=null;
ReaderTypeDAO readerTypeDAO=new ReaderTypeDAO();
Collection coll=(Collection)readerTypeDAO.query(str);
if(coll==null || coll.isEmpty()){
	out.println("<script>alert('请先录入读者类型信息!');history.back(-1);</script>");
}else{
	  Iterator it=coll.iterator();
	  int ID=0;
	  String name="";
%>
<script language="jscript">

function check(form){
	if(form.name.value==""){
		alert("请输入读者姓名!");form.name.focus();return false;
	}
	if(form.barcode.value==""){
		alert("请输入条形码!");form.barcode.focus();return false;
	}
	if(form.paperNO.value==""){
		alert("请输入证件号码!");form.paperNO.focus();return false;
	}
	
	if(form.barcode.value.length!=13)
		{
		alert("请输入正确的13位条形码!");form.barcode.focus();return false;
		}
	if(form.vocation.value=="")
	{
	alert("请输入职业!");form.barcode.focus();return false;
	}
	if(form.birthday.value=="")
	{
	alert("请输入出生日期!");form.barcode.focus();return false;
	}
	if(form.paperNO.value==""){
		alert("请输入证件号码!");form.paperNO.focus();return false;
	}
	if (form.paperType.value=="身份证")
		{
		if(!/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[0|1|2])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(form.paperNO.value))
			{
			alert("请输入正确的身份证号!");form.paperNO.focus();return false;
			}
		}else if(form.paperType.value=="学生证")
	{
			if(form.paperNO.value.length !=11)
			{
		alert("请输入正确的学生证号!");form.paperNO.focus();return false;
			}
	}else if (form.paperType.value=="军官证"){
		if(form.paperNO.value.length !=7)
		{
		alert("请输入正确的军官证号!");form.paperNO.focus();return false;
		}
	}
	else if (form.paperType.value=="工作证"){
		if(form.paperNO.value.length !=12)
		{
		alert("请输入正确的工作证号!");form.paperNO.focus();return false;
		}
	}
	if(!/^1[34578]\d{9}$/.test(form.tel.value))
		{
		alert("请输入11位正确的手机号!");form.paperNO.focus();return false;
		}
	if(!/^\w{3,}(\.\w+)*@[A-z0-9]+(\.[A-z]{2,5}){1,2}$/.test(form.email.value))
	{
	alert("请输入正确的邮箱格式!");form.paperNO.focus();return false;
	}
}
</script>

<head>
<title>图书馆管理软件</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body onLoad="clockon(bgclock)">
<%@include file="banner.jsp"%>
<%@include file="navigation.jsp"%>
<table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="99%" height="510"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="510" valign="top" style="padding:5px;"><table width="98%" height="487"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="22" valign="top" class="word_orange">当前位置：读者管理 &gt; 读者档案管理 &gt; 添加读者信息 &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td align="center" valign="top"><table width="100%" height="493"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
	<form name="form1" method="post" action="reader.do?action=readerAdd">
	<table width="600" height="432"  border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
      <tr>
        <td width="173" align="center">姓名：</td>
        <td width="427" height="39">
          <input name="name" type="text"> 
          *         </td>
      </tr>
      <tr>
        <td width="173" align="center">性别：</td>
        <td height="35"><input name="sex" type="radio" class="noborder" id="radiobutton" value="男" checked>
          <label for="radiobutton">男 </label>
          <label>
          <input name="sex" type="radio" class="noborder" value="女">
          女</label></td>
      </tr>
      <tr>
        <td align="center">条形码：</td>
        <td><input name="barcode" type="text" id="barcode"data-errormessage="输入正确的13位条形码"
                        placeholder="输入正确的13位条形码" >
* </td>
      </tr>
      <tr>
        <td align="center">读者类型：</td>
        <td>
		<select name="typeid" class="wenbenkuang" id="typeid">
<%
  while(it.hasNext()){
    ReaderTypeForm readerTypeForm=(ReaderTypeForm)it.next();
	ID=readerTypeForm.getId().intValue();
	name=chStr.toChinese(readerTypeForm.getName());
	%> 		
				
          <option value="<%=ID%>"><%=name%></option>
<%}%> 
        </select>        </td>
      </tr>
      <tr>
        <td align="center">职业：</td>
        <td><input name="vocation" type="text" id="vocation"> * </td>
      </tr>
      <tr>
        <td align="center">出生日期：</td>
        <td><input name="birthday" type="text" id="birthday"> * </td>
      </tr>
      <tr>
        <td align="center">有效证件：</td>
        <td><select name="paperType" class="wenbenkuang" id="paperType">
          <option value="身份证" selected>身份证</option>
          <option value="学生证">学生证</option>
          <option value="军官证">军官证</option>
          <option value="工作证">工作证</option>
                        </select></td>
      </tr>
      <tr>
        <td align="center">证件号码：</td>
        <td>
        <%/*<input name="paperNO" type="text" id="paperNO"> */ %>
        <input type="text" name="paperNO"id="paperNO" onblur="isCardNo();"/>
          * </td>
      </tr>
      <tr>
        <td align="center">电话：</td>
        <td><input name="tel" type="text" id="tel"data-errormessage="输入正确的手机号"
                        placeholder="输入正确的手机号"> * </td>
      </tr>
      <tr>
        <td align="center">Email：</td>
        <td><input name="email" type="text" id="email" size="50">
          <input name="operator" type="hidden" id="operator" value="<%=chStr.toChinese(manager)%>"></td>
      </tr>
      <tr>
        <td align="center">备注：</td>
        <td><textarea name="remark" cols="50" rows="5" class="wenbenkuang" id="remark"></textarea></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
        <td><input name="Submit" type="submit" class="btn_grey" value="保存" onClick="return check(form1)">
&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="返回" onClick="history.back()"></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table></td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
<%}%>
</body>
</html>
