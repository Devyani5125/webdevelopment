<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>

<head>

    <title>Student Application</title>
    <style>

.navigation{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-top:40px;
    padding:20px;
}

.navigation a{
    text-decoration:none;
    color:#3498db;
    font-weight:bold;
}

</style>

    <style>

        body{
            font-family:Arial;
            background:#f4f4f4;
        }

        h1{
            text-align:center;
            color:#2c3e50;
        }

        table{
            width:80%;
            margin:auto;
            border-collapse:collapse;
            background:white;
        }

        th{
            background:#3498db;
            color:white;
            padding:12px;
        }

        td{
            padding:10px;
            text-align:center;
            border:1px solid #ccc;
        }

        tr:nth-child(even){
            background:#ecf0f1;
        }

        .pass{
            color:green;
            font-weight:bold;
        }

        .fail{
            color:red;
            font-weight:bold;
        }

    </style>

</head>

<body>

<h1>Student Application Using XSLT</h1>

<table>

<tr>
    <th>Name</th>
    <th>Roll No</th>
    <th>Course</th>
    <th>Marks</th>
    <th>Result</th>
</tr>

<xsl:for-each select="students/student">

<tr>

    <td>
        <xsl:value-of select="name"/>
    </td>

    <td>
        <xsl:value-of select="rollno"/>
    </td>

    <td>
        <xsl:value-of select="course"/>
    </td>

    <td>
        <xsl:value-of select="marks"/>
    </td>

    <td>

        <xsl:choose>

            <xsl:when test="marks &gt;= 60">

                <span class="pass">
                    Pass
                </span>

            </xsl:when>

            <xsl:otherwise>

                <span class="fail">
                    Fail
                </span>

            </xsl:otherwise>

        </xsl:choose>

    </td>

</tr>

</xsl:for-each>

</table>

</body>

</html>

</xsl:template>

</xsl:stylesheet>