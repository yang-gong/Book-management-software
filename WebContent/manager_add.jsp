<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>��ӹ���Ա</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function check(form){
	if(form.name.value==""){
		alert("���������Ա����!");form.name.focus();return;
	}
	if(form.pwd.value==""){
		alert("���������Ա����!");form.pwd.focus();return;
	}
	if(form.pwd1.value==""){
		alert("��ȷ�Ϲ���Ա����!");form.pwd1.focus();return;
	}
	if(form.pwd.value.length<8||form.pwd.value.length>20||form.pwd1.value.length<8||form.pwd1.value.length>20){
		alert("����Ϊ8-20λ�����������룡");form.pwd.focus();return;
	}
	if(form.pwd.value!=form.pwd1.value){
		alert("����������Ĺ���Ա���벻һ�£�����������!");form.pwd.focus();return;
	}
	form.submit();
}
</script>
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
        <td><table width="100%" height="250"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">	<form name="form1" method="post" action="manager.do?action=managerAdd">
           
	<table align="center" height="250"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="150" height="100" align="center" ><h1>����Ա���ƣ�</h1></td>
        <td width="250">
          <input name="name" type="text" placeholder="���Ƴ�������3λ,����+��ĸ+����+_" style="width:250;height:30;font-size:15px;" >        </td>
      </tr>
      <tr>
        <td height="80"  height="30" align="center"><h1>����Ա���룺</h1></td>
        <td width="250"><input name="pwd" type="password" id="pwd" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="���볤������8λ,��ĸ+����+_"
                        placeholder="���볤������8λ,��ĸ+����+_"  style="width:250;height:30;font-size:15px;"></td>
      </tr>
      <tr>
        <td height="70"  height="30" align="center"><h1>&nbsp;&nbsp;ȷ�����룺</h1></td>
        <td width="250"><input name="pwd1" type="password" id="pwd1" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="���볤������8λ,��ĸ+����+_"
                        placeholder="���볤������8λ,��ĸ+����+_"  style="width:250;height:30;font-size:15px;"></td>
      </tr>
      <tr>
        <td height="70" align="center">&nbsp;</td>
        <td><input name="Button" type="button" class="btn_grey" value="����" onClick="check(form1)" style="width:70;height:30;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Submit2" type="button" class="btn_grey" value="�ر�" onClick="window.close();" style="width:70;height:30;"></td>
      </tr>
    </table></center>
	</form></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
