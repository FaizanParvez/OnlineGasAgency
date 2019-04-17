<%
Const adOpenForwardOnly=0
Const adLockOptimistic=3
Const adLockPessimistic=2
Const adLockReadOnly=1
Const adCmdTable=2
DIM OBJCONN
SET OBJCONN=SERVER.CREATEOBJECT("ADODB.CONNECTION")
OBJCONN.CONNECTIONSTRING="DRIVER={Microsoft Access Driver (*.mdb)};" _
& "DefaultDir=" & "C:\inetpub\wwwroot" _
   & "UID=admin;PWD=;" _
   & "DBQ=C:\inetpub\wwwroot\Databasegas.mdb;"
OBJCONN.OPEN
%>