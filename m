Return-Path: <Daniel.Klauer@gin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B80A1E00D20; Thu,  9 Jun 2016 00:36:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.223.36.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from good-out-16.clustermail.de (good-out-16.clustermail.de
	[212.223.36.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ACAAE00C1F
	for <poky@yoctoproject.org>; Thu,  9 Jun 2016 00:36:36 -0700 (PDT)
Received: from frontend-04 ([10.0.0.4] helo=frontend.clustermail.de)
	by smtpout-04.clustermail.de with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.84_2)
	(envelope-from <Daniel.Klauer@gin.de>)
	id 1bAuVx-0004y1-Ay; Thu, 09 Jun 2016 09:36:34 +0200
Received: from [217.6.33.234] (helo=Win2012-02.gin-domain.local)
	by frontend.clustermail.de with esmtpa (Exim 4.84_2)
	(envelope-from <Daniel.Klauer@gin.de>)
	id 1bAuVx-0000RN-06; Thu, 09 Jun 2016 09:36:29 +0200
Received: from Win2012-02.gin-domain.local (192.168.1.12) by
	Win2012-02.gin-domain.local (192.168.1.12) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 9 Jun 2016 09:36:27 +0200
Received: from Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90]) by
	Win2012-02.gin-domain.local ([fe80::3db4:55fd:d76e:9d90%12]) with mapi
	id 15.00.1130.005; Thu, 9 Jun 2016 09:36:27 +0200
From: "Klauer, Daniel" <Daniel.Klauer@gin.de>
To: Jean-Fabien Arnaud <jean-fabien.arnaud@src-solution.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Cross compilation - Could not find lua libs
Thread-Index: AQHRwZJD92mmd5hTVUKJPt7dGrI/Jp/gvW+C
Date: Thu, 9 Jun 2016 07:36:27 +0000
Message-ID: <1465457787001.74413@gin.de>
References: <4B09C702-BFE0-4848-8F40-D0AA14FCB5E1@src-solution.com>
In-Reply-To: <4B09C702-BFE0-4848-8F40-D0AA14FCB5E1@src-solution.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.1.219]
x-brightmail-tracker: H4sIAAAAAAAAC+NgFvrIqsTGxXJgBSOPbrVMZLjBw4Z3b/gtJn27wWjR09/H4sAUwBDFmpmXlF+RwJpx7c9y9oLnRhWtJxcwNzAuMOhi5OIQEtjNKDFr3xlGCOcEo8SZt3dZuhg5OZgFTCWufG2EshUlLtxrALPZBHQlzrW/ZwWxRQTyJW5NucYMYgsL2EucuTyLDSLuIPHz+Hl2CNtI4tP2u2BxCQEdib+LGsF6WQRUJPavWQw2k1dAQ+LhnF9g9UICzhK/Vr9k6mLk4OAUcJHYcScKJMwoICvR2fCOCeIccYlbT+YzQYwUkFiy5zwzhK0k0Xv7HVTcSGLJvUnMEOMFJU7OfMICETeT2PtgCVSNrsTVf1ugTguUWLxlFivIWgmg16++D4YIG0i8W/sZqtVYYuXG/4wQtq3EnhkTmSDKnSXm3aiHCDtJvOl4ywpha0tsf7WPFebxTddWQY2Rl/h/7z7LBEaNWUjhPAspnGcheXIWkgcWMLKsYpQOz8wzMjA00jUw0kvPzNNNyc9NzMzTy8lPTszZxAhNDjsYH312PcQoycGkJMp7RyoyXIgvKT+lMiOxOCO+qDQntfgQowQHj5IIL5c0UI63uCAxtzgzHSYlw8GhJMHrA9ImWJSanlqRlplTkloEkT7FKCklzmsOkhQA6csozYPLXWIUlRLmTZMEyvEUpBblZpZAxG8xCnM8ZBJiycvPS5UCOpEBCDQYXzGKczAqCfMeBbmBJzOvBO6EV0DXMQFdt/xIOMh1JYkIKakGRlFFvYVpjDZLr9m9qVxtb3Bm1uV5z3RVZH9Ey689NOFlgr6V87Gq4su7/540W9utOnfx7HPZffwXU1wkfXtYRO2/71kvuF15ca8Va07hoSM97odLOP59afV2EVxa4xqclX+u7sTjkiNpNz8/0Kv5se5+RQqDdUbo7iPcF//JTMgq6p31T4OfSYmlOCPRUIu5qDgRAAHtb7OEAwAA
MIME-Version: 1.0
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer: 0000001
X-CTCH-Spam: Unknown
X-CTCH-VOD: Unknown
X-CTCH-Flags: 0
X-CTCH-RefID: str=0001.0A0C0201.57591C7C.01FB, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-Score: 0.000
X-CTCH-ScoreCust: 0.000
X-CTCH-Rules: 
Subject: Re: Cross compilation - Could not find lua libs
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
X-List-Received-Date: Thu, 09 Jun 2016 07:36:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_146545778700174413ginde_"

