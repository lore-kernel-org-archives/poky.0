Return-Path: <eric.di-schiena@thalesgroup.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7753AE00E9B; Tue, 20 Feb 2018 00:03:12 -0800 (PST)
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
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com
	[192.93.158.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA5DE00E34
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 00:03:10 -0800 (PST)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 3zltQl5HVmz6ly
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 09:03:11 +0100 (CET)
From: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 20 Feb 2018 09:03:07 +0100
Thread-Topic: [poky] Build rpi-basic-image Pi3 with kernel-devsrc error :
	conflicting requests nothing provides /bin/awk needed by
	kernel-devsrc-1.0-r0.raspberrypi3 
Thread-Index: AdOqIJUaGF57Wvc5RnqbaKgboWUmtg==
Message-ID: <967D67AEC428424E83B5D1DABFB91AA3863AB01EE3@THSONEA01CMS13P.one.grp>
Accept-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR
x-pmwin-version: 3.1.3.0, Antivirus-Engine: 3.70.2, Antivirus-Data: 5.48
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
X-List-Received-Date: Tue, 20 Feb 2018 08:03:12 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_967D67AEC428424E83B5D1DABFB91AA3863AB01EE3THSONEA01CMS1_"

--_000_967D67AEC428424E83B5D1DABFB91AA3863AB01EE3THSONEA01CMS1_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can someone explain how to implement previous proposition to correct my ini=
tial issue ?



Proposition is based on:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1c=
dd8fa08217e702b57cf96e9030db52b2

Regards

--_000_967D67AEC428424E83B5D1DABFB91AA3863AB01EE3THSONEA01CMS1_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Texte brut Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.TextebrutCar
	{mso-style-name:"Texte brut Car";
	mso-style-priority:99;
	mso-style-link:"Texte brut";
	font-family:"Calibri","sans-serif";}
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
=3Dpurple><div class=3DWordSection1><p class=3DMsoPlainText><span lang=3DEN=
-US>Can someone explain how to implement previous proposition to correct my=
 initial issue ?<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3D=
EN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-U=
S>Proposition is based on:<o:p></o:p></span></p><p class=3DMsoPlainText><sp=
an lang=3DEN-US><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-=
yocto/commit/?id=3D8af11c1cdd8fa08217e702b57cf96e9030db52b2">http://git.yoc=
toproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1cdd8fa08217e702=
b57cf96e9030db52b2</a><o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>Regards<o:p></o:p></span></p></div></body></html>=

--_000_967D67AEC428424E83B5D1DABFB91AA3863AB01EE3THSONEA01CMS1_--
