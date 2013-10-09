Return-Path: <mdavis@planetaryresources.com>
Received: from smtp91.iad3a.emailsrvr.com (smtp91.iad3a.emailsrvr.com
	[173.203.187.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74174E011C5
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 13:20:46 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp12.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	0D979F0132
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 16:20:46 -0400 (EDT)
X-Virus-Scanned: OK
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp12.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	EE888F0118
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 16:20:45 -0400 (EDT)
Received: from IAD2MBX05.mex02.mlsrvr.com ([172.23.11.33]) by
	iad2hub12.mex02.mlsrvr.com ([172.23.10.76]) with mapi; Wed, 9 Oct 2013
	16:20:45 -0400
From: Michael Davis <mdavis@planetaryresources.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 9 Oct 2013 16:20:46 -0400
Thread-Topic: Zeromq recipe
Thread-Index: Ac7FK/3QKyhZZ4LFRr2dpNOdYIu4Dg==
Message-ID: <7BDD69127112414F90CF3FED4711BF150D15A47D1C@IAD2MBX05.mex02.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Zeromq recipe
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
X-List-Received-Date: Wed, 09 Oct 2013 20:20:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7BDD69127112414F90CF3FED4711BF150D15A47D1CIAD2MBX05mex0_"

--_000_7BDD69127112414F90CF3FED4711BF150D15A47D1CIAD2MBX05mex0_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,  I would like to cross-compile zeromq-3.2.3 source (http://downlo=
ad.zeromq.org/) into my poky build for zynq zx3.  I figured that the best w=
ay would be to create a new layer with a bb recipe that can find the source=
.  I am trying to use something like this recipe: https://github.com/openem=
bedded/openembedded/blob/b8e90091aca8777092aa410fbfbb5c5d8cc7cbcb/recipes/z=
eromq/zeromq_2.1.6.bb

I've created a new layer with a .bb file like this and a simple layer.conf =
to find it.  I've also added the layer to bblayers.conf.  Poky doesn't seem=
 to want to build the source though.  It recognizes the layer and parses th=
e bb file but never builds the package or integrates it to my ramdisk image=
.  This is my first try at making a bb recipe, so perhaps I am just missing=
 something important.  Should I be specifying compile and install steps oth=
er than the default steps?  Any info on creating layers and recipes would b=
e greatly appreciated.  Thank you!

-Mike

--_000_7BDD69127112414F90CF3FED4711BF150D15A47D1CIAD2MBX05mex0_
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi there,&nbsp; =
I would like to cross-compile zeromq-3.2.3 source (<a href=3D"http://downlo=
ad.zeromq.org/">http://download.zeromq.org/</a>) into my poky build for zyn=
q zx3.&nbsp; I figured that the best way would be to create a new layer wit=
h a bb recipe that can find the source.&nbsp; I am trying to use something =
like this recipe: <a href=3D"https://github.com/openembedded/openembedded/b=
lob/b8e90091aca8777092aa410fbfbb5c5d8cc7cbcb/recipes/zeromq/zeromq_2.1.6.bb=
">https://github.com/openembedded/openembedded/blob/b8e90091aca8777092aa410=
fbfbb5c5d8cc7cbcb/recipes/zeromq/zeromq_2.1.6.bb</a><o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;ve created a=
 new layer with a .bb file like this and a simple layer.conf to find it.&nb=
sp; I&#8217;ve also added the layer to bblayers.conf.&nbsp; Poky doesn&#821=
7;t seem to want to build the source though.&nbsp; It recognizes the layer =
and parses the bb file but never builds the package or integrates it to my =
ramdisk image.&nbsp; This is my first try at making a bb recipe, so perhaps=
 I am just missing something important.&nbsp; Should I be specifying compil=
e and install steps other than the default steps?&nbsp; Any info on creatin=
g layers and recipes would be greatly appreciated.&nbsp; Thank you!<o:p></o=
:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-Mike=
<o:p></o:p></p></div></body></html>=

--_000_7BDD69127112414F90CF3FED4711BF150D15A47D1CIAD2MBX05mex0_--
