<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="amount" title="Please enter your order amount:"/>
  </div>
  <navigation id="submit">
    <link accesskey="2" pageId="bill.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="1" pageId="bonuses.jsp">Back</link>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>