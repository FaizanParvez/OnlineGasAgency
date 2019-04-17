<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<HTML>
<BODY>
<%
DIM OBJRS,ab,FLAG
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "booking",OBJCONN, ,adLockOptimistic,adCmdTable
FLAG=0
DO WHILE NOT (OBJRS.EOF)
IF(STRCOMP(OBJRS("consumername"),REQUEST.FORM("consumer_name"),VBTEXTCOMPARE)=0) THEN
       
	IF(OBJRS("CLYNUMBER")< 12 AND Month(OBJRS("applieddate"))<>MONTH(DATE)) THEN
         
	   OBJRS("CLYNUMBER")=OBJRS("CLYNUMBER")+1
           OBJRS.UPDATE
	   FLAG=1
	   RESPONSE.WRITE("Thank you for registering")
	ELSE
           RESPONSE.WRITE("You've already issued a cylinder for this month  or you might have exceeded your limit.")
           response.write "<BR> "
           response.write ("<BR>")
           response.write "THANK YOU."
	   FLAG=1
	END IF
ELSE
END IF
OBJRS.MOVENEXT
LOOP

IF (FLAG=0) THEN

OBJRS.ADDNEW
OBJRS("CLYNUMBER")=1
OBJRS("consumerid")=REQUEST.FORM("consumer_no")
OBJRS("consumername")=REQUEST.FORM("consumer_name")
OBJRS("connectiontype")=REQUEST.FORM("connection_type")
OBJRS("applieddate")=REQUEST.FORM("applied_date")
OBJRS("district")=REQUEST.FORM("district")
RESPONSE.WRITE ("THANKS FOR BOOKING")

OBJRS.UPDATE

END IF
OBJRS.CLOSE
SET OBJRS=NOTHING
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
</BODY>
</HTML>
