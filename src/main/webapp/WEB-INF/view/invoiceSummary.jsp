<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>Resumen de Factura</title>
</head>
<body>
    <h2>Resumen de Factura</h2>
    <p>Concepto: ${invoice.concept}</p>
    <p>Cantidad: ${invoice.amount} €</p>
    <p>Porcentaje de Retención: ${invoice.retention}%</p>
    <p>Total después de retención: ${totalAmount} €</p>
</body>
</html>