<%
 dim aa, bb, c,optt
aa=a
bb=b
optt=opt

response.write("Hello")
response.write(aa)
response.write(bb)
response.write(optt)
response.write("<br>")
response.write("<br>")
response.write("Hello")
 select case optt
 case "+"
  c = a+b
  response.write(c)
  case "-"
  c = a-b
  response.write(c)
  case else
  response.write("Invalid Operator")
  end select
%>
 