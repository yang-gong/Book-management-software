<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.dao.BorrowDAO" %>
<%@ page import="com.actionForm.BorrowForm" %>
<%@ page import="com.actionForm.ReaderForm" %>
<%@ page import="java.util.*"%>
<html>
<%
ReaderForm readerForm=(ReaderForm)request.getAttribute("readerinfo");
Collection coll=(Collection)request.getAttribute("borrowinfo");
%>
<head>
<title>ͼ��ݹ������</title>
<link href="CSS/style.css" rel="stylesheet">
	<script language="javascript">
		function checkreader(form){
			if(form.barcode.value==""){
				alert("���������������!");form.barcode.focus();return;
			}
			if(form.barcode.value.length!=13){
				alert("��������ȷ�Ķ���������!");form.barcode.focus();return;
			}
			form.submit();
		}
	</script>
</head>
<body onLoad="clockon(bgclock)">
<%@include file="banner.jsp"%>
<%@include file="navigation.jsp"%>
<table width="778"  border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="100%" height="558"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="tableBorder_gray">
  <tr>
    <td height="27" valign="top" style="padding:5px;" class="word_orange">&nbsp;��ǰλ�ã�ͼ��軹 &gt; ͼ��黹 &gt;&gt;&gt;</td>
  </tr>
  <tr>
    <td align="center" valign="top" style="padding:5px;"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="42" background="Images/borrowBackRenew_back.png">&nbsp;</td>
      </tr>
      <tr>
        <td height="72" align="center" valign="top" background="Images/main_booksort_1.gif" bgcolor="#9999CC"><table width="96%" border="0" cellpadding="1" cellspacing="1" bordercolor="#F8BF73">
          <tr>
            <td valign="top" bgcolor="#9999CC"><%
int ID=0;
String name="";
String sex="";
String barcode="";
String birthday="";
String paperType="";
String paperNO="";
int number=0;
String typename="";
if(readerForm!=null){
	ID=readerForm.getId().intValue();
	name=chStr.toChinese(readerForm.getName());
	sex=chStr.toChinese(readerForm.getSex());
	barcode=readerForm.getBarcode();
	birthday=readerForm.getBirthday();
	paperType=chStr.toChinese(readerForm.getPaperType());
	paperNO=readerForm.getPaperNO();
	number=readerForm.getNumber();
	typename=chStr.toChinese(readerForm.getTypename());
}
%>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
				<form name="form1" method="post" action="borrow.do?action=bookback">
				
                  <tr>
                    <td><table width="90%" height="21" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="24%" height="19" style="padding-left:7px;padding-top:7px;"><img src="Images/reader_checkbg.png" width="142" height="19"></td>
                          <td width="76%" style="padding-top:7px;">���������룺
                            <input name="barcode" type="text" id="barcode" value="<%=barcode%>" size="24" onkeydown="javascript:if(event.keyCode==13) checkreader(form1);">
                            &nbsp;
                            <input name="Button" type="button" class="btn_grey" value="ȷ��" onClick="checkreader(form1)"></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="13" align="left" style="padding-left:7px;"><hr width="90%" size="1"></td>
                    </tr>
                  <tr>
                    <td align="center"><table width="96%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="27">��&nbsp;&nbsp;&nbsp;&nbsp;����
                            <input name="readername" type="text" id="readername" value="<%=name%>" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;"></td>
                          <td>��&nbsp;&nbsp;&nbsp;&nbsp;��
                            <input name="sex" type="text" id="sex" value="<%=sex%>" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;"></td>
                          <td>�������ͣ�
                            <input name="readerType" type="text" id="readerType" value="<%=typename%>" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;"></td>
                        </tr>
                        <tr>
                          <td height="27">֤�����ͣ�
                            <input name="paperType" type="text" id="paperType" value="<%=paperType%>" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;"></td>
                          <td>֤�����룺
                            <input name="paperNo" type="text" id="paperNo" value="<%=paperNO%>" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;"></td>
                          <td>�ɽ�������
                            <input name="number" type="text" id="number" value="<%=number%>" size="17" disabled="disabled" readonly="yes" style= "background-color:transparent;border:0;">
                            ��
                            &nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
				 </form>
              </table></td>
          </tr>
          <tr>
            <td valign="top"><table width="100%" height="35" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#f08080" bgcolor="#FFFFFF">
                <tr align="center" bgcolor="#e3F4F7">
                  <td width="24%" height="25" bgcolor="#9999CC">ͼ������</td>
                  <td width="12%" bgcolor="#9999CC">����ʱ��</td>
                  <td width="13%" bgcolor="#9999CC">Ӧ��ʱ��</td>
                  <td width="14%" bgcolor="#9999CC">������</td>
                  <td width="12%" bgcolor="#9999CC">���</td>
                  <td bgcolor="#9999CC">����(Ԫ)</td>
                  <td width="12%" bgcolor="#9999CC"><input name="Button22" type="button" class="btn_grey" value="��ɹ黹" onClick="window.location.href='bookBack.jsp'"></td>
                </tr>
                <%
int id=0;
String bookname="";
String borrowTime="";
String backTime="";
Float price=new Float(0);
String pubname="";
String bookcase="";
if(coll!=null && !coll.isEmpty()){
	Iterator it=coll.iterator();
	while(it.hasNext()){
	BorrowForm borrowForm=(BorrowForm)it.next();
        id=borrowForm.getId().intValue();
	bookname=chStr.toChinese(borrowForm.getBookName());
	borrowTime=borrowForm.getBorrowTime();
	backTime=borrowForm.getBackTime();
	price=borrowForm.getPrice();
	pubname=chStr.toChinese(borrowForm.getPubName());
	bookcase=chStr.toChinese(borrowForm.getBookcaseName());
%>
                <tr>
                  <td height="25" style="padding:5px;">&nbsp;<%=bookname%></td>
                  <td style="padding:5px;">&nbsp;<%=borrowTime%></td>
                  <td style="padding:5px;">&nbsp;<%=backTime%></td>
                  <td align="center">&nbsp;<%=pubname%></td>
                  <td align="center">&nbsp;<%=bookcase%></td>
                  <td width="13%" align="center">&nbsp;<%=price%></td>
                  <td width="12%" align="center"><a href="borrow.do?action=bookback&barcode=<%=barcode%>&id=<%=id%>&operator=<%=chStr.toChinese(manager)%>">�黹</a>&nbsp;</td>
                </tr>
                <%	}
}%>
            </table>
			</td>
          </tr>
		 
        </table></td>
      </tr>
      <tr>
        <td height="19" background="Images/main_booksort_2.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
    <%@ include file="copyright.jsp"%></td>
  </tr>
</table>
</body>
</html>
