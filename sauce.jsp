<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.Random" %>
<%
  final Random random = new Random();
  String sauce=request.getParameter("sauce");
  if(sauce != null) {
    if (sauce.equals("any")) {
      switch (random.nextInt(3)) {
        case 0:
          sauce = "Sweet Onion";
          break;
        case 1:
          sauce = "Honey Mustard";
          break;
        case 2:
          sauce = "Chipotle Southwest";

      }
    } else if (sauce.equals("skip")) {
      sauce = "";
    }
  }
  session.setAttribute("sauce", sauce);
  String type=(String) session.getAttribute("type");
  String bread=(String) session.getAttribute("bread");
  String size=(String) session.getAttribute("size");
  String extras=(String) session.getAttribute("extras");
  String veggies=(String) session.getAttribute("veggies");
  if(bread==null){
    bread="";
    size="";
  }
  if(extras != null){
    if(extras.equals("")){}
    else {
      extras = extras + ",";
    }
  }
  if(veggies != null){
    if(veggies.equals("")){}
    else {
      veggies = veggies + ",";
    }
  }
%>
<page version="2.0">
  <div>
    Your order:<br/>
      <%=size%> <%=bread%> <%=type%> with <%=extras%> <%=veggies%> <%=sauce%><br/>
    The order cost is $10<br/>
    Are you going to pay and have 5 percent discount?
  </div>
  <navigation>
    <link accesskey="1" pageId="payment.jsp">Yes</link>
    <link accesskey="2" pageId="order.jsp">No, just order</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>