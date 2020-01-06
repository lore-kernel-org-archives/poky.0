Subject: Re: Bitbake fails to create SDK meanwhile can create image
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (182.72.92.62)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Jan 2020 02:11:29 -0800
References: <WQx6.1577962852433588681.umzP@lists.yoctoproject.org>
In-Reply-To: <WQx6.1577962852433588681.umzP@lists.yoctoproject.org>
Message-ID: <28695.1578305489262395810@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YfFMGqCL7wmm128IsgJQ"

--YfFMGqCL7wmm128IsgJQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

( Updating the thread just in case if any one else face similar issue )

1) Changing the distro file from "build-config-policy-basic" to "buildpoli=
cy" this was based on below pointer from error log
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... *Invalid configuration `x86_64-build-config=
-policy-basicsdk-linux': more than four components*

2) Clean and build binutils package . Build the image .

3) Generate the SDK again , there is no error mentioned above .

Ashish .

--YfFMGqCL7wmm128IsgJQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,&nbsp;<br /><br />( Updating the thread just in case if any one els=
e face similar issue )&nbsp;<br /><br />1) Changing the distro file from "b=
uild-config-policy-basic" to "buildpolicy" this was based on below pointer =
from error log<br />
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; checking build system type... x86_=
64-pc-linux-gnu</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; checking host system type... x86_6=
4-pc-linux-gnu</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; checking target system type... <sp=
an style=3D"text-decoration: underline;"><strong>Invalid configuration `x86=
_64-build-config-policy-basicsdk-linux': more than four components</strong>=
</span></div>
<br />2) Clean and build binutils package . Build the image .<br /><br />3=
) Generate the SDK again , there is no error mentioned above .&nbsp;<br />&=
nbsp;<br />Ashish .&nbsp;

--YfFMGqCL7wmm128IsgJQ--
