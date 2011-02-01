Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B40A54C80082
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 01:34:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jan 2011 23:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,408,1291622400"; 
	d="png'150?scan'150,208,217,150";a="382532529"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 23:33:59 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Feb 2011 15:32:21 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Feb 2011 15:32:20 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 1 Feb 2011
	15:32:20 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 1 Feb 2011 15:32:18 +0800
Thread-Topic: quick update about POSIX failure analysis
Thread-Index: AcvB4igJRfDF1z2gTgyuv2v8rdspLA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E590@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: quick update about POSIX failure analysis
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
X-List-Received-Date: Tue, 01 Feb 2011 07:34:02 -0000
X-Groupsio-MsgNum: 3221
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_";
	type="multipart/alternative"

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,



I'd like to give a quick update about the current 1.0-M2 POSIX status:

         https://wiki.yoctoproject.org/wiki/Posix_result



The current failure number is quite high:



[cid:image002.png@01CBC225.3629AAF0]



Fortunately I've spotted one reason for the majority of them, that there's =
one configuration

file (LDFLAGS) not configured correctly. Ideally below line in that file sh=
ould be uncommented:



#-D_XOPEN_SOURCE=3D600 -lpthread -lrt -lm



By default it's commented, and thus the majority of the failures are linkin=
g failures due to

failing to find necessary libpthread.so and librt.so



I did a quick test on qemux86. The failures are reduced to 173! Within them=
 there're 52 AIO

failures which comes from the test cases themselves (use 'exit' w/o includi=
ng stdlib.h while

warnings are treated as errors in this test). So setting aside AIO the fail=
ures are 121. It's still

a large group to audit but I think there may have other group failures ther=
e.



Regarding to that I think it doesn't make sense to continue analysis on 1.0=
-M2, since 1.0-M3

is coming with a newer 2.6.37 kernel. I'll suggest the revised step to QA t=
eam to ensure we

have right failures listed in 1.0-M3 and then continue with the analysis ba=
sed on new results. :)



Thanks

Kevin

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
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
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoPlainText><span lang=3DEN-US>Hi, all,<o:p></o:p></span></p=
><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>I'd like to give a quick update abo=
ut the current 1.0-M2 POSIX status:<o:p></o:p></span></p><p class=3DMsoPlai=
nText><span lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
a href=3D"https://wiki.yoctoproject.org/wiki/Posix_result">https://wiki.yoc=
toproject.org/wiki/Posix_result</a><o:p></o:p></span></p><p class=3DMsoPlai=
nText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US>The current failure number is quite high:<o:p></o:p></=
span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoPlainText><span lang=3DEN-US><img border=3D0 width=3D726=
 height=3D52 id=3D"Picture_x0020_1" src=3D"cid:image002.png@01CBC225.3629AA=
F0"></span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoPlainText=
><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><sp=
an lang=3DEN-US>Fortunately I</span><span lang=3DEN-US style=3D'font-family=
:"Courier New"'>&#8217;</span><span lang=3DEN-US>ve spotted one reason for =
the majority of them, that there</span><span lang=3DEN-US style=3D'font-fam=
ily:"Courier New"'>&#8217;</span><span lang=3DEN-US>s one configuration<o:p=
></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>file (LDFLAGS)=
 not configured correctly. Ideally below line in that file should be uncomm=
ented:<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>#-D_XOPE=
N_SOURCE=3D600 </span><span lang=3DEN-US style=3D'font-family:"Courier New"=
'>&#8211;</span><span lang=3DEN-US>lpthread </span><span lang=3DEN-US style=
=3D'font-family:"Courier New"'>&#8211;</span><span lang=3DEN-US>lrt </span>=
<span lang=3DEN-US style=3D'font-family:"Courier New"'>&#8211;</span><span =
lang=3DEN-US>lm <o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3D=
EN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-U=
S>By default it</span><span lang=3DEN-US style=3D'font-family:"Courier New"=
'>&#8217;</span><span lang=3DEN-US>s commented, and thus the majority of th=
e failures are linking failures due to<o:p></o:p></span></p><p class=3DMsoP=
lainText><span lang=3DEN-US>failing to find necessary libpthread.so and lib=
rt.so<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>I did a q=
uick test on qemux86. The failures are reduced to <b>173</b>! Within them t=
here</span><span lang=3DEN-US style=3D'font-family:"Courier New"'>&#8217;</=
span><span lang=3DEN-US>re 52 AIO<o:p></o:p></span></p><p class=3DMsoPlainT=
ext><span lang=3DEN-US>failures which comes from the test cases themselves =
(use </span><span lang=3DEN-US style=3D'font-family:"Courier New"'>&#8216;<=
/span><span lang=3DEN-US>exit</span><span lang=3DEN-US style=3D'font-family=
:"Courier New"'>&#8217;</span><span lang=3DEN-US> w/o including stdlib.h wh=
ile<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>warning=
s are treated as errors in this test). So setting aside AIO the failures ar=
e <b>121</b>. It</span><span lang=3DEN-US style=3D'font-family:"Courier New=
"'>&#8217;</span><span lang=3DEN-US>s still<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US>a large group to audit but I think there=
 may have other group failures there.<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainT=
ext><span lang=3DEN-US>Regarding to that I think it doesn</span><span lang=
=3DEN-US style=3D'font-family:"Courier New"'>&#8217;</span><span lang=3DEN-=
US>t make sense to continue analysis on 1.0-M2, since 1.0-M3<o:p></o:p></sp=
an></p><p class=3DMsoPlainText><span lang=3DEN-US>is coming with a newer 2.=
6.37 kernel. I</span><span lang=3DEN-US style=3D'font-family:"Courier New"'=
>&#8217;</span><span lang=3DEN-US>ll suggest the revised step to QA team to=
 ensure we<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>=
have right failures listed in 1.0-M3 and then continue with the analysis ba=
sed on new results. </span><span lang=3DEN-US style=3D'font-family:Wingding=
s'>J</span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoPlainText=
><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><sp=
an lang=3DEN-US>Thanks<o:p></o:p></span></p><p class=3DMsoPlainText><span l=
ang=3DEN-US>Kevin<o:p></o:p></span></p></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_--

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=27817;
	creation-date="Tue, 01 Feb 2011 15:32:19 GMT";
	modification-date="Tue, 01 Feb 2011 15:32:19 GMT"
Content-ID: <image002.png@01CBC225.3629AAF0>
Content-Transfer-Encoding: base64

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
gg==

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E590shsmsx502ccrc_--
