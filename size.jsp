<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.Random" %>
<%
  final Random random = new Random();
  String type=request.getParameter("type");
  if(type != null){
    if(type.equals("sub")) {}
    else {
      session.setAttribute("type", type);
    }
  }
/*  String extras=request.getParameter("extras");
  if(extras != null) {
    if (extras.equals("any")) {
      switch (random.nextInt(2)) {
        case 0:
          extras = "Meat";
          break;
        case 1:
          extras = "Cheese";
          break;
        case 2:
          extras = "Strips of crispy bacon";
          break;
      }
    }
  }
  session.setAttribute("extras", extras);*/

  String size=request.getParameter("size");
  if(size != null) {
    if (size.equals("any")) {
      switch (random.nextInt(2)) {
        case 0:
          size = "6-inch";
          break;
        case 1:
          size = "12-inch";
          break;
      }
    }
    if(size.equals("12")){
      size = "12-inch";
    }
    if(size.equals("6")){
      size = "6-inch";
    }
    session.setAttribute("size", size);
  }

%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="extras" title=""/>
  </div>
  <navigation id="submit">
    <link accesskey="4" pageId="extras.jsp">Ok</link>
  </navigation>
  <div>
    Which extras? Meat, Cheese or Strips of crispy bacon?
  </div>
  <navigation>
    <link accesskey="1" pageId="extras.jsp?extras=Meat">Meat</link>
    <link accesskey="2" pageId="extras.jsp?extras=Cheese">Cheese</link>
    <link accesskey="3" pageId="extras.jsp?extras=Strips of crispy bacon">Strips of crispy bacon</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>