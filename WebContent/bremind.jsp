<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.dao.BorrowDAO" %>
<%@ page import="com.actionForm.BorrowForm" %>
<%@ page import="java.util.*"%>
<html>
<%
Collection coll=(Collection)request.getAttribute("Bremind");
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
        <td height="22" valign="top" class="word_orange">��ǰλ�ã�ϵͳ��ѯ &gt; ���ĵ�������  &gt;&gt;&gt;</td>
      </tr>
      <tr>
        <td align="center" valign="top"><%
if(coll==null || coll.isEmpty()){
%>
          <table width="100%" height="30"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36" align="center">���޵���������Ϣ��</td>
            </tr>
          </table>
          <%
}else{
  //ͨ��������ʽ��ʾ����
  Iterator it=coll.iterator();
  int ID=0;
  String bookname="";
  String bookbarcode="";
  String readerbar="";
  String readername="";
  String borrowTime="";
  String backTime="";
  %>
          <table width="98%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#9999CC" bordercolorlight="#FFFFFF">
  <tr align="center" bgcolor="#9999CC">
    <td width="15%" bgcolor="#9999CC">ͼ��������</td>
    <td width="28%" bgcolor="#9999CC">ͼ������</td>
    <td width="17%" bgcolor="#9999CC">����������</td>
    <td width="9%" bgcolor="#9999CC">��������</td>
    <td width="15%" bgcolor="#9999CC">����ʱ��</td>
    <td width="16%" bgcolor="#9999CC">Ӧ��ʱ��</td>
    </tr>
<%
  while(it.hasNext()){
    BorrowForm borrowForm=(BorrowForm)it.next();
    ID=borrowForm.getId().intValue();
	bookname=chStr.toChinese(borrowForm.getBookName());
	bookbarcode=borrowForm.getBookBarcode();
	readerbar=chStr.toChinese(borrowForm.getReaderBarcode());
	readername=chStr.toChinese(borrowForm.getReaderName());
	borrowTime=borrowForm.getBorrowTime();
	backTime=borrowForm.getBackTime();
	%>
  <tr>
    <td style="padding:5px;">&nbsp;<%=bookbarcode%></td>
    <td style="padding:5px;"><%=bookname%></td>
    <td style="padding:5px;">&nbsp;<%=readerbar%></td>
    <td style="padding:5px;">&nbsp;<a href="reader.do?action=readerDetail&ID=<%=ID%>"><%=readername%></a></td>
    <td style="padding:5px;">&nbsp;<%=borrowTime%></td>
    <td style="padding:5px;">&nbsp;<%=backTime%></td>
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
