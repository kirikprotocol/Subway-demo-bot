<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
  String type=request.getParameter("type");
  if(type != null) {
    session.setAttribute("type", type);
  }
%>
<page version="2.0">
  <div>
    Which type of bread: Italian, Wheat, Parmesan Oregano or Honey Oat?
  </div>
  <navigation>
    <link accesskey="1" pageId="bread.jsp?bread=Italian">Italian</link>
    <link accesskey="2" pageId="bread.jsp?bread=Wheat">Wheat</link>
    <link accesskey="3" pageId="bread.jsp?bread=Parmesan Oregano">Parmesan Oregano</link>
    <link accesskey="4" pageId="bread.jsp?bread=Honey Oat">Honey Oat</link>
  </navigation>
  <div>
    <input navigationId="submit" name="bread" title=""/>
  </div>
  <navigation id="submit">
    <link accesskey="5" pageId="bread.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>