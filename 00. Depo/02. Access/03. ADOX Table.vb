Microsoft Access: ADOX Programming Code Examples
Provided by Allen Browne, March 2007.  Updated July 2009.

ADOX Programming Code Examples
This page is a reference for developers, demonstrating how to use the ADOX library to programmatically create, delete, modify, and list the objects in Access - the tables, fields, indexes, and relations, queries, and databases - and read or set their properties.

ADOX is an extension to the ADO library, exposing the catalog of database objects. To use this library, open the code window, choose References on the Tools menu, and check the box beside:
    Microsoft ADO Ext x.x for DDL and Security

In general, the DAO library is better than ADOX. DAO is purpose-designed for Access, and exposes properties the other libraries don't. But there are some things DAO cannot do, such as setting the Seed of an AutoNumber field. The ADOX library is less stable, and more subject to version problems, so if you strike problems with the code in this page, an MDAC update might address the issue for you.

See the field type reference for a comparison of the field types in ADOX compared to the Access interface and other libraries.

There is no explanation of the code beyond in-line comments, and no error handling in most examples.

Index of Functions	Description
SetSeed()	Set the Seed of an AutoNumber
ShowAllTables()	List the tables (and optionally their fields)
ShowPropsADOX()	Show the columns in a table, and optionally their properties
CreateTableAdox()	Create a table with various field types
ModifyTableAdox()	Show how to add fields to a table, and delete them
ModifyFieldPropAdox()	Show how to alter field properties
DeleteTableAdox()	Delete a table
CreateIndexesAdox()	Show how to create indexes
DeleteIndexAdox()	Show how to delete indexes
CreateKeyAdox()	Show how to create relationships
ShowKeyAdox()	List relationships
DeleteKeyAdox()	Delete relationships
CreateViewAdox()	Create a query
CreateProcedureAdox()	Create a parameter query or action query
ShowProx()	List the parameter/action queries
ExecuteProcedureAdox()	Execute a parameter query
DeleteProcedureAdox()	Delete a parameter/action query
CreateDatabaseAdox()	Create a database
DeleteAllAndResetAutoNum()	Delete all records from the table, and reset the AutoNumber
GetSeedADOX()	Read the Seed of the AutoNumber of a table
ResetSeed()	Reset the Seed of the AutoNumber.
To reset the seed for all tables in a database, see:
    Fixing AutoNumbers when Access assigns negatives or duplicates
Option Compare Database
Option Explicit

Function SetSeed(strTable As String, strAutoNum As String, lngID As Long) As Boolean
    'Purpose:   Set the Seed of an AutoNumber using ADOX.
    Dim cat As New ADOX.Catalog
    
    Set cat.ActiveConnection = CurrentProject.Connection
    cat.Tables(strTable).Columns(strAutoNum).Properties("Seed") = lngID
    Set cat = Nothing
    SetSeed = True
End Function

