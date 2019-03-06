<%--
  Created by IntelliJ IDEA.
  User: name
  Date: 2019/3/5
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      function del(id){
          location.href="del?id="+id;
      }
      function update(id,ename,deptid){
          location.href="jsp/emp.jsp?id="+id+"&ename="+ename+"&deptid="+deptid;
      }

</script>
<body>
<a href="jsp/emp.jsp">新增</a>
   <table border="1">
       <c:forEach items="${emp}" var="s">
           <tr>
               <td>${s.id}</td>
               <td>${s.ename}</td>
               <td>${s.deptid}</td>
               <td><input type="button" onclick="update('${s.id}','${s.ename}','${s.deptid}')" value="修改"><input type="button" onclick="del(${s.id})" value="删除"></td>
           </tr>
       </c:forEach>
   </table>
</body>
</html>
