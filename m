Subject: Re: Bitbake fails to create SDK meanwhile can create image
To: poky@lists.yoctoproject.org
From: "Ashish" <ashish.emailaddress@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (182.72.92.62)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Jan 2020 22:30:47 -0800
References: <CAMKF1sr+rUiVggoiGjti9zmKbynY5QL_Rti16aWL5-aRRjqN+w@mail.gmail.com>
In-Reply-To: <CAMKF1sr+rUiVggoiGjti9zmKbynY5QL_Rti16aWL5-aRRjqN+w@mail.gmail.com>
Message-ID: <11660.1578378647223065164@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iIJfDjx8XkUQOyL2ZRXX"

--iIJfDjx8XkUQOyL2ZRXX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem ,

- are you building out of master ? *( Yes)*
- if so did this config work in past ? *( This was the first iteration to =
get the SDK from custom named image file )*
- I wonder if this started after this commit *( NO )

* The said patch commit is not available on my yocto code base

PROMPT:
PROMPT: grep -A2=C2=A0 meta/conf/bitbake.conf -e 'TARGET_VENDOR '
131:TARGET_VENDOR =3D "-oe"
132-TARGET_SYS =3D "${TARGET_ARCH}${TARGET_VENDOR}${@['-' + d.getVar('TARG=
ET_OS'), ''][d.getVar('TARGET_OS') =3D=3D ('' or 'custom')]}"
133-TARGET_PREFIX =3D "${TARGET_SYS}-"
PROMPT:
PROMPT:
PROMPT: grep -A2=C2=A0 meta/conf/bitbake.conf -e 'SDK_VENDOR =3D'
140:SDK_VENDOR =3D "-oesdk"
141-SDK_SYS =3D "${SDK_ARCH}${SDK_VENDOR}${@['-' + d.getVar('SDK_OS'), '']=
[d.getVar('SDK_OS') =3D=3D ('' or 'custom')]}"
142-SDK_PREFIX =3D "${SDK_SYS}-"
PROMPT:
PROMPT:

--iIJfDjx8XkUQOyL2ZRXX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem ,&nbsp;<br /><br />-&nbsp;<span style=3D"white-space: pre-wrap;">ar=
e you building out of master ? <strong>( Yes)</strong> <br />- if so did th=
is config work in past ? <strong>( This was the first iteration to get the =
SDK from custom named image file )</strong></span><br style=3D"white-space:=
 pre-wrap;" /><span style=3D"white-space: pre-wrap;">- I wonder if this sta=
rted after this commit <strong>( NO )<br /><br /></strong></span>The said p=
atch commit is not available on my yocto code base&nbsp;<br /><br />
<div>PROMPT:&nbsp;</div>
<div>PROMPT: grep -A2&nbsp; meta/conf/bitbake.conf -e 'TARGET_VENDOR '</di=
v>
<div>131:TARGET_VENDOR =3D "-oe"</div>
<div>132-TARGET_SYS =3D "${TARGET_ARCH}${TARGET_VENDOR}${@['-' + d.getVar(=
'TARGET_OS'), ''][d.getVar('TARGET_OS') =3D=3D ('' or 'custom')]}"</div>
<div>133-TARGET_PREFIX =3D "${TARGET_SYS}-"</div>
<div>PROMPT:</div>
<div>PROMPT:&nbsp;</div>
<div>PROMPT: grep -A2&nbsp; meta/conf/bitbake.conf -e 'SDK_VENDOR =3D'</di=
v>
<div>140:SDK_VENDOR =3D "-oesdk"</div>
<div>141-SDK_SYS =3D "${SDK_ARCH}${SDK_VENDOR}${@['-' + d.getVar('SDK_OS')=
, ''][d.getVar('SDK_OS') =3D=3D ('' or 'custom')]}"</div>
<div>142-SDK_PREFIX =3D "${SDK_SYS}-"</div>
<div>PROMPT:</div>
<div>PROMPT:&nbsp;</div>
<div><br /><br /></div>

--iIJfDjx8XkUQOyL2ZRXX--