Function ShowAllTables(Optional bShowFieldsToo As Boolean)
    'Purpose:   List the tables (and optionally their fields) using ADOX.
    Dim cat As New ADOX.Catalog 'Root object of ADOX.
    Dim tbl As ADOX.Table       'Each Table in Tables.
    Dim col As ADOX.Column      'Each Column in the Table.
    
    'Point the catalog to the current project's connection.
    Set cat.ActiveConnection = CurrentProject.Connection
    
    'Loop through the tables.
    For Each tbl In cat.Tables
        Debug.Print tbl.Name, tbl.Type
        If bShowFieldsToo Then
        'Loop through the columns of the table.
        For Each col In tbl.Columns
            Debug.Print , col.Name, col.Type
        Next
        Debug.Print "--------------------------------"
        'Stop
        End If
    Next
    
    'Clean up
    Set col = Nothing
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function ShowPropsADOX(strTable As String, Optional bShowPropertiesToo As Boolean)
    'Purpose:   Show the columns in a table, and optionally their properties, using ADOX.
    Dim cat As New ADOX.Catalog 'Root object of ADOX.
    Dim tbl As ADOX.Table       'Each Table in Tables.
    Dim col As ADOX.Column      'Each Column in the Table.
    Dim prp As ADOX.Property
    
    'Point the catalog to the current project's connection.
    Set cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables(strTable)
    
    For Each col In tbl.Columns
        Debug.Print col.Name        ', col.Properties("Fixed length"), col.Type
        If bShowPropertiesToo Then
            For Each prp In col.Properties
                Debug.Print , prp.Name, prp.Type, prp.Value
            Next
            Debug.Print "--------------------------------"
            'Stop
        End If
    Next
    
    'Clean up
    Set prp = Nothing
    Set col = Nothing
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function CreateTableAdox()
    'Purpose:   Create a table with various field types, using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    
    Set cat.ActiveConnection = CurrentProject.Connection
    'Initialize the Contractor table.
    Set tbl = New ADOX.Table
    tbl.Name = "tblAdoxContractor"
    
    'Append the columns.
    With tbl.Columns
        .Append "ContractorID", adInteger   'Number (Long Integer)
        .Append "Surname", adVarWChar, 30   'Text (30 max)
        .Append "FirstName", adVarWChar, 20 'Text (20 max)
        .Append "Inactive", adBoolean       'Yes/No
        .Append "HourlyFee", adCurrency     'Currency
        .Append "PenaltyRate", adDouble     'Number (Double)
        .Append "BirthDate", adDate         'Date/Time
        .Append "Notes", adLongVarWChar     'Memo
        .Append "Web", adLongVarWChar       'Memo (for hyperlink)
        
        'Set the field properties.
        'AutoNumber
        With !ContractorID
            Set .ParentCatalog = cat
            
            .Properties("Autoincrement") = True     'AutoNumber.
            .Properties("Description") = "Automatically " & _
                "generated unique identifier for this record."
        End With
        
        'Required field.
        With !Surname
            Set .ParentCatalog = cat
            .Properties("Nullable") = False         'Required.
            .Properties("Jet OLEDB:Allow Zero Length") = False
        End With
        
        'Set a validation rule.
        With !BirthDate
            Set .ParentCatalog = cat
            .Properties("Jet OLEDB:Column Validation Rule") = _
                "Is Null Or <=Date()"
            .Properties("Jet OLEDB:Column Validation Text") = _
                "Birth date cannot be future."
        End With
        
        'Hyperlink field.
        With !Web
            Set .ParentCatalog = cat
            .Properties("Jet OLEDB:Hyperlink") = True 'Hyperlink.
        End With
    End With
    
    'Save the new table by appending to catalog.
    cat.Tables.Append tbl
    Debug.Print "tblAdoxContractor created."
    Set tbl = Nothing
    
    'Initialize the Booking table
    Set tbl = New ADOX.Table
    tbl.Name = "tblAdoxBooking"
    
    'Append the columns.
    With tbl.Columns
        .Append "BookingID", adInteger
        .Append "BookingDate", adDate
        .Append "ContractorID", adInteger
        .Append "BookingFee", adCurrency
        .Append "BookingNote", adWChar, 255
        
        'Set the field properties.
        With !BookingID                             'AutoNumber.
            .ParentCatalog = cat
            .Properties("Autoincrement") = True
        End With
        With !BookingNote                           'Required.
            .ParentCatalog = cat
            .Properties("Nullable") = False
            .Properties("Jet OLEDB:Allow Zero Length") = False
        End With
    End With
    
    'Save the new table by appending to catalog.
    cat.Tables.Append tbl
    Debug.Print "tblAdoxBooking created."
    
    'Clean up
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function ModifyTableAdox()
    'Purpose:   Show how to add fields to a table, and delete them using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    Dim col As New ADOX.Column
    
    'Initialize
    cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables("tblAdoxContractor")
    
    'Add a new column
    With col
        .Name = "MyDecimal"
        .Type = adNumeric   'Decimal type.
        .Precision = 28     '28 digits.
        .NumericScale = 8   '8 decimal places.
    End With
    tbl.Columns.Append col
    Set col = Nothing
    Debug.Print "Column added."
    
    'Delete a column.
    tbl.Columns.Delete "MyDecimal"
    Debug.Print "Column deleted."
    
    'Clean up
    Set col = Nothing
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function ModifyFieldPropAdox()
    'Purpose:   Show how to alter field properties, using ADOX.
    'Note:      You cannot alter the DefinedSize of the field like this.
    Dim cat As New ADOX.Catalog
    Dim col As ADOX.Column
    Dim prp As ADOX.Property

    cat.ActiveConnection = CurrentProject.Connection
    Set col = cat.Tables("MyTable").Columns("MyField")
    'col.ParentCatalog = cat
    Set prp = col.Properties("Nullable")
    'Read the property
    Debug.Print prp.Name, prp.Value, (prp.Type = adBoolean)
    'Change the property
    prp.Value = Not prp.Value
    
    'Clean up
    Set prp = Nothing
    Set col = Nothing
    Set cat = Nothing
