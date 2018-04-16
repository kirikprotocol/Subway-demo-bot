<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="amount" title="Please enteryour receipt number:"/>
  </div>
  <navigation id="submit">
    <link accesskey="2" pageId="bonus_confirm.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="1" pageId="receipt.jsp">Back</link>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>