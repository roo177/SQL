'redim preserve both dimensions for a multidimension array *ONLY
Public Function ReDimPreserve(aArrayToPreserve,nNewFirstUBound,nNewLastUBound)
    ReDimPreserve = False
    'check if its in array first
    If IsArray(aArrayToPreserve) Then       
        'create new array
        ReDim aPreservedArray(nNewFirstUBound,nNewLastUBound)
        'get old lBound/uBound
        nOldFirstUBound = uBound(aArrayToPreserve,1)
        nOldLastUBound = uBound(aArrayToPreserve,2)         
        'loop through first
        For nFirst = lBound(aArrayToPreserve,1) to nNewFirstUBound
            For nLast = lBound(aArrayToPreserve,2) to nNewLastUBound
                'if its in range, then append to new array the same way
                If nOldFirstUBound >= nFirst And nOldLastUBound >= nLast Then
                    aPreservedArray(nFirst,nLast) = aArrayToPreserve(nFirst,nLast)
                End If
            Next
        Next            
        'return the array redimmed
        If IsArray(aPreservedArray) Then ReDimPreserve = aPreservedArray
    End If
End Function