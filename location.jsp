<%@page language="java" contentType="text/xml; charset=utf-8"%><?xml version="1.0" encoding="utf-8"?>
<%@ page import="static java.lang.Math.acos" %>
<%@ page import="static java.lang.Math.sin" %>
<%@ page import="static java.lang.Math.cos" %>

<%
  String longi = request.getParameter("event.longitude");
  String lati = request.getParameter("event.latitude");

  Float longitude= Float.valueOf(longi);
  Float latitude= Float.valueOf(lati);

  float sub1_latitude = (float) 39.916977;
  float sub1_longitude = (float) 116.421762;
  double dist1 = 111.2 * acos(sin(latitude)*sin(sub1_latitude) + cos(latitude) * cos(sub1_latitude) * cos(sub1_longitude-longitude));

  String message = "\n" +
          "China, Beijing Shi, Dongcheng Qu, DongDan, Wangfujing St, 138号新东安广场 邮政编码: 100005";
  String out_longitude = String.valueOf(sub1_longitude);
  String out_latitude = String.valueOf(sub1_latitude);

  float sub2_latitude = (float) 39.998032;
  float sub2_longitude = (float) 116.291299;
  double dist2 = 111.2 * acos(sin(latitude)*sin(sub2_latitude) + cos(latitude) * cos(sub2_latitude) * cos(sub2_longitude-longitude));

  float sub3_latitude = (float) 39.974886;
  float sub3_longitude = (float) 116.490599;
  double dist3 = 111.2 * acos(sin(latitude)*sin(sub1_latitude) + cos(latitude) * cos(sub3_latitude) * cos(sub3_longitude-longitude));

  if(dist2 < dist1 & dist2 < dist3) {
    message = "China, Beijing Shi, Haidian Qu, 颐和园路204-1号 邮政编码: 100091";
    out_longitude = String.valueOf(sub2_longitude);
    out_latitude = String.valueOf(sub2_latitude);
  }

  if(dist3 < dist2 & dist3 < dist1) {
    message = "China, Beijing Shi, Chaoyang Qu, Jiuxianqiao Rd, Electronics City Science and Technology Mansion, 电子城科技大厦 邮政编码: 100015";
    out_longitude = String.valueOf(sub3_longitude);
    out_latitude = String.valueOf(sub3_latitude);
  }

%>

<page version="2.0">
  <attachment type="location" latitude="<%=out_latitude%>" longitude="<%=out_longitude%>"/>
  <div>
    The nearest Subway restaurant:<br/>
    <%=message%>
  </div>
  <navigation>
    <link accesskey="0" pageId="index.jsp">Main menu</link>
  </navigation>
</page>
