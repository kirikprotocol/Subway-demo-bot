<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.Random" %>
<%
  final Random random = new Random();
  String bread=request.getParameter("bread");
  if(bread != null) {
    if (bread.equals("any")) {
      switch (random.nextInt(4)) {
        case 0:
          bread = "Italian";
          break;
        case 1:
          bread = "Wheat";
          break;
        case 2:
          bread = "Parmesan Oregano";
          break;
        case 3:
          bread = "Honey Oat";
      }
    }
    session.setAttribute("bread", bread);
  }
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="size" title=""/>
  </div>
  <navigation id="submit">
    <link accesskey="1" pageId="size.jsp">Ok</link>
  </navigation>
  <div>
    How hungry are you feeling? 6-inch or 12-inch footlong?
  </div>
  <navigation>
    <link accesskey="1" pageId="size.jsp?size=6-inch">6-inch</link>
    <link accesskey="2" pageId="size.jsp?size=12-inch">12-inch</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>