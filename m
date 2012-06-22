Return-Path: <Martin.Fletzer@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E2AE01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 01:38:42 -0700 (PDT)
Received: from Mailbox.arc.local ([169.254.1.253]) by S0HCN1.arc.local ([::1])
	with mapi; Fri, 22 Jun 2012 10:38:40 +0200
From: Fletzer Martin <Martin.Fletzer@ait.ac.at>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 22 Jun 2012 10:38:38 +0200
Thread-Topic: Installing shared libraries for custom application
Thread-Index: Ac1QUc1s7qUIa5UIRYe0EKc8LY0+Fw==
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: de-DE, en-US
MIME-Version: 1.0
Subject: Installing shared libraries for custom application
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Jun 2012 08:38:43 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9F69795E29C890408AC2DAF646C89BB379D8AB96ACMAILBOXarcloc_"

--_000_9F69795E29C890408AC2DAF646C89BB379D8AB96ACMAILBOXarcloc_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

I'm already working with Poky for serveral months. Nice tool.

But now I'm not able to install shared libraries of ncurses for a custom im=
age. Namely libform, libmenu, and libpanel.
I always get a "Error: Nothing PROVIDES ..."

I tried to extend my image recipie with IMAGE_INSTALL +=3D "libform".
I also tried libform5 and ncurses-libform.

But libtinfo5 is already installed, because bash depends on it.
If I try to install libtinfo manually with IMAGE_INSTALL, I get the same er=
ror as with libform.

How can I install this  shared libraries to a custom image?

Thanks,
Martin


MARTIN FLETZER
Engineer
Safety & Security Department
Video and Security Technology

AIT Austrian Institute of Technology GmbH
M +43 664 8251090  |  F +43 50550-4150
Donau-City-Stra=DFe 1  |  1220 Vienna  | Austria
martin.fletzer@ait.ac.at<mailto:martin.fletzer@ait.ac.at>  |  http://www.ai=
t.ac.at<http://www.ait.ac.at/>

FN: 115980 i HG Wien  |  UID: ATU14703506
This email and any attachments thereto, is intended only for use by the add=
ressee(s) named herein and may contain legally privileged and/or confidenti=
al information. If you are not the intended recipient, please notify the se=
nder by return e-mail or by telephone and delete this message from your sys=
tem and any printout thereof. Any unauthorized use, reproduction, or dissem=
ination of this message is strictly prohibited. Please note that e-mails ar=
e susceptible to change. AIT Austrian Institute of Technology GmbH shall no=
t be liable for the improper or incomplete transmission of the information =
contained in this communication, nor shall it be liable for any delay in it=
s receipt.



--_000_9F69795E29C890408AC2DAF646C89BB379D8AB96ACMAILBOXarcloc_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-AT link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hello everybody,=
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al>I&#8217;m already working with Poky for serveral months. Nice tool.<o:p>=
</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Bu=
t now I&#8217;m not able to install shared libraries of ncurses for a custo=
m image. Namely libform, libmenu, and libpanel.<o:p></o:p></p><p class=3DMs=
oNormal>I always get a &#8222;Error: Nothing PROVIDES &#8230;&#8220;<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I tr=
ied to extend my image recipie with IMAGE_INSTALL +=3D &quot;libform&quot;.=
<o:p></o:p></p><p class=3DMsoNormal>I also tried libform5 and ncurses-libfo=
rm.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoN=
ormal>But libtinfo5 is already installed, because bash depends on it.<o:p><=
/o:p></p><p class=3DMsoNormal>If I try to install libtinfo manually with IM=
AGE_INSTALL, I get the same error as with libform.<o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>How can I install th=
is =A0shared libraries to a custom image?<o:p></o:p></p><p class=3DMsoNorma=
l><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks,<o:p></o:p></p><p class=
=3DMsoNormal>Martin<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p=
><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";mso-f=
areast-language:DE-AT'>MARTIN FLETZER<br></span></b><span lang=3DEN-US styl=
e=3D'font-family:"Arial","sans-serif";color:#7B8287;mso-fareast-language:DE=
-AT'>Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:#7B8287;mso-fareast-languag=
e:DE-AT'>Safety &amp; Security Department<br>Video and&nbsp;Security Techno=
logy<br></span><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"=
;mso-fareast-language:DE-AT'><br><b><span style=3D'color:#7B8287'>AIT Austr=
ian Institute of Technology GmbH<br></span></b><span style=3D'color:#7B8287=
'>M +43 664 8251090=A0 |=A0 F +43 50550-4150<o:p></o:p></span></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-se=
rif";color:#7B8287;mso-fareast-language:DE-AT'>Donau-City-Stra=DFe 1 &nbsp;=
| &nbsp;1220 Vienna &nbsp;| Austria<br></span><u><span lang=3DEN-US style=
=3D'font-family:"Arial","sans-serif";color:#0000FE;mso-fareast-language:DE-=
AT'><a href=3D"mailto:martin.fletzer@ait.ac.at"><span style=3D'color:blue'>=
martin.fletzer@ait.ac.at</span></a></span></u><span lang=3DEN-US style=3D'f=
ont-family:"Arial","sans-serif";color:#7E7E7E;mso-fareast-language:DE-AT'> =
&nbsp;| &nbsp;</span><u><span style=3D'font-family:"Arial","sans-serif";col=
or:#0000FE;mso-fareast-language:DE-AT'><a href=3D"http://www.ait.ac.at/"><s=
pan lang=3DEN-US style=3D'color:blue'>http://www.ait.ac.at</span></a></span=
></u><u><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif";color:=
#0000FE;mso-fareast-language:DE-AT'><br></span></u><span lang=3DEN-US style=
=3D'font-family:"Arial","sans-serif";color:#7F7F7F;mso-fareast-language:DE-=
AT'><br></span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Ari=
al","sans-serif";color:#BDBDBD;mso-fareast-language:DE-AT'>FN: 115980 i HG =
Wien &nbsp;| &nbsp;UID: ATU14703506<br>This email and any attachments there=
to, is intended only for use by the addressee(s) named herein and may conta=
in legally privileged and/or confidential information. If you are not the i=
ntended recipient, please notify the sender by return e-mail or by telephon=
e and delete this message from your system and any printout thereof. Any un=
authorized use, reproduction, or dissemination of this message is strictly =
prohibited. Please note that e-mails are susceptible to change. AIT Austria=
n Institute of Technology GmbH shall not be liable for the improper or inco=
mplete transmission of the information contained in this communication, nor=
 shall it be liable for any delay in its receipt.</span><span style=3D'mso-=
fareast-language:DE-AT'><o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nb=
sp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_9F69795E29C890408AC2DAF646C89BB379D8AB96ACMAILBOXarcloc_--
