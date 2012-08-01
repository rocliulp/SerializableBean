<%@ page language="java" %>
<jsp:useBean id="saver" class="com.masslight.beans.SerializableBean" scope="session" />

<html>
  <head>
    <title>
      Serialized bean, Page Two
    </title>
  </head>
  <body>
    <%
    com.masslight.beans.SerializableBean anotherBean = (com.masslight.beans.SerializableBean) saver.retrieve ("theBeanFile.ser");
    %>
    <%= anotherBean.getIntegerProperty () %>
    <br>
    <%
    anotherBean.setIntegerProperty (8 + anotherBean.getIntegerProperty ());
    %>
    <%= anotherBean.getIntegerProperty () %>
  </body>
</html>
