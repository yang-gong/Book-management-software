<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<head>
<title>ͼ��ݹ������</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript">
function check(form){
	if (form.name.value==""){
		alert("���������Ա����!");form.name.focus();return false;
	}
	if (form.pwd.value==""){
		alert("����������!");form.pwd.focus();return false;
	}
	if(form.pwd.value.length<8||form.pwd.value.length>20||form.pwd1.value.length<8||form.pwd1.value.length>20){
		alert("����Ϊ8-20λ�����������룡");form.pwd.focus();return;
	}
}
</script>
</head>
<body">
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#cce6e6" class="tableBorder">
  <tr>
    <td>
<table width="760" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="142" valign="top">&nbsp;</td>
  </tr>
</table>
	</td>
  </tr>
	<td>
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><table width="100%" height="525"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="523" align="center" valign="top"><table width="100%" height="271"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="271" align="right" valign="top" class="word_orange"><table width="100%" height="300"  border="0" cellpadding="0" cellspacing="0" background="Images/login.png">
          <tr>
            <td height="57">&nbsp;</td>
            </tr>
          <tr>
            <td height="179" valign="top"><table width="100%" height="63"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="2%">&nbsp;</td>
                  <td width="97%" align="center" valign="top">
                    <form name="form1" method="post" action="manager.do?action=login">
                      <table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolorlight="#FFFFFF" bordercolordark="#6495ED">
                        <tr>
                          <td height="57">&nbsp;</td>
                          <td height="57" colspan="2" align="center">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr> 
                        <tr>
                          <td width="50%" height="37">&nbsp;</td>
                      <td width="10%">����Ա���ƣ�</td>
                      <td width="31%">
                        <input name="name" type="text" class="logininput" id="name" size="27"/>                        </td>
                      <td width="9%">&nbsp;</td>
                    </tr>
                        <tr>
                          <td height="37">&nbsp;</td>
                      <td>����Ա���룺</td>
                      <%/*<input type="password" style="ime-mode:disabled" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="���볤������8λ,ƴ��+����" minlength="8" maxlength="20" placeholder="���볤������8λ,ƴ��+����" id="password" />
                      var password = $("#password").val();
                      if(password.length < 8 || password.length > 20){
                      alert("���볤�ȱ������8-20���ַ�֮��!");
                      return;
                      }*/ %>
                      <td><input name="pwd" type="password" class="logininput"style="ime-mode:disabled"
                       onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="���볤������8λ,��ĸ+����+_" 
                        placeholder="���볤������8λ,��ĸ+����+_" id="pwd" size="27" />
                    <%/* �����˲�������Ƿ����ַ� ��ֻ������Ϸ�����ĸ������*/ %>
                       </td>
                      <td>&nbsp;</td>
                    </tr>
                        <tr>
                          <td height="30">&nbsp;</td>
                      <td colspan="2" align="center"><input name="Submit" type="submit" class="btn_grey" value="ȷ��" onClick="return check(form1)">
                        &nbsp;
                        <input name="Submit3" type="reset" class="btn_grey" value="����">&nbsp;
                        <input name="Submit2" type="button" class="btn_grey" value="�ر�" onClick="window.close();"></td>
                      <td>&nbsp;</td>
                    </tr>
                        </table> 
			  </form>				   </td>
                  <td width="1%">&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          <tr>
            <td height="19">&nbsp;</td>
            </tr>
        </table></td>
      </tr>
    
    </table>
      <table width="100%" height="27"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center" class="word_login">CopyRight &copy; 2020 www.**********.com <br>
            ��ӭʹ��ͼ��ݹ���ϵͳ</td>
        </tr>
      </table></td>
  </tr>
</table>

</td>
  </tr>
</table>
</td>
  </tr>
</table>
</body>
</html>
