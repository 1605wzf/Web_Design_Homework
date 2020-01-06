<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP</title>
</head>
<body>
    <%
        // 加入session进行判断是否是新用户
        if (session.isNew()) {
            
            // 加入同步方法确保能+1
            synchronized(application) {
                // 获取上一次计数，注意application返回的是Object类型所以需要转换
                String data = (String)application.getAttribute("count");
                if (data == null) {
                    application.setAttribute("count", "1");     // 首次访问
                }
                else {
                    int i = Integer.parseInt(data);             // 取出上一次数据
                    i++;                                        // +1
                    application.setAttribute("count", Integer.toString(i)); // 重新写入
                }
            }
        }
    %>
    <%-- 使用EL进行输入，也可以使用application.getAttribute("count")输入 --%>
    <h2>您是第${count}位访客！</h2>
</body>
</html>