End Function

Function DeleteTableAdox()
    'Purpose:   Delete a table using ADOX.
    Dim cat As New ADOX.Catalog
    
    cat.ActiveConnection = CurrentProject.Connection
    cat.Tables.Delete "MyTable"
    Set cat = Nothing
End Function

Function CreateIndexesAdox()
    'Purpose:   Show how to create indexes using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    Dim ind As ADOX.Index
    
    'Initialize
    Set cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables("tblAdoxContractor")

    'Create a primary key index
    Set ind = New ADOX.Index
    ind.Name = "PrimaryKey"
    ind.PrimaryKey = True
    ind.Columns.Append "ContractorID"
    tbl.Indexes.Append ind
    Set ind = Nothing
    
    'Create an index on one column.
    Set ind = New ADOX.Index
    ind.Name = "Inactive"
    ind.Columns.Append "Inactive"
    tbl.Indexes.Append ind
    Set ind = Nothing
    
    'Multi-field index.
    Set ind = New ADOX.Index
    ind.Name = "FullName"
    With ind.Columns
        .Append "Surname"
        .Append "FirstName"
    End With
    tbl.Indexes.Append ind
    
    'Clean up
    Set ind = Nothing
    Set tbl = Nothing
    Set cat = Nothing
    Debug.Print "tblAdoxContractor indexes created."
End Function

Function DeleteIndexAdox()
    'Purpose:   Show how to delete indexes using ADOX.
    Dim cat As New ADOX.Catalog
    cat.ActiveConnection = CurrentProject.Connection
    cat.Tables("tblAdoxContractor").Indexes.Delete "Inactive"
    Set cat = Nothing
End Function

Function CreateKeyAdox()
    'Purpose:   Show how to create relationships using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    Dim ky As New ADOX.Key
    
    Set cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables("tblAdoxBooking")
    
    'Create as foreign key to tblAdoxContractor.ContractorID
    With ky
        .Type = adKeyForeign
        .Name = "tblAdoxContractortblAdoxBooking"
        .RelatedTable = "tblAdoxContractor"
        .Columns.Append "ContractorID"      'Just one field.
        .Columns("ContractorID").RelatedColumn = "ContractorID"
        .DeleteRule = adRISetNull   'Cascade to Null on delete.
    End With
    tbl.Keys.Append ky
    
    Set ky = Nothing
    Set tbl = Nothing
    Set cat = Nothing
    Debug.Print "Key created."
End Function

