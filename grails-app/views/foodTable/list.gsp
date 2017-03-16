<html>

<head>
    <meta name="layout" content="main">
</head>

<body >
    <h1>Tables list</h1>
    <table border="1">
        <tr>
            <td>Table Identifier</td>
            <td>Number of spots</td>
            <td>Status</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <g:render template="listItem" collection="${list}" />
    </table>
</body>
</html>