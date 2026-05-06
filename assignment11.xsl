<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Assignment 11 - Student Information</title>
                <style>
                    .navigation {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                        margin-top: 40px;
                        padding: 20px;
                    }

                    .navigation a {
                        text-decoration: none;
                        color: #3498db;
                        font-weight: bold;
                    }

                    body {
                        font-family: Arial, sans-serif;
                        background-color: #84a8ca;
                        padding: 20px;
                    }

                    h2 {
                        text-align: center;
                        color: darkblue;
                    }

                    table {
                        width: 90%;
                        margin: auto;
                        border-collapse: collapse;
                        background: white;
                        box-shadow: 0 0 10px gray;
                    }

                    th {
                        background-color: #0984e3;
                        color: white;
                        padding: 10px;
                    }

                    td {
                        padding: 10px;
                        text-align: center;
                    }

                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }

                    tr:hover {
                        background-color: #dfe6e9;
                    }
                </style>
            </head>
            <body>
                <div class="navigation">
                    <a href="index.html">Home</a>
                    <a href="assignment10.html">⬅ Back</a>
                    <a href="assignment12_1.xml">Next ➡</a>
                </div>

                <h2>Student Information Table</h2>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Course</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>City</th>
                        <th>Skills</th>
                    </tr>
                    <xsl:for-each select="college/department/student">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="course"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="phone"/></td>
                            <td><xsl:value-of select="city"/></td>
                            <td>
                                <xsl:for-each select="skills/skill">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
