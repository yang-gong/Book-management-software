<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="java.util.*"%>

<html>
<%
Collection coll=(Collection)request.getAttribute("managerQuery");
%>
<head>
<title>ͼ��ݹ������</title>
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
        <td height="22" valign="top" class="word_orange">��ǰλ�ã�ϵͳ���� &gt; ����Ա���� &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td align="center" valign="top"><%
if(coll==null || coll.isEmpty()){
%>
          <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">���޹���Ա��Ϣ��</td>
            </tr>
          </table>
          <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <a href="#" onClick="window.open('manager_add.jsp','','width=500,height=450')">��ӹ���Ա��Ϣ</a> </td>
  </tr>
</table>
 <%
}else{
  //ͨ��������ʽ��ʾ����
  Iterator it=coll.iterator();
  int ID=0;
  String name="";
  int sysset=0;
  int readerset=0;
  int bookset=0;
  int borrowback=0;
  int sysquery=0;
  %>
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
<td width="16%">
      <a href="#" onClick="window.open('manager_add.jsp','','width=450,height=400')">��ӹ���Ա��Ϣ</a> </td>	  
  </tr>
</table>  
  <table width="91%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#f08080" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#9999CC">
    <td width="26%" bgcolor="#9999CC">����Ա����</td>
    <td width="12%" bgcolor="#9999CC">ϵͳ����</td>
    <td width="12%" bgcolor="#9999CC">���߹���</td>
    <td width="12%" bgcolor="#9999CC">ͼ�����</td>
    <td width="11%" bgcolor="#9999CC">ͼ��軹</td>
    <td width="10%" bgcolor="#9999CC">ϵͳ��ѯ</td>
    <td width="9%" bgcolor="#9999CC">Ȩ������</td>
    <td width="8%" bgcolor="#9999CC">ɾ��</td>
  </tr>
<%
  while(it.hasNext()){

    ManagerForm managerForm=(ManagerForm)it.next();
	ID=managerForm.getId().intValue();
	name=chStr.toChinese(managerForm.getName());
	sysset=managerForm.getSysset();
	readerset=managerForm.getReaderset();
	bookset=managerForm.getBookset();
	borrowback=managerForm.getBorrowback();
	sysquery=managerForm.getSysquery();
	%> 
  <tr>
    <td style="padding:5px;"><%=name%></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled="disabled" <%if(sysset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled="disabled" <%if(readerset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(bookset==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(borrowback==1){out.println("checked");}%>></td>
    <td align="center"><input name="checkbox" type="checkbox" class="noborder" value="checkbox" disabled <%if(sysquery==1){out.println("checked");}%>></td>
    <td align="center"><%if(!name.equals("tsoft")){ %><a href="#" onClick="window.open('manager.do?action=managerModifyQuery&id=<%=ID%>','','width=450,height=400')">Ȩ������</a><%}else{%>&nbsp;<%}%></td>
    <td align="center">
	<%if(!name.equals("tsoft")){ %><a href="manager.do?action=managerDel&id=<%=ID%>" style="color:#CC3333">ɾ��</a><%}else{%>&nbsp;<%}%></td>
  </tr>
<%
  }
}
%>  
</table></td>
      </tr>
    </table>
</td>
  </tr>
</table><%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>
