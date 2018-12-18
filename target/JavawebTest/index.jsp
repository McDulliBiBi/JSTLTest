<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<%
String tsConfigObj = "{name:mcdull, age:14}";
String name1="may";
int count = 2;
%>
    <script type="text/javascript">
        <c:set var="name" value="<%=tsConfigObj%>"/>
    </script>
</head>
<body>
<h2>Hello World!</h2>
<div>
    <!-- c:out标签相当于java中的out.print，会直接在html中展示value属性中的值-->
    用法1：<c:out value="tttt" />
</div>
<div>
    <!-- c:out标签中的value属性值可以是常量字符串（如用法1），也可以是前面java代码中定义的变量值（如用法2）-->
    用法2：<c:out value="<%=tsConfigObj%>" />
</div>

<div>用法3：
    <!-- 在jsp页面中实现java的if-else语句-->
<%
if(name1 == "may"){
%>
<c:out value="name is may" />
<%}else{%>
<c:out value="name is not may" />
<%}%>
</div>

<div>用法4：
    <!-- 在jsp页面中使用jstl（js标签库）实现if-else语句。test属性的值是一个boolean或者表达式-->
    <c:if test="true" var="result">
        <c:out value="name is may" />
    </c:if>
    <c:if test="false" var="result2">
        <c:out value="name is not may" />
    </c:if>
</div>

<div>用法5：
    <!-- c:set标签用于设置一个变量-->
    <c:set var="num1" value="6"/>
    <!-- c:if判断条件test属性中的值是一个表达式，且用到了c:set中的变量-->
    <c:if test="${num1 eq 1}">
        <c:out value="num1 = 1" />
    </c:if>
    <c:if test="${num1 ne 1}">
        <c:out value="num1 != 1" />
    </c:if>
</div>

<div>用法6：
    <!-- 同 用法5 -->
    <c:set var="salary" scope="session" value="${2000*2}"/>
    <c:if test="${salary > 2000}">
    我的工资为: <c:out value="${salary}"/>
    </c:if>
</div>

<div>用法7（用法汇总）：
    <!-- jstl中使用java变量-->
    <c:set var="mcdull2" value="<%=tsConfigObj%>"/>
    <script type="text/javascript">
        //js中使用jstl便签中定义的变量
        var t1 = '${mcdull2}';
        console.log(t1); //在浏览器控制台输出
        //js中使用java定义的变量
        var t2 = <%=count%>;
        console.log(t2);
    </script>
    <!-- jstl中使用jstl定义的变量-->
    <c:out value="${mcdull2}"/>
    <!-- jstl中使用java中定义的变量-->
    <c:out value="<%=tsConfigObj%>" />

    <!-- java中使用js变量有点麻烦，要写一个隐藏的form表单..-->
</div>

</body>
</html>