Function ShowKeyAdox(strTableName As String)
    'Purpose:   List relationships using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    Dim ky As ADOX.Key
    Dim strRIName As String
    
    Set cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables(strTableName)
    
    For Each ky In tbl.Keys
        With ky
            Select Case .DeleteRule
            Case adRINone
                strRIName = "No delete rule"
            Case adRICascade
                strRIName = "Cascade delete"
            Case adRISetNull
                strRIName = "Cascade to null"
            Case adRISetDefault
                strRIName = "Cascade to default"
            Case Else
                strRIName = "DeleteRule of " & .DeleteRule & " unknown."
            End Select
            Debug.Print "Key: " & .Name & ", to table: " & .RelatedTable & ", with: " & strRIName
        End With
    Next

    Set ky = Nothing
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function DeleteKeyAdox()
    'Purpose:   Delete relationships using ADOX.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    
    Set cat.ActiveConnection = CurrentProject.Connection
    cat.Tables("tblAdoxBooking").Keys.Delete "tblAdoxContractortblAdoxBooking"
    
    Set cat = Nothing
    Debug.Print "Key deleted."
End Function

Function CreateViewAdox()
    'Purpose:   Create a query using ADOX.
    Dim cat As New ADOX.Catalog
    Dim cmd As New ADODB.Command
    Dim strSql As String
    
    'Initialize.
    cat.ActiveConnection = CurrentProject.Connection
    
    'Assign the SQL statement to Command object's CommandText property.
    strSql = "SELECT BookingID, BookingDate FROM tblDaoBooking;"
    cmd.CommandText = strSql
    
    'Append the Command to the Views collectiion of the catalog.
    cat.Views.Append "qryAdoxBooking", cmd
    
    'Clean up.
    Set cmd = Nothing
    Set cat = Nothing
    Debug.Print "View created."
End Function

Function CreateProcedureAdox()
    'Purpose:   Create a parameter query or action query using ADOX.
    Dim cat As New ADOX.Catalog
    Dim cmd As New ADODB.Command
    Dim strSql As String
    
    'Initialize.
    cat.ActiveConnection = CurrentProject.Connection
    
    ''Assign the SQL statement to the CommandText property.
    strSql = "PARAMETERS StartDate DateTime, EndDate DateTime; " & _
        "DELETE FROM tblAdoxBooking " & _
        "WHERE BookingDate Between StartDate And EndDate;"
    cmd.CommandText = strSql
    
    'Append the Command to the Procedures collection of the catalog.
    cat.Procedures.Append "qryAdoxDeleteBooking", cmd
    
    'Clean up.
    Set cmd = Nothing
    Set cat = Nothing
    Debug.Print "Procedure created."
End Function

Function ShowProx()
    'Purpose:   List the parameter/action queries using ADOX.
    Dim cat As New ADOX.Catalog
    Dim proc As ADOX.Procedure
    Dim vw As ADOX.View
    
    cat.ActiveConnection = CurrentProject.Connection
    
    Debug.Print "Procedures: " & cat.Procedures.Count
    For Each proc In cat.Procedures
        Debug.Print proc.Name
    Next
    Debug.Print cat.Procedures.Count & " procedure(s)"
    Debug.Print
    
    Debug.Print "Views " & cat.Views.Count
    For Each vw In cat.Views
        Debug.Print vw.Name
    Next
    
    Set cat = Nothing
End Function

Function ExecuteProcedureAdox()
    'Purpose:   Execute a parameter query using ADOX.
    Dim cat As New ADOX.Catalog
    Dim cmd As ADODB.Command
    Dim lngCount As Long
    
    'Initialize.
    cat.ActiveConnection = CurrentProject.Connection
    Set cmd = cat.Procedures("qryAdoxDeleteBooking").Command
    
    'Supply the parameters
    cmd.Parameters("StartDate") = #1/1/2004#
    cmd.Parameters("EndDate") = #12/31/2004#
    
    'Execute the procedure
    cmd.Execute lngCount
    Debug.Print lngCount & " record(s) deleted."
    
    'Alternative: specify the parameters in a variant array.
    'cmd.Execute , Array(#1/1/2004#, #12/31/2004#)
    
    'Clean up.
    Set cmd = Nothing
    Set cat = Nothing
