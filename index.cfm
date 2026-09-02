<!DOCTYPE html>

<html>
<head>
    <title>ColdFusion AWS Demo</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 40px auto;
        }

        .card {
            border: 1px solid #ccc;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }

        input {
            padding: 8px;
        }

        button {
            padding: 8px 16px;
        }
    </style>
</head>

<body>

    <h1>ColdFusion AWS Demo</h1>

    <div class="card">

        <h2>Application Server</h2>

        <cfoutput>
            <p>
                Server Time:
                #dateTimeFormat(now(), "yyyy-mm-dd HH:nn:ss")#
            </p>

            <p>
                ColdFusion Version:
                #server.coldfusion.productversion#
            </p>

            <p>
                Server Name:
                #cgi.server_name#
            </p>
        </cfoutput>

    </div>

    <div class="card">

        <h2>ColdFusion Form Demo</h2>

        <form method="post">

            <input
                type="text"
                name="username"
                placeholder="Enter your name"
            >

            <button type="submit">
                Submit
            </button>

        </form>

        <cfif structKeyExists(form, "username")
            AND len(trim(form.username))>

            <cfoutput>
                <p>
                    Hello #encodeForHTML(form.username)#!
                    Your request was processed by ColdFusion.
                </p>
            </cfoutput>

        </cfif>

    </div>

    <p>
        <a href="health.cfm">
            View Application Health
        </a>
    </p>

</body>
</html>