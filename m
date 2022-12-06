Subject: Re: stdout overwriting logger output for service units
To: poky@lists.yoctoproject.org
From: jcmalek@lakeheadu.ca
X-Originating-Location: Montreal, Quebec, CA (24.114.84.50)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Dec 2022 12:38:30 -0800
References: <CAMKF1sozCP6bcFdtQzPFugatp4wmrO8pS+_Kv+OAWiBX0OQq8Q@mail.gmail.com>
In-Reply-To: <CAMKF1sozCP6bcFdtQzPFugatp4wmrO8pS+_Kv+OAWiBX0OQq8Q@mail.gmail.com>
Message-ID: <5232.1670359110085721504@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XfGvKqljmH7Wsjq5Up7Y"

--XfGvKqljmH7Wsjq5Up7Y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks but no luck when I tried:

[Service]
StandardError=3Djournal
StandardOutput=3Djournal

Or:

[Service]
StandardError=3Dkmsg
StandardOutput=3Dkmsg

I still have the same problem in both of these cases.

--XfGvKqljmH7Wsjq5Up7Y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks but no luck when I tried:</p>
<p><span style=3D"white-space: pre-wrap;">[Service]</span><br style=3D"whit=
e-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">StandardError=
=3Djournal</span><br style=3D"white-space: pre-wrap;" /><span style=3D"whit=
e-space: pre-wrap;">StandardOutput=3Djournal</span></p>
<p><span style=3D"white-space: pre-wrap;">Or:</span></p>
<p><span style=3D"white-space: pre-wrap;">[Service]</span><br style=3D"whit=
e-space: pre-wrap;" /><span style=3D"white-space: pre-wrap;">StandardError=
=3Dkmsg</span><br style=3D"white-space: pre-wrap;" /><span style=3D"white-s=
pace: pre-wrap;">StandardOutput=3Dkmsg</span><span style=3D"white-space: pr=
e-wrap;"></span></p>
<p>&nbsp;</p>
<p>I still have the same problem in both of these cases.</p>
<p>&nbsp;</p>

--XfGvKqljmH7Wsjq5Up7Y--
