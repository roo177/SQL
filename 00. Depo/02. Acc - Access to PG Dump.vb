Sub modExportToPG2()
    Dim rs As DAO.Recordset
 'We only want to export physical user defined visible and hidden tables
       Set rs = CurrentDb.OpenRecordset("SELECT Name " & _
        " FROM MSysObjects " & _
        "   WHERE Type=5 AND Flags < 9 ORDER BY Name;")

    Do Until rs.EOF
        'export the tables but export as lower case table names
        DoCmd.TransferDatabase acExport, "ODBC Database" _
         , "ODBC;Driver={PostgreSQL ANSI};Server=192.168.10.225;PORT=5432;Database=test;Trusted_Connection=No;UID=ictasadmin;PWD=ZaK918273*?" _
         , acQuery, rs("Name"), LCase(rs("Name"))
        rs.MoveNext
    Loop
    rs.Close
End Sub

Sub modExportToPG()
    Dim rs As DAO.Recordset
 'We only want to export physical user defined visible and hidden tables
       Set rs = CurrentDb.OpenRecordset("SELECT Name " & _
        " FROM MSysObjects " & _
        "   WHERE Type=1 AND Flags < 9 ORDER BY Name;")

    Do Until rs.EOF
        'export the tables but export as lower case table names
        DoCmd.TransferDatabase acExport, "ODBC Database" _
         , "ODBC;Driver={PostgreSQL ANSI};Server=192.168.10.225;PORT=5432;Database=test;Trusted_Connection=No;UID=ictasadmin;PWD=ZaK918273*?" _
         , acTable, rs("Name"), LCase(rs("Name"))
        rs.MoveNext
    Loop
    rs.Close
End Sub
