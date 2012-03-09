Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5DBE013A3
	for <poky@yoctoproject.org>; Fri,  9 Mar 2012 07:40:05 -0800 (PST)
Received: from Mailbox.arc.local ([169.254.1.118]) by S0HCN1.arc.local ([::1])
	with mapi; Fri, 9 Mar 2012 16:40:03 +0100
From: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
To: "'poky@yoctoproject.org'" <poky@yoctoproject.org>
Date: Fri, 9 Mar 2012 16:40:03 +0100
Thread-Topic: How to create a PREMIRROR
Thread-Index: Acz+CmWCqjM5xIHDQQ2gm8WCho6+gg==
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: How to create a PREMIRROR
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
X-List-Received-Date: Fri, 09 Mar 2012 15:40:06 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9F69795E29C890408AC2DAF646C89BB379D1059697MAILBOXarcloc_"

--_000_9F69795E29C890408AC2DAF646C89BB379D1059697MAILBOXarcloc_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

I am new here in this mailing list. We are starting to use Yocto/Poky for a=
n embedded project, and we have the need to collect all source code in our =
SVN repository for the case internet is not available. I think using PREMIR=
RORS (and SSTATE_MIRRORS for speedup) is the right way?
How to create and maintain a local PREMIRRROR? What is the best practice? I=
'm pretty sure this is not the first time for this question, so can you giv=
e me some hints for a good documentation, or advices?

Thanx, Andi



ANDREAS ZOUFAL
Engineer
Safety & Security Department
Video and Security Technology

AIT Austrian Institute of Technology GmbH
Donau-City-Stra=DFe 1  |  1220 Vienna  |  Austria
T +43(0) 50550-4266  |  F +43(0) 50550-4150
andreas.zoufal@ait.ac.at<mailto:andreas.zoufal@ait.ac.at>  |  http://www.ai=
t.ac.at

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


--_000_9F69795E29C890408AC2DAF646C89BB379D1059697MAILBOXarcloc_
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
al><span lang=3DEN-US>I am new here in this mailing list. We are starting t=
o use Yocto/Poky for an embedded project, and we have the need to collect a=
ll source code in our SVN repository for the case internet is not available=
. I think using PREMIRRORS (and SSTATE_MIRRORS for speedup) is the right wa=
y? <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>How to cre=
ate and maintain a local PREMIRRROR? What is the best practice? I&#8217;m p=
retty sure this is not the first time for this question, so can you give me=
 some hints for a good documentation, or advices?<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US>Thanx, Andi<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";mso-far=
east-language:DE-AT'>ANDREAS ZOUFAL <br></span></b><span lang=3DEN-US style=
=3D'font-family:"Arial","sans-serif";color:#7B8287;mso-fareast-language:DE-=
AT'>Engineer<br>Safety &amp; Security Department<br>Video and Security Tech=
nology <br><br><b><o:p></o:p></b></span></p><p class=3DMsoNormal><b><span l=
ang=3DEN-US style=3D'font-family:"Arial","sans-serif";color:#7B8287;mso-far=
east-language:DE-AT'>AIT Austrian Institute of Technology GmbH<br></span></=
b><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif";color:#7B828=
7;mso-fareast-language:DE-AT'>Donau-City-Stra=DFe 1 &nbsp;| &nbsp;1220 Vien=
na &nbsp;| &nbsp;Austria<br>T +43(0) 50550-4266 &nbsp;| &nbsp;F +43(0) 5055=
0-4150<br></span><u><span lang=3DEN-US style=3D'font-family:"Arial","sans-s=
erif";color:#0000FE;mso-fareast-language:DE-AT'><a href=3D"mailto:andreas.z=
oufal@ait.ac.at"><span style=3D'color:blue'>andreas.zoufal@ait.ac.at</span>=
</a></span></u><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"=
;color:#7E7E7E;mso-fareast-language:DE-AT'> &nbsp;| &nbsp;</span><u><span s=
tyle=3D'font-family:"Arial","sans-serif";color:#0000FE;mso-fareast-language=
:DE-AT'><a href=3D"http://www.ait.ac.at"><span lang=3DEN-US style=3D'color:=
blue'>http://www.ait.ac.at</span></a></span></u><u><span lang=3DEN-US style=
=3D'font-family:"Arial","sans-serif";color:#0000FE;mso-fareast-language:DE-=
AT'><br></span></u><span lang=3DEN-US style=3D'font-family:"Arial","sans-se=
rif";color:#7F7F7F;mso-fareast-language:DE-AT'><br></span><span lang=3DEN-U=
S style=3D'font-size:9.0pt;font-family:"Arial","sans-serif";color:#BDBDBD;m=
so-fareast-language:DE-AT'>FN: 115980 i HG Wien &nbsp;| &nbsp;UID: ATU14703=
506<br>This email and any attachments thereto, is intended only for use by =
the addressee(s) named herein and may contain legally privileged and/or con=
fidential information. If you are not the intended recipient, please notify=
 the sender by return e-mail or by telephone and delete this message from y=
our system and any printout thereof. Any unauthorized use, reproduction, or=
 dissemination of this message is strictly prohibited. Please note that e-m=
ails are susceptible to change. AIT Austrian Institute of Technology GmbH s=
hall not be liable for the improper or incomplete transmission of the infor=
mation contained in this communication, nor shall it be liable for any dela=
y in its receipt.</span><span lang=3DEN-US style=3D'font-family:"Arial","sa=
ns-serif";mso-fareast-language:DE-AT'><o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_9F69795E29C890408AC2DAF646C89BB379D1059697MAILBOXarcloc_--
