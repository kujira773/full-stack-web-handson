<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String value1 = request.getParameter("height1");
    String value2 = request.getParameter("weight1");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/">
<html>
<head>
    <meta http-equiv= "Content-Type" content="text/html; charset="UTF-8">
    <title>BMIの計算結果</title>
</head>
<body>
<h1>あなたの結果</h1>
<%
       double height, weight, bmi;
       height= Double.parseDouble(value1);
       weight = Double.parseDouble(value2);
       height /= 100;

       bmi = weight / (height * height);
       out.println("あなたのBMI計算結果は" + bmi + "です。");
%>
</body>
</html>