<%@ page language="java" %>
<jsp:useBean id="theBean" class="com.masslight.beans.SerializableBean" scope="page" />

<html>
  <head>
    <title>
      Serialized bean, Page one
    </title>
  </head>
  <body>
    <br/>
    <%= theBean.getIntegerProperty () %>
    <% theBean.setIntegerProperty (8 + theBean.getIntegerProperty ()); %>
    <br/>
    <%= theBean.getIntegerProperty () %>
    <%
    theBean.save (theBean, "theBeanFile.ser");
    %>
    <br/>
    <a href = "http://localhost:8080/SerializableBean/secondPage.jsp">click here</a>
  </body>
</html>
