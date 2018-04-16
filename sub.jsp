<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
  String type=request.getParameter("page1");
  session.setAttribute("type", type);
  String message = "";
  if(type.equals("sub")){
    message = "Which type of bread: Italian, Wheat, Parmesan Oregano, Honey Oat?";
  }
  else if(type.equals("wrap") | type.equals("salad")){
    message = "Which extras? meat, cheese or strips of crispy bacon?";
  }
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="bread" title="Which type of bread: Italian, Wheat, Parmesan Oregano, Honey Oat?"/>
  </div>
  <navigation id="submit">
    <link accesskey="1" pageId="bread.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="3" pageId="http://10.151.0.44:38982/index?sid=857&amp;pid=1">Main menu</link>
  </navigation>
</page>