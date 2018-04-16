<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.Random" %>
<%
  final Random random = new Random();
  String extras=request.getParameter("extras");
/*  String type=request.getParameter("type");
  if(type != null){
    if(type.equals("sub")) {}
    else {
      session.setAttribute("type", type);
    }
  }*/
  if(extras != null) {
    if (extras.equals("any")) {
      switch (random.nextInt(3)) {
        case 0:
          extras = "Meat";
          break;
        case 1:
          extras = "Cheese";
          break;
        case 2:
          extras = "Strips of crispy bacon";

      }
    }
    else if(extras.equals("skip")){
      extras="";
    }
    session.setAttribute("extras", extras);
  }

%>
<page version="2.0">
  <div>
    <input navigationId="submit" name="veggies" title=""/>
  </div>
  <navigation id="submit">
    <link accesskey="1" pageId="veggies.jsp">Ok</link>
  </navigation>
  <div>
    Which veggies? Lettuce, Tomatoes, Pickles or Jalapenos?
  </div>
  <navigation>
    <link accesskey="1" pageId="veggies.jsp?veggies=Lettuce">Lettuce</link>
    <link accesskey="2" pageId="veggies.jsp?veggies=Tomatoes">Tomatoes</link>
    <link accesskey="3" pageId="veggies.jsp?veggies=Pickles">Pickles</link>
    <link accesskey="4" pageId="veggies.jsp?veggies=Jalapenos">Jalapenos</link>
  </navigation>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>