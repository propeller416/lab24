<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
<meta Charset="UTF-8">
<title>LabRab24</title>
</head>
<body>
<form method="post">
<label>Введите x(через точку): <input type="text" name="x"></label>
<input type="submit" value="Вычислить">
</form>
<%
String xParam = request.getParameter("x");
if (xParam != null && !xParam.isEmpty()) {
    try {
        double x = Double.parseDouble(xParam);
        if (Math.abs(x) > 1) {
            out.println("<p>Число больше 1 по модулю</p>");
        } else {
            double sum = 0;
            for (double n = 0; n <= x; n++) {
                double schet = Math.pow(x, (2 * n + 1)) / (2 * n + 1);
                sum += schet;
            }
            double result = sum * 2;
            out.println("<p>Результат: " + result + "</p>");
        }
    } catch (NumberFormatException e) {
            out.println("<p>Ошибка: введите корректное число</p>");
    }
}
%>
</body>
</html> 