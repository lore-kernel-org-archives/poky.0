Return-Path: <mdavis@planetaryresources.com>
Received: from smtp107.iad3a.emailsrvr.com (smtp107.iad3a.emailsrvr.com
	[173.203.187.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9260BE017BC
	for <poky@yoctoproject.org>; Wed, 30 Oct 2013 19:17:57 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp6.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	2699E1A80B0
	for <poky@yoctoproject.org>; Wed, 30 Oct 2013 22:17:56 -0400 (EDT)
X-Virus-Scanned: OK
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp6.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	12FAC1A8094
	for <poky@yoctoproject.org>; Wed, 30 Oct 2013 22:17:56 -0400 (EDT)
Received: from IAD2MBX05.mex02.mlsrvr.com ([172.23.11.33]) by
	IAD2HUB04.mex02.mlsrvr.com ([172.23.10.68]) with mapi; Wed, 30 Oct 2013
	22:17:55 -0400
From: Michael Davis <mdavis@planetaryresources.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 30 Oct 2013 22:17:56 -0400
Thread-Topic: Defconfig mods, Zynq-zx3 netmodule
Thread-Index: Ac7V3vciPHL1ZTMRT4iOowqDsowKtw==
Message-ID: <7BDD69127112414F90CF3FED4711BF150D15B25C51@IAD2MBX05.mex02.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Defconfig mods, Zynq-zx3 netmodule
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
X-List-Received-Date: Thu, 31 Oct 2013 02:17:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7BDD69127112414F90CF3FED4711BF150D15B25C51IAD2MBX05mex0_"

--_000_7BDD69127112414F90CF3FED4711BF150D15B25C51IAD2MBX05mex0_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi David,

I am currently using the netmodule meta layer in yocto to build a kernel an=
d ramdisk for my zynq zx3 on a starter board.  I need to enable kernel func=
tion tracing and a few other configurations in my build.  I need help on th=
e correct way to enable kernel configurations (specifically I need CONFIG_F=
TRACE and CONFIG_PROFILING) using the meta layer.

 My attempts have been based on the KERNEL_DEFCONFIG_zynq_zx3_starter varia=
ble in recipes-kernel/linux/linux-zynq-git.bb.  I have tried specifying my =
own patch to create this file as well as pointing it to my own modified cop=
y of the defconfig created by the patches in meta-netmodule.  After buildin=
g, the modified defconfig file with the flags shows up in my work directory=
 as .config but no changes ever appear in /proc/config.gz after booting my =
image.  I am able to verify that the 'make zynq_zx3_defconfig' step was run=
.  I wonder if the steps to do this are different here using the linux-zynq=
 recipe as opposed to linux-yocto.  Any input on the correct way to do this=
 would be greatly appreciated.

Thanks for the help in advance.

-Mike

--_000_7BDD69127112414F90CF3FED4711BF150D15B25C51IAD2MBX05mex0_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi David,<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am=
 currently using the netmodule meta layer in yocto to build a kernel and ra=
mdisk for my zynq zx3 on a starter board.&nbsp; I need to enable kernel fun=
ction tracing and a few other configurations in my build.&nbsp; I need help=
 on the correct way to enable kernel configurations (specifically I need CO=
NFIG_FTRACE and CONFIG_PROFILING) using the meta layer.&nbsp; <br><br>&nbsp=
;My attempts have been based on the KERNEL_DEFCONFIG_zynq_zx3_starter varia=
ble in recipes-kernel/linux/linux-zynq-git.bb.&nbsp; I have tried specifyin=
g my own patch to create this file as well as pointing it to my own modifie=
d copy of the defconfig created by the patches in meta-netmodule.&nbsp; Aft=
er building, the modified defconfig file with the flags shows up in my work=
 directory as .config but no changes ever appear in /proc/config.gz after b=
ooting my image.&nbsp; I am able to verify that the &#8216;make zynq_zx3_de=
fconfig&#8217; step was run.&nbsp; I wonder if the steps to do this are dif=
ferent here using the linux-zynq recipe as opposed to linux-yocto.&nbsp; An=
y input on the correct way to do this would be greatly appreciated.&nbsp; <=
br><br>Thanks for the help in advance.<o:p></o:p></p><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-Mike <o:p></o:p></p></div></body>=
</html>=

--_000_7BDD69127112414F90CF3FED4711BF150D15B25C51IAD2MBX05mex0_--
