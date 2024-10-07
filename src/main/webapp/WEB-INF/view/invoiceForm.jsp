<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Crear Factura</title>
</head>
<body>
    <h2>Crear Factura</h2>
    <form:form modelAttribute="invoice" action="${pageContext.request.contextPath}/invoice" method="post">
        <table>
            <tr>
                <td>Concepto:</td>
                <td><form:input path="concept" /></td>
            </tr>
            <tr>
                <td>Importe:</td>
                <td><form:input path="amount" /></td>
            </tr>
            <tr>
                <td>Porcentaje de Retención:</td>
                <td><form:input path="retention" /></td>
            </tr>
        </table>
        <input type="submit" value="Enviar" />
    </form:form>
</body>
</html>