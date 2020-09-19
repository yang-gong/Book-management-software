<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<head>
<title>图书馆管理软件</title>
<link href="CSS/style.css" rel="stylesheet">
<script language="javascript">
function check(form){
	if (form.name.value==""){
		alert("请输入管理员名称!");form.name.focus();return false;
	}
	if (form.pwd.value==""){
		alert("请输入密码!");form.pwd.focus();return false;
	}
	if(form.pwd.value.length<8||form.pwd.value.length>20||form.pwd1.value.length<8||form.pwd1.value.length>20){
		alert("密码为8-20位，请重新输入！");form.pwd.focus();return;
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
                      <td width="10%">管理员名称：</td>
                      <td width="31%">
                        <input name="name" type="text" class="logininput" id="name" size="27"/>                        </td>
                      <td width="9%">&nbsp;</td>
                    </tr>
                        <tr>
                          <td height="37">&nbsp;</td>
                      <td>管理员密码：</td>
                      <%/*<input type="password" style="ime-mode:disabled" onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="密码长度最少8位,拼音+数字" minlength="8" maxlength="20" placeholder="密码长度最少8位,拼音+数字" id="password" />
                      var password = $("#password").val();
                      if(password.length < 8 || password.length > 20){
                      alert("密码长度必须介于8-20个字符之间!");
                      return;
                      }*/ %>
                      <td><input name="pwd" type="password" class="logininput"style="ime-mode:disabled"
                       onkeyup="this.value=this.value.replace(/[^\w_]/g,'');" data-errormessage="密码长度最少8位,字母+数字+_" 
                        placeholder="密码长度最少8位,字母+数字+_" id="pwd" size="27" />
                    <%/* 限制了不能输入非法的字符 ，只能输入合法的字母的数字*/ %>
                       </td>
                      <td>&nbsp;</td>
                    </tr>
                        <tr>
                          <td height="30">&nbsp;</td>
                      <td colspan="2" align="center"><input name="Submit" type="submit" class="btn_grey" value="确定" onClick="return check(form1)">
                        &nbsp;
                        <input name="Submit3" type="reset" class="btn_grey" value="重置">&nbsp;
                        <input name="Submit2" type="button" class="btn_grey" value="关闭" onClick="window.close();"></td>
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
            欢迎使用图书馆管理系统</td>
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
