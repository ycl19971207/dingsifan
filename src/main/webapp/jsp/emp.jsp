<%--
  Created by IntelliJ IDEA.
  User: name
  Date: 2019/3/5
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>
<script>

    function tijiao(){
        if(document.getElementById("id").value==""){
            location.href="insert?ename="+document.getElementById("ename").value+"&deptid="+document.getElementById("deptid").value;
        }else{
            location.href="update?ename="+document.getElementById("ename").value+"&deptid="+document.getElementById("deptid").value+"&id="+document.getElementById("id").value;
        }
    }

</script>
<body>
     <form>
         <input type="hidden" id="id" value="<%= request.getParameter("id")==null?"":request.getParameter("id")%>">
         姓名<input type="text" id="ename" value="<%= request.getParameter("id")==null?"":request.getParameter("ename")%>"><br>
         部门编号<input type="text" id="deptid" value="<%= request.getParameter("id")==null?"":request.getParameter("deptid")%>">
         <input type="button" value="tijiao" onclick="tijiao()">
     </form>
</body>
</html>
