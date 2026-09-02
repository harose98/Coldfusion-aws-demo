<cfcontent type="application/json">

<cfset response = {
    "status": "UP",
    "application": "ColdFusion AWS Demo",
    "timestamp": dateTimeFormat(
        now(),
        "yyyy-mm-dd HH:nn:ss"
    )
}>

<cfoutput>
#serializeJSON(response)#
</cfoutput>