--_000_146545778700174413ginde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


in my experience it was also necessary to specify things like CMAKE_FIND_RO=
OT_PATH, otherwise cmake didn't find libraries in the poky SDK sysroot (als=
o see cmake cross-compiling documentation). Here's what I've been using for=
 cross-compiling with a poky SDK installed to /opt/poky/<version>:


source /opt/poky/<version>/environment-setup-*

cmake <srcdir> \
  -DCMAKE_SYSTEM_NAME=3DLinux \
  -DCMAKE_SYSTEM_VERSION=3D1 \
  -DCMAKE_FIND_ROOT_PATH=3D/opt/poky/<version>/sysroots/<target> \
  -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DNEVER \
  -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=3DONLY \
  -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=3DONLY


Another important detail is that the poky SDK must include all the *-dev pa=
ckages needed.


Regards,

Daniel

--_000_146545778700174413ginde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} @font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:Calibri}=0A=
a:link, span.MsoHyperlink=0A=
	{color:#0563C1;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:#954F72;=0A=
	text-decoration:underline}=0A=
span.EmailStyle17=0A=
	{font-family:Calibri;=0A=
	color:windowtext}=0A=
span.msoIns=0A=
	{text-decoration:underline;=0A=
	color:teal}=0A=
.MsoChpDefault=0A=
	{font-family:Calibri}=0A=
@page WordSection1=0A=
	{margin:70.85pt 70.85pt 70.85pt 70.85pt}=0A=
div.WordSection1=0A=
	{}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Consolas,monospace;">
<p>Hello,</p>
<p><br>
</p>
<p>in my experience it was also necessary to specify things like CMAKE_FIND=
_ROOT_PATH, otherwise cmake didn't find libraries in the poky SDK sysroot (=
also see cmake cross-compiling documentation). Here's what I've been using =
for cross-compiling with a poky
 SDK installed to /opt/poky/&lt;version&gt;:</p>
<p><br>
</p>
<p>source /opt/poky/&lt;version&gt;/environment-setup-*</p>
<p>cmake &lt;srcdir&gt; \<br>
&nbsp; -DCMAKE_SYSTEM_NAME=3DLinux \<br>
&nbsp; -DCMAKE_SYSTEM_VERSION=3D1 \<br>
&nbsp; -DCMAKE_FIND_ROOT_PATH=3D/opt/poky/&lt;version&gt;/sysroots/&lt;targ=
et&gt; \<br>
&nbsp; -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=3DNEVER \<br>
&nbsp; -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=3DONLY \<br>
&nbsp; -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=3DONLY<br>
</p>
<p><br>
</p>
<p>Another important detail is that the&nbsp;poky SDK must include all the =
*-dev packages needed.<br>
</p>
<p><br>
</p>
<p>Regards,<br>
</p>
<p>Daniel<br>
</p>
</body>
</html>

--_000_146545778700174413ginde_--