End Function

Function DeleteProcedureAdox()
    'Purpose:   Delete a parameter/action query using ADOX.
    Dim cat As New ADOX.Catalog
    Dim cmd As ADODB.Command
    Dim lngCount As Long
    
    'Initialize.
    cat.ActiveConnection = CurrentProject.Connection
    cat.Procedures.Delete "qryAdoxDeleteBooking"
    Set cat = Nothing
End Function

Function CreateDatabaseAdox()
    'Purpose:   Create a database using ADOX.
    Dim cat As New ADOX.Catalog
    Dim strFile As String

    strFile = "C:\SampleADOX.mdb"
    cat.Create "Provider='Microsoft.Jet.OLEDB.4.0';" & _
        "Data Source='" & strFile & "'"
    Set cat = Nothing
    Debug.Print strFile & " created."
End Function

Function DeleteAllAndResetAutoNum(strTable As String) As Boolean
    'Purpose:   Delete all records from the table, and reset the AutoNumber using ADOX.
    '           Also illustrates how to find the AutoNumber field.
    'Argument:  Name of the table to reset.
    'Return:    True if sucessful.
    Dim cat As New ADOX.Catalog
    Dim tbl As ADOX.Table
    Dim col As ADOX.Column
    Dim strSql As String
    
    'Delete all records.
    strSql = "DELETE FROM [" & strTable & "];"
    CurrentProject.Connection.Execute strSql
    
    'Find and reset the AutoNum field.
    cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables(strTable)
    For Each col In tbl.Columns
        If col.Properties("Autoincrement") Then
            col.Properties("Seed") = 1
            DeleteAllAndResetAutoNum = True
        End If
    Next
End Function

Function GetSeedADOX(strTable As String, Optional ByRef strCol As String) As Long
    'Purpose:   Read the Seed of the AutoNumber of a table.
    'Arguments: strTable the table to examine.
    '           strCol = the name of the field. If omited, the code finds it.
    'Return:    The seed value.
    Dim cat As New ADOX.Catalog 'Root object of ADOX.
    Dim tbl As ADOX.Table       'Each Table in Tables.
    Dim col As ADOX.Column      'Each Column in the Table.
    
    'Point the catalog to the current project's connection.
    Set cat.ActiveConnection = CurrentProject.Connection
    Set tbl = cat.Tables(strTable)
    
    'Loop through the columns to find the AutoNumber.
    For Each col In tbl.Columns
        If col.Properties("Autoincrement") Then
            strCol = "[" & col.Name & "]"
            GetSeedADOX = col.Properties("Seed")
            Exit For    'There can be only one AutoNum.
        End If
    Next
    
    'Clean up
    Set col = Nothing
    Set tbl = Nothing
    Set cat = Nothing
End Function

Function ResetSeed(strTable As String) As String
    'Purpose:   Reset the Seed of the AutoNumber, using ADOX.
    Dim strAutoNum As String    'Name of the autonumber column.
    Dim lngSeed As Long         'Current value of the Seed.
    Dim lngNext As Long         'Next unused value.
    Dim strSql As String
    Dim strResult As String
    
    lngSeed = GetSeedADOX(strTable, strAutoNum)
    If strAutoNum = vbNullString Then
        strResult = "AutoNumber not found."
    Else
        lngNext = Nz(DMax(strAutoNum, strTable), 0) + 1
        If lngSeed = lngNext Then
            strResult = strAutoNum & " already correctly set to " & lngSeed & "."
        Else
            Debug.Print lngNext, lngSeed
            strSql = "ALTER TABLE [" & strTable & "] ALTER COLUMN [" & strAutoNum & "] COUNTER(" & lngNext & ", 1);"
            Debug.Print strSql
            CurrentProject.Connection.Execute strSql
            strResult = strAutoNum & " reset from " & lngSeed & " to " & lngNext
        End If
    End If
    ResetSeed = strResult
End Function
Home	Index of tips	Top