Return-Path: <mdavis@planetaryresources.com>
Received: from smtp75.iad3a.emailsrvr.com (smtp75.iad3a.emailsrvr.com
	[173.203.187.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6E5E016FA
	for <poky@yoctoproject.org>; Mon, 14 Oct 2013 19:03:59 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp10.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	158EEE809B
	for <poky@yoctoproject.org>; Mon, 14 Oct 2013 22:03:59 -0400 (EDT)
X-Virus-Scanned: OK
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp10.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	04818E8085
	for <poky@yoctoproject.org>; Mon, 14 Oct 2013 22:03:59 -0400 (EDT)
Received: from IAD2MBX05.mex02.mlsrvr.com ([172.23.11.33]) by
	IAD2HUB02.mex02.mlsrvr.com ([172.23.10.66]) with mapi; Mon, 14 Oct 2013
	22:03:58 -0400
From: Michael Davis <mdavis@planetaryresources.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 14 Oct 2013 22:03:58 -0400
Thread-Topic: Specify Device Tree
Thread-Index: Ac7JSk64ysjZfeMtSf2LNVjjT0UtkA==
Message-ID: <7BDD69127112414F90CF3FED4711BF150D15A48118@IAD2MBX05.mex02.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Specify Device Tree
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
X-List-Received-Date: Tue, 15 Oct 2013 02:04:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7BDD69127112414F90CF3FED4711BF150D15A48118IAD2MBX05mex0_"

--_000_7BDD69127112414F90CF3FED4711BF150D15A48118IAD2MBX05mex0_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,

I am using poky to develop a distro for my zynq-zx23 and I am looking to in=
corporate my own version of the device tree .dts into my build.  Specifical=
ly I need to add an entry for the second i2c device that is on my board.  I=
 think I know how to add this but what is the best way to get poky to use t=
he .dts file that I have?  I have seen the KERNEL_DEVICETREE variable used =
but I am unsure of where to assign this or generally how to use it.  Is it =
easier to do this with a recipe?  Thank you

-Mike

--_000_7BDD69127112414F90CF3FED4711BF150D15A48118IAD2MBX05mex0_
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi there,<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am=
 using poky to develop a distro for my zynq-zx23 and I am looking to incorp=
orate my own version of the device tree .dts into my build.&nbsp; Specifica=
lly I need to add an entry for the second i2c device that is on my board.&n=
bsp; I think I know how to add this but what is the best way to get poky to=
 use the .dts file that I have?&nbsp; I have seen the KERNEL_DEVICETREE var=
iable used but I am unsure of where to assign this or generally how to use =
it.&nbsp; Is it easier to do this with a recipe?&nbsp; Thank you<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-Mike<o:=
p></o:p></p></div></body></html>=

--_000_7BDD69127112414F90CF3FED4711BF150D15A48118IAD2MBX05mex0_--
