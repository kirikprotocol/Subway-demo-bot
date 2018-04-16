<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.Random" %>
<%
  final Random random = new Random();
  String veggies=request.getParameter("veggies");
  if(veggies != null) {
    if (veggies.equals("any")) {
      switch (random.nextInt(4)) {
        case 0:
          veggies = "Lettuce";
          break;
        case 1:
          veggies = "Tomatoes";
          break;
        case 2:
          veggies = "Pickles";
          break;
        case 3:
          veggies = "Jalapenos";

      }
    } else if (veggies.equals("skip")) {
      veggies = "";
    }
  }
  session.setAttribute("veggies", veggies);
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="sauce" title=""/>
  </div>
  <navigation id="submit">
    <link accesskey="1" pageId="sauce.jsp">Ok</link>
  </navigation>
  <div>
    Which sauce do you prefer? Sweet Onion, Honey Mustard or Chipotle Southwest?
  </div>
  <navigation>
    <link accesskey="1" pageId="sauce.jsp?sauce=Sweet Onion">Sweet Onion</link>
    <link accesskey="2" pageId="sauce.jsp?sauce=Honey Mustard">Honey Mustard</link>
    <link accesskey="3" pageId="sauce.jsp?sauce=Chipotle Southwest">Chipotle Southwest</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>