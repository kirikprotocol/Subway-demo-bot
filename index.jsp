<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%
  session.setAttribute("type", null);
  session.setAttribute("bread", null);
  session.setAttribute("size", null);
  session.setAttribute("extras", null);
  session.setAttribute("sauce", null);
  session.setAttribute("veggies", null);
%>
<page version="2.0">
  <div>
    At SUBWAY® restaurants we make a lot of different subs, salads and sides.
    <input navigationId="submit" name="type" title="Write us what you want to order: sub, salad or wrap?"/>
  </div>
  <navigation id="submit">
    <link accesskey="1" pageId="type.jsp">Ok</link>
  </navigation>
  <navigation>
    <link accesskey="2" pageId="type.jsp?type=sub">🌭 sub</link>
    <link accesskey="3" pageId="type.jsp?type=salad">🥗 salad</link>
    <link accesskey="4" pageId="type.jsp?type=wrap">🌮 wrap</link>
  </navigation>
  <navigation>
    <link accesskey="5" pageId="bonuses.jsp">Get bonuses</link>
    <link accesskey="6" pageId="near.jsp">How to find us</link>
  </navigation>
  <attributes>
    <attribute name="telegram.links.realignment.enabled" value="false"/>
  </attributes>
</page>
