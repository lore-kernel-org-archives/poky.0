Return-Path: <mdavis@planetaryresources.com>
Received: from smtp115.iad3a.emailsrvr.com (smtp115.iad3a.emailsrvr.com
	[173.203.187.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9C79E016A3
	for <poky@yoctoproject.org>; Tue,  8 Oct 2013 13:36:04 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp7.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	D8837400E0; Tue,  8 Oct 2013 16:36:03 -0400 (EDT)
X-Virus-Scanned: OK
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp7.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	EB310400CD; Tue,  8 Oct 2013 16:36:02 -0400 (EDT)
Received: from IAD2MBX05.mex02.mlsrvr.com ([172.23.11.33]) by
	IAD2HUB06.mex02.mlsrvr.com ([172.23.10.70]) with mapi; Tue, 8 Oct 2013
	16:36:02 -0400
From: Michael Davis <mdavis@planetaryresources.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Date: Tue, 8 Oct 2013 16:36:01 -0400
Thread-Topic: [poky] Best supported package manager?
Thread-Index: Ac7EYlPXebJpPeNSTBuDUYEeihbtOAAAqqqg
Message-ID: <7BDD69127112414F90CF3FED4711BF150D15A47BC5@IAD2MBX05.mex02.mlsrvr.com>
References: <7BDD69127112414F90CF3FED4711BF150D15A47B39@IAD2MBX05.mex02.mlsrvr.com>
	<CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
In-Reply-To: <CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Best supported package manager?
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
X-List-Received-Date: Tue, 08 Oct 2013 20:36:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7BDD69127112414F90CF3FED4711BF150D15A47BC5IAD2MBX05mex0_"

--_000_7BDD69127112414F90CF3FED4711BF150D15A47BC5IAD2MBX05mex0_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cool, thanks for the info.  Just to be totally clear, when I specify say "p=
ackage_ipk" what exactly does that mean for my build and resulting filesyst=
em?  Does it mean that the entire filesystem is generated using ipk package=
s?  Does it mean that I will be able to use ipks in my resulting system?  T=
hanks again

-Mike

From: Rudolf Streif [mailto:rstreif@linuxfoundation.org]
Sent: Tuesday, October 08, 2013 1:10 PM
To: Michael Davis
Cc: poky@yoctoproject.org
Subject: Re: [poky] Best supported package manager?


> Which package manager (ipk, rpm, deb) is best supported currently in poky=
?  I am wondering which manager is the most tested and stable?

RPM is the default package manager. I would expect that it has gotten the m=
ost mileage so far because of that. All of them are tested with autobuilder=
. IPK is probably the next commonly used one since popular for embedded sys=
tems for its leightweight and smaller footprint design. You can have YP bui=
ld for any combination of the package managers at the same time. The builds=
 just take longer. I recommend starting with RPM and when your system boots=
 try out the other ones if you need to.

Rudi

--_000_7BDD69127112414F90CF3FED4711BF150D15A47BC5IAD2MBX05mex0_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Cool, tha=
nks for the info.&nbsp; Just to be totally clear, when I specify say &#8220=
;package_ipk&#8221; what exactly does that mean for my build and resulting =
filesystem?&nbsp; Does it mean that the entire filesystem is generated usin=
g ipk packages?&nbsp; Does it mean that I will be able to use ipks in my re=
sulting system?&nbsp; Thanks again<o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'fo=
nt-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>-Mike<o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-=
family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma",=
"sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"=
Tahoma","sans-serif"'> Rudolf Streif [mailto:rstreif@linuxfoundation.org] <=
br><b>Sent:</b> Tuesday, October 08, 2013 1:10 PM<br><b>To:</b> Michael Dav=
is<br><b>Cc:</b> poky@yoctoproject.org<br><b>Subject:</b> Re: [poky] Best s=
upported package manager?<o:p></o:p></span></p><p class=3DMsoNormal><o:p>&n=
bsp;</o:p></p><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=
=3DMsoNormal>&gt;&nbsp;<span style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>Which package manager (ipk, rpm, deb) is best supported curre=
ntly in poky?&nbsp; I am wondering which manager is the most tested and sta=
ble?</span><o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p></div><div><p class=3DMsoNormal><span style=3D'font-family:"Arial","san=
s-serif"'>RPM is the default package manager. I would expect that it has go=
tten the most mileage so far because of that. All of them are tested with a=
utobuilder. IPK is probably the next commonly used one since popular for em=
bedded systems for its leightweight and smaller footprint design. You can h=
ave YP build for any combination of the package managers at the same time. =
The builds just take longer. I recommend starting with RPM and when your sy=
stem boots try out the other ones if you need to.</span><o:p></o:p></p></di=
v><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoN=
ormal><span style=3D'font-family:"Arial","sans-serif"'>Rudi</span><o:p></o:=
p></p></div></div></div></body></html>=

--_000_7BDD69127112414F90CF3FED4711BF150D15A47BC5IAD2MBX05mex0_--
