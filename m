Return-Path: <eric.di-schiena@thalesgroup.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40C72E00E13; Mon, 12 Feb 2018 08:45:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.93.158.29 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 137 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Feb 2018 08:45:39 PST
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com
	[192.93.158.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5213E00DD7
	for <poky@yoctoproject.org>; Mon, 12 Feb 2018 08:45:39 -0800 (PST)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 3zgBLf1wVtz3ly
	for <poky@yoctoproject.org>; Mon, 12 Feb 2018 17:43:22 +0100 (CET)
From: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 12 Feb 2018 17:43:20 +0100
Thread-Topic: Build rpi-basic-image Pi3 with kernel-devsrc error :
	conflicting requests nothing provides /bin/awk needed by
	kernel-devsrc-1.0-r0.raspberrypi3
Thread-Index: AdOkIJHQEAEXnud6Qom9zKApRysNEQ==
Message-ID: <967D67AEC428424E83B5D1DABFB91AA3863A93FFF0@THSONEA01CMS13P.one.grp>
Accept-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR
x-pmwin-version: 3.1.3.0, Antivirus-Engine: 3.70.2, Antivirus-Data: 5.47
MIME-Version: 1.0
Subject: Build rpi-basic-image Pi3 with kernel-devsrc error : conflicting requests nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3
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
X-List-Received-Date: Mon, 12 Feb 2018 16:45:41 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_967D67AEC428424E83B5D1DABFB91AA3863A93FFF0THSONEA01CMS1_"

--_000_967D67AEC428424E83B5D1DABFB91AA3863A93FFF0THSONEA01CMS1_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I'have tried to generate rpi-basic-image for a Pi3 using Rocko branch of po=
ky.
I succeeded doing it but when I added the following variable in my conf/loc=
al.conf:


TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"

Then I got following issue:

Problem: conflicting requests
  - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3

My host is an Ubuntu 14.04LTS (under VirtualBox)

I spent quite a lot of time to found out what happens by googling  but unfo=
rtunately I did not find a solution.
Can anybody help me ?

Regards



--_000_967D67AEC428424E83B5D1DABFB91AA3863A93FFF0THSONEA01CMS1_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"Pr\00E9format\00E9 HTML Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PrformatHTMLCar
	{mso-style-name:"Pr\00E9format\00E9 HTML Car";
	mso-style-priority:99;
	mso-style-link:"Pr\00E9format\00E9 HTML";
	font-family:"Courier New";
	color:black;
	mso-fareast-language:FR;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
>Hello,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I&#821=
7;have tried to generate rpi-basic-image for a Pi3 using Rocko branch of po=
ky.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I succeede=
d doing it but when I added the following variable in my conf/local.conf:<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:=
p></span></p><pre style=3D'margin-left:35.4pt'><span lang=3DEN-US>TOOLCHAIN=
_TARGET_TASK_append =3D &quot; kernel-devsrc&quot;<o:p></o:p></span></pre><=
p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>Then I got following issue:<o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'margin-left:35.4pt'><span lang=3DEN-US =
style=3D'color:red'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=
=3D'margin-left:35.4pt'><span lang=3DEN-US style=3D'color:red'>Problem: con=
flicting requests<o:p></o:p></span></p><p class=3DMsoNormal style=3D'margin=
-left:35.4pt'><span lang=3DEN-US style=3D'color:red'>&nbsp; - nothing provi=
des /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>My host is an Ubuntu 14.04LTS (under Vi=
rtualBox)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I spent qui=
te a lot of time to found out what happens by googling &nbsp;but unfortunat=
ely I did not find a solution.<o:p></o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>Can anybody help me ?<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US>Regards<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p></div></body></html>=

--_000_967D67AEC428424E83B5D1DABFB91AA3863A93FFF0THSONEA01CMS1_--
