<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<%
session("un")=""
session.Abandon()

response.redirect "login.asp"
%>
