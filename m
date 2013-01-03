Return-Path: <Nasir_Ali@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A26FE011C0
	for <poky@yoctoproject.org>; Thu,  3 Jan 2013 05:06:32 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1TqkVD-00002B-Re from Nasir_Ali@mentor.com 
	for poky@yoctoproject.org; Thu, 03 Jan 2013 05:06:31 -0800
Received: from SVR-IES-FEM-04.mgc.mentorg.com ([137.202.0.110]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Thu, 3 Jan 2013 05:06:31 -0800
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.171]) by
	SVR-IES-FEM-04.mgc.mentorg.com ([137.202.0.110]) with mapi id
	14.01.0289.001; Thu, 3 Jan 2013 13:06:29 +0000
From: "Ali, Nasir" <Nasir_Ali@mentor.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Pandaboard booting with Yocto with LTTng support
Thread-Index: Ac3psyVKAW168FJ+SHiCEzClZ9dy3Q==
Date: Thu, 3 Jan 2013 13:06:29 +0000
Message-ID: <53B11A2698485743AAA262E995E2C3F1915F0C3C@EU-MBX-01.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.68]
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Jan 2013 13:06:31.0736 (UTC)
	FILETIME=[2676F380:01CDE9B3]
Subject: Pandaboard booting with Yocto with LTTng support
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jan 2013 13:06:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_53B11A2698485743AAA262E995E2C3F1915F0C3CEUMBX01mgcmento_"

--_000_53B11A2698485743AAA262E995E2C3F1915F0C3CEUMBX01mgcmento_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I need to have LTTng kernel tracer support in Panda-board. I have successfu=
lly built Yocto with LTTng support for Pandaboard and also successfully boo=
ted with these images but LTTng kernel tracer doesn't work for me. I have b=
uilt with the following steps:

  1.  Pull the Yocto sources from git: git clone --branch <release_name> gi=
t://git.yoctoproject.org/poky<https://webmail-eu.mentor.com/owa/UrlBlockedE=
rror.aspx>
  2.  Pull meta-ti layer from git:git clone --branch <release_name> git://g=
it.yoctoproject.org/meta-ti<https://webmail-eu.mentor.com/owa/UrlBlockedErr=
or.aspx>
  3.  Run the environment setup script (oe-init-build-env)
  4.  Add the machine name (MACHINE ?=3D "pandaboard") in local.conf file
  5.  Add a line (BBMASK =3D "meta-ti/recipes-misc") at the end in local.co=
nf file for resolving meta-ti dependencies
  6.  Add a line (IMAGE_INSTALL_append =3D " dropbear") at the end in local=
.conf file for 'ssh' support if it required.
  7.  Add a line (CORE_IMAGE_EXTRA_INSTALL =3D "lttng2-ust lttng-modules lt=
tng-tools") at the end in local.conf file for LTTng2.
  8.  Add meta-ti layer path in 'bblayers.conf' file
  9.  Start building with bitbake core-image-minimal


Then booted successfully but LTTng kernel tracer doesn't work.


root@pandaboard:~# lttng list -k
Spawning a session daemon
FATAL: Module lttng-tracer not found.
Error: Unable to load module lttng-tracer
Error: Unable to remove module lttng-tracer
Warning: No kernel tracer available
FATAL: Module lttng-tracer not found.
Error: Unable to load module lttng-tracer
Error: Unable to remove module lttng-tracer
Warning: No kernel tracer available
Error: Unable to list kernel events

Could you please anybody guide me about this issue.

Best Regards,
Nasir

--_000_53B11A2698485743AAA262E995E2C3F1915F0C3CEUMBX01mgcmento_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi,<br>
<br>
I need to have LTTng kernel tracer support in Panda-board. I have successfu=
lly built Yocto with LTTng support for Pandaboard and also successfully boo=
ted with these images but LTTng kernel tracer doesn't work for me. I have b=
uilt with the following steps:<br>
<ol style=3D"font-family:Tahoma; font-size:10pt">
<li>Pull the Yocto sources from git: git clone --branch &lt;release_name&gt=
; <a href=3D"https://webmail-eu.mentor.com/owa/UrlBlockedError.aspx" rel=3D=
"nofollow" target=3D"_blank">
git://git.yoctoproject.org/poky</a></li><li>Pull meta-ti layer from git:git=
 clone --branch &lt;release_name&gt; <a href=3D"https://webmail-eu.mentor.c=
om/owa/UrlBlockedError.aspx" rel=3D"nofollow" target=3D"_blank">
git://git.yoctoproject.org/meta-ti</a></li><li>Run the environment setup sc=
ript (oe-init-build-env)</li><li>Add the machine name (MACHINE ?=3D &quot;p=
andaboard&quot;) in local.conf file</li><li>Add a line (BBMASK =3D &quot;me=
ta-ti/recipes-misc&quot;) at the end in local.conf file for resolving meta-=
ti dependencies</li><li>Add a line (IMAGE_INSTALL_append =3D &quot; dropbea=
r&quot;) at the end in local.conf file for 'ssh' support if it required.</l=
i><li>Add a line (CORE_IMAGE_EXTRA_INSTALL =3D &quot;lttng2-ust lttng-modul=
es lttng-tools&quot;) at the end in local.conf file for LTTng2.</li><li>Add=
 meta-ti layer path in 'bblayers.conf' file</li><li>Start building with bit=
bake <code class=3D"java plain">core-image-minimal</code></li></ol>
<p><br>
</p>
<p><code>Then booted successfully but LTTng kernel tracer doesn't work.<br>
</code></p>
<p><br>
<code></code></p>
<div class=3D"line number1 index0 alt2"><code class=3D"java plain">root</co=
de><code class=3D"java color1">@pandaboard</code><code class=3D"java plain"=
>:~# lttng list -k
</code></div>
<div class=3D"line number2 index1 alt1"><code class=3D"java plain">Spawning=
 a session daemon
</code></div>
<div class=3D"line number3 index2 alt2"><code class=3D"java plain">FATAL: M=
odule lttng-tracer not found.
</code></div>
<div class=3D"line number4 index3 alt1"><code class=3D"java plain">Error: U=
nable to load module lttng-tracer
</code></div>
<div class=3D"line number5 index4 alt2"><code class=3D"java plain">Error: U=
nable to remove module lttng-tracer
</code></div>
<div class=3D"line number6 index5 alt1"><code class=3D"java plain">Warning:=
 No kernel tracer available
</code></div>
<div class=3D"line number7 index6 alt2"><code class=3D"java plain">FATAL: M=
odule lttng-tracer not found.
</code></div>
<div class=3D"line number8 index7 alt1"><code class=3D"java plain">Error: U=
nable to load module lttng-tracer
</code></div>
<div class=3D"line number9 index8 alt2"><code class=3D"java plain">Error: U=
nable to remove module lttng-tracer
</code></div>
<div class=3D"line number10 index9 alt1"><code class=3D"java plain">Warning=
: No kernel tracer available
</code></div>
<code class=3D"java plain">Error: Unable to list kernel events<br>
<br>
Could you please anybody guide me about this issue.<br>
<br>
Best Regards,<br>
Nasir</code></div>
</body>
</html>

--_000_53B11A2698485743AAA262E995E2C3F1915F0C3CEUMBX01mgcmento_--
