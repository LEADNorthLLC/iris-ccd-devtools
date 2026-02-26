Class LEAD.Tutorials.Production.DTL.FunctionSet Extends Ens.Rule.FunctionSet
{

ClassMethod LogMessage(message As %String) As %Boolean
{
    D ##Class(%SYS.System).WriteToConsoleLog(message)
}

/// Returns the indices which match pSegment</br>
///   - pSegment can be a regular expresssion</br>
///   - Returns ""-string and logs error if no matches are found</br>
ClassMethod SegmentLookup(pHL7Msg As EnsLib.HL7.Message, pSegment As %String) As %String
{
    // declare variables
    #dim segment as EnsLib.HL7.Segment
    #dim indices as %List   = $LB()
    #dim result  as %String = ""

    // compute number of segments there are in the message
    #dim segmentCount as %Integer = pHL7Msg.SegCountGet()
    
    // loop through the segments of the message
    #dim i as %Integer = 1 
    WHILE ((i <= segmentCount) && ('result)) {
        // get the i'th segment
        S segment = pHL7Msg.GetSegmentAt(i)

        // see if it's name matches pSegment
        IF ($MATCH(segment.Name, pSegment)) {
            S indices = indices_$LB(i)
        }
    }
    S result = $LTS(indices, ",")
    //IF (result="") {
    //    D ..LogMessage("[SegmentLookup] No match found: (%Oid="_$LG(pHL7Msg.%Oid())_" pSegment="_pSegment_")")
    //}
    RETURN result
}

ClassMethod AllergenTypeCode(typeCode As %String) As %String
{
    #dim result As %String = $CASE(+typeCode,
        1: "FDB Code",
        2: "Drug name",
        3: "FDB group ID",
        5: "Drug NDC ID",
        : ""
    )
    // Validate non-empty string is returned
    IF (result = "") {
        $$$LOGERROR("Invalid AllergenTypeCode: """_typeCode_"""")
    }
    // D ..LogMessage("[AllergenTypeCode] (typeCode="""_typeCode_""" result="""_result_""")") 
    RETURN result
}

/// Removes leading 0's from an input string
ClassMethod RemoveLeadingZeros(input As %String) As %Integer
{
    // Remove leading 0's from the string
    #dim result As %Integer = +input
    IF ('result) {
        $$$LOGERROR("Invalid PatientID: """_input_"""")
    }
    // D ..LogMessage("[RemoveLeadingZeros] (input="""_input_""" result="""_result_""")")
    RETURN result
}

/// Pads datetimes to 14 characters in yyymmddHHMMSS format
ClassMethod NormalizeDateTime(dateTime As %Integer) As %Integer
{
    // normalize dateTime
    S dateTime = +dateTime

    // Define year, month, day and put it in YYYY:MM:DD format
    #dim year      As %Integer = $E(dateTime, 1, 4)
    #dim month     As %Integer = $E(dateTime, 5, 6)
    #dim day       As %Integer = $E(dateTime, 7, 8)
    #dim yyyymmdd  As %String  = $LTS($LB(year, month, day), "-")

    // Define hour, minute, and second and put it in HH:MM:SS format
    #dim hour   As %Integer = $E(dateTime, 9, 10)
    #dim minute As %Integer = $E(dateTime, 11, 12)
    #dim second As %Integer = $E(dateTime, 13, 14)
    #dim HHMMSS As %String  = $LTS($LB(hour, minute, second), ":")
    TRY {
        // Normalize the timestamp and convert it back to an integer
        #dim timestamp As %TimeStamp = ##Class(%TimeStamp).Normalize(yyyymmdd _ " " _ HHMMSS)
        #dim result    As %Integer   = +($LTS($LFS($P(timestamp, " ", 1), "-"), "") _ $LTS($LFS($P(timestamp, " ", 2), ":"), ""))
        
        // Validate length is 14 characters
        IF ($L(result) '= 14) {
            $$$LOGERROR("Error normalizing datetime: (dateTime="""_dateTime_""" result="""_result_""")")
        }
    }
    CATCH err {
        $$$LOGERROR("Error normalizing datetime: (dateTime="""_dateTime_""" err.Name="""_err.Name_""")")
    }
    // D ..LogMessage("[NormalizeDateTime] (dateTime="_dateTime_" result="_result_" $L(result)="_$L(result)_")")
    RETURN result
}

/// Pads dates to 8 characters in yyymmdd format
ClassMethod NormalizeDate(date As %Integer) As %Integer
{
    // normalize the date
    S date = +date

    // Define year, month, day and put it in YYYY:MM:DD format
    #dim year      As %Integer = $E(date, 1, 4)
    #dim month     As %Integer = $E(date, 5, 6)
    #dim day       As %Integer = $E(date, 7, 8)
    #dim yyyymmdd  As %String  = $LTS($LB(year, month, day), "-")

    TRY {
        // Normalize the timestamp and convert it back to an integer
        #dim timestamp As %TimeStamp = ##Class(%TimeStamp).Normalize(yyyymmdd)
        #dim result    As %Integer   = +($LTS($LFS($P(timestamp, " ", 1), "-"), ""))
        
        // Validate length is 8 characters
        IF ($L(result) '= 8) {
            $$$LOGERROR("Error normalizing datetime: (dateTime="""_date_""" result="""_result_""")")
        }
    }
    CATCH err {
        $$$LOGERROR("Error normalizing datetime: (dateTime="""_date_"""err.Name="""_err.Name_""")")
    }
    // D ..LogMessage("[NormalizeDate] (dateTime="_date_" result="_result_" $L(result)="_$L(result)_")")
    RETURN result
}

/// Formats DG1.1 ID to four character lengths with leading zeros
ClassMethod NormalizeDG1(id As %Integer) As %String
{
    // declare variables
    #dim result As %String
    #dim input  As %Integer = +id
    
    // If input has four digits then return it
    IF ($L(input) = 4) {
        RETURN input
    }
    
    // If input has greater than four characters log an error 
    IF ($L(input) > 4) {
        $$$LOGERROR("DG1.1 has greater than four characters: (input="""_input_""")")
    }

    // Return normalized id
    S result = $CASE($L(input),
        1: "000" _ input,
        2: "00" _ input,
        3: "0" _ input,
        :  "0000"
    )
    // D ..LogMessage("[NormalizeDG1] (input="_input_" result="_result_")")
    RETURN result
}

/// Create a 16 character "unique" identifier
ClassMethod CreateID() As %Integer
{
    RETURN $ZSTRIP($NOW(), "*P")
}

/// summary: $MATCH's pInputValue aginst {pSegment(i):pField(j).pComponent} for all i,j in a given pHL7Msg</br>
///    - pComponent can be ","-delimited like 2,3,5,7,11,...</br>
///    - pInputValue can be a regular expression ("^$" for an empty string)<\br>
ClassMethod CheckComponents(pHL7Msg As EnsLib.HL7.Message, pSegment As %String, pField As %String, pComponent As %String, pInputValue As %String) As %Boolean
{
    // define macro for additional logging
    #define LogDebug(%message) D ##Class(%SYS.System).WriteToConsoleLog("[CheckComponents:"_$LG(pHL7Msg.%Oid(),1)_"] "_%message)
    // $$$LogDebug("(pHL7Msg="_pHL7Msg.Name_" pSegment="_pSegment_" pField="_pField_" pComponent="_pComponent_" pInput="_pInputValue_")")
    
    // declare variables
    #dim segment as EnsLib.HL7.Segment
    #dim result  as %Boolean = 0
    
    // compute list of components to check
    #dim componentList as %List = $LFS(pComponent, ",")

    // compute number of segments there are in the message
    #dim segmentCount as %Integer = pHL7Msg.SegCountGet()
    // $$$LogDebug("segmentCount of "_pSegment_": "_segmentCount)
    
    // loop through the segments of the message
    #dim i as %Integer = 1 // i'th segment
    WHILE ((i <= segmentCount) && ('result)) {
        // get the i'th segment
        S segment = pHL7Msg.GetSegmentAt(i)

        // see if it's name matches pSegment
        IF (segment.Name = pSegment) {
            // D ##Class(%SYS.System).WriteToConsoleLog("I have a match...")
            
            // compute number of repetitions this field has
            #dim fieldCount as %Integer = segment.GetValueAt(pField_"(*)")
            // $$$LogDebug("Here are how many repetitions of this field I think there are: "_fieldCount)

            // loop through each repetition of the field...
            #dim j as %Integer = 1
            WHILE ((j <= fieldCount) && ('result)) {
                // loop through the list of components...
                FOR k=1:1:$LL(componentList) {
                    // compute the property path
                    #dim propertyPath as %String = pField_"("_j_")"_"."_$LG(componentList, k)

                    // get the data at segment():field(j).k and strip leading and trailing whitespace
                    #dim testValue as %String = $ZSTRIP(segment.GetValueAt(propertyPath), "<>W")                  
                    // $$$LogDebug(pSegment_"()"_":"_pField_"("_j_")."_k_"= "_testValue)

                    // check the testValue against pInputValue
                    S result = ($MATCH(testValue, pInputValue))
                    IF (result) {
                        // $$$LogDebug("Hey! I found what you were looking for.")
                        RETURN result
                    }
                }
                D $I(j)
            }
        }
        D $I(i)
    }
    RETURN result
}

}
