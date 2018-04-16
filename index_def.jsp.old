<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
  String type=request.getParameter("page2");
  String bread="";
  String size="";
  String extras=request.getParameter("page7");
  String veggies=request.getParameter("page8");
  String sauce=request.getParameter("page9");
  if(type != null){
    if(type.equals("sub")) {
      bread = request.getParameter("page5");
      size = request.getParameter("page6");
    }
  }
%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="payment" title=""/>
    Please use the menu below:
  </div>
  <navigation id="submit">
    <link accesskey="4" pageId="index_def.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="payment.jsp">Yes</link>
    <link accesskey="1" pageId="order.jsp">No, just order</link>
  </navigation>
  <navigation>
    <link accesskey="2" pageId="http://10.151.0.44:38982/index?sid=857&amp;pid=9">Back</link>
    <link accesskey="3" pageId="http://10.151.0.44:38982/index?sid=857&amp;pid=1">Main menu</link>
  </navigation>
</page>