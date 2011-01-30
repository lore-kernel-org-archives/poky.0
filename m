Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7F4B4C80050
	for <poky@pokylinux.org>; Sun, 30 Jan 2011 03:12:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 01:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; 
	d="png'150?scan'150,208,217,150";a="597766283"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 01:12:06 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 17:12:04 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 30 Jan 2011 17:12:04 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Sun, 30 Jan 2011 17:12:02 +0800
Thread-Topic: [LTP] Yocto 1.0 M2 assessment -- DONE
Thread-Index: AcvAXcHaTCqM8FjDQwCL0O1c6QCLcQ==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E189@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [LTP] Yocto 1.0 M2 assessment -- DONE
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
X-List-Received-Date: Sun, 30 Jan 2011 09:12:08 -0000
X-Groupsio-MsgNum: 3147
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_";
	type="multipart/alternative"

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,



I'd like to share the current LTP status, that I've basically done the asse=
ssment for

all the failures except routerstation (2.6.34 kernel has some IPC issues wh=
ich causes

lots of unexpected failures).

https://wiki.yoctoproject.org/wiki/LTP_result#Current_Milestone_.281.0.2FM2=
.29



Total failures are 271 if setting aside routerstation:



[cid:image002.png@01CBC0A0.CFF918E0]



Out of 271 there are quite some happening on multiple targets. So after rem=
oving the

duplicated failures, I managed to audit totally 51 failures, within them:



-          7 failures are fixed (5 are bug fixes, 2 are fixed in 2.6.37 ker=
nel)

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D672 [LTP]PATH contain endin=
g colon for root user

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D673 [LTP]normal user can't =
use cron

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D674 [LTP]bash is not defaul=
t /bin/sh in lsb profile

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D675 [LTP]normal user can't =
use at

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D676 [LTP]no 'file' and 'ldd=
' in sdk profile

-          5 failures are identified as upstream LTP bugs

-          3 failures are pending for further solution

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D678 [LTP] fallocate always =
gets -EFBIG on qemuarm/qemumips

-          The majority (36) failures are categorized as Not-A-Bug, which m=
ostly comes from

the fact that SDK profile doesn't include necessary packages for test, and =
then are

verified PASS by adding them back with necessary tweaking. There're also a =
few

coming from lacking of memory/disk resources, which will be avoided in the =
next test.



Qemux86 is the base target which I spent most time. So for most failure ana=
lysis you can look at:

https://wiki.yoctoproject.org/wiki/Qemux86-ltp



Qemuarm contains 2nd most fresh analysis, which you may be also interested:

https://wiki.yoctoproject.org/wiki/Qemuarm-ltp



Thanks

Kevin

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
/* List Definitions */
@list l0
	{mso-list-id:1628852711;
	mso-list-type:hybrid;
	mso-list-template-ids:-396335688 2090900678 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:SimSun;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-21.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoPlainText><span lang=3DEN-US>Hi, all,<o:p></o:p></span></p=
><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US>I'd like to share the current LTP s=
tatus, that I've basically done the assessment for <o:p></o:p></span></p><p=
 class=3DMsoPlainText><span lang=3DEN-US>all the failures except routerstat=
ion (2.6.34 kernel has some IPC issues which causes<o:p></o:p></span></p><p=
 class=3DMsoPlainText><span lang=3DEN-US>lots of unexpected failures).<o:p>=
</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><a href=3D"http=
s://wiki.yoctoproject.org/wiki/LTP_result#Current_Milestone_.281.0.2FM2.29"=
>https://wiki.yoctoproject.org/wiki/LTP_result#Current_Milestone_.281.0.2FM=
2.29</a><o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Total =
failures are <b><span style=3D'color:red'>271</span></b> if setting aside r=
outerstation:<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-=
US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><=
img border=3D0 width=3D724 height=3D52 id=3D"Picture_x0020_2" src=3D"cid:im=
age002.png@01CBC0A0.CFF918E0"></span><span lang=3DEN-US><o:p></o:p></span><=
/p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoPlainText><span lang=3DEN-US>Out of <b><span style=3D'color:re=
d'>271</span></b> there are quite some happening on multiple targets. So af=
ter removing the<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3D=
EN-US>duplicated failures, I managed to audit totally <b><span style=3D'col=
or:red'>51</span></b> failures, within them:<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 lev=
el1 lfo1'><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-list:I=
gnore'>-<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=
=3DEN-US>7 failures are fixed (5 are bug fixes, 2 are fixed in 2.6.37 kerne=
l)<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:42.0pt=
'><span lang=3DEN-US style=3D'font-size:10.0pt'><a href=3D"http://bugzilla.=
pokylinux.org/show_bug.cgi?id=3D672">http://bugzilla.pokylinux.org/show_bug=
.cgi?id=3D672</a> </span><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Verdana","sans-serif";color:black'>[LTP]PATH contain ending colon f=
or root user<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:42.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt'><a href=3D"http:/=
/bugzilla.pokylinux.org/show_bug.cgi?id=3D673">http://bugzilla.pokylinux.or=
g/show_bug.cgi?id=3D673</a> </span><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Verdana","sans-serif";color:black'>[LTP]normal user can't=
 use cron<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left=
:42.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt'><a href=3D"http://bu=
gzilla.pokylinux.org/show_bug.cgi?id=3D674">http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D674</a> </span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Verdana","sans-serif";color:black'>[LTP]bash is not default =
/bin/sh in lsb profile<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:42.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt'><a hr=
ef=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D675">http://bugzilla.=
pokylinux.org/show_bug.cgi?id=3D675</a> </span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Verdana","sans-serif";color:black'>[LTP]norma=
l user can't use at<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'm=
argin-left:42.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt'><a href=3D=
"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D676">http://bugzilla.pokyl=
inux.org/show_bug.cgi?id=3D676</a> </span><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Verdana","sans-serif";color:black'>[LTP]no 'file' =
and 'ldd' in sdk profile</span><span lang=3DEN-US style=3D'font-size:10.0pt=
'><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt=
;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><span la=
ng=3DEN-US><span style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Time=
s New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span=
></span></span><![endif]><span lang=3DEN-US>5 failures are identified as up=
stream LTP bugs<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margi=
n-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLi=
sts]><span lang=3DEN-US><span style=3D'mso-list:Ignore'>-<span style=3D'fon=
t:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; </span></span></span><![endif]><span lang=3DEN-US>3 failures are pen=
ding for further solution<o:p></o:p></span></p><p class=3DMsoPlainText styl=
e=3D'margin-left:42.0pt'><span lang=3DEN-US><a href=3D"http://bugzilla.poky=
linux.org/show_bug.cgi?id=3D678">http://bugzilla.pokylinux.org/show_bug.cgi=
?id=3D678</a> [LTP] fallocate always gets -EFBIG on qemuarm/qemumips<o:p></=
o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-ind=
ent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-U=
S><span style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New Rom=
an"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><=
/span><![endif]><span lang=3DEN-US>The majority (36) failures are categoriz=
ed as Not-A-Bug, which mostly comes from <o:p></o:p></span></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US>the fact that S=
DK profile doesn</span><span lang=3DEN-US style=3D'font-family:"Courier New=
"'>&#8217;</span><span lang=3DEN-US>t include necessary packages for test, =
and then are<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:18.0pt'><span lang=3DEN-US>verified PASS by adding them back with neces=
sary tweaking. There</span><span lang=3DEN-US style=3D'font-family:"Courier=
 New"'>&#8217;</span><span lang=3DEN-US>re also a few <o:p></o:p></span></p=
><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US>co=
ming from lacking of memory/disk resources, which will be avoided in the ne=
xt test.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Qemux8=
6 is the base target which I spent most time. So for most failure analysis =
you can look at:<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3D=
EN-US><a href=3D"https://wiki.yoctoproject.org/wiki/Qemux86-ltp">https://wi=
ki.yoctoproject.org/wiki/Qemux86-ltp</a><o:p></o:p></span></p><p class=3DMs=
oPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPla=
inText><span lang=3DEN-US>Qemuarm contains 2<sup>nd</sup> most fresh analys=
is, which you may be also interested:<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><a href=3D"https://wiki.yoctoproject.org/wiki/Qe=
muarm-ltp">https://wiki.yoctoproject.org/wiki/Qemuarm-ltp</a><o:p></o:p></s=
pan></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoPlainText><span lang=3DEN-US>Thanks<o:p></o:p></span></p>=
<p class=3DMsoPlainText><span lang=3DEN-US>Kevin<o:p></o:p></span></p></div=
></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_--

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=25998;
	creation-date="Sun, 30 Jan 2011 17:12:02 GMT";
	modification-date="Sun, 30 Jan 2011 17:12:02 GMT"
Content-ID: <image002.png@01CBC0A0.CFF918E0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAtQAAAA0CAYAAACq9q9bAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAGUOSURBVHja
7Z0FeBRJ04AXd3e34O52WHB3DQ7BNbi7u7u7u3s8hBDi7gkhCXHX9++Z3eQCCRz3f8f3HWTrefqO
zezOTFdXV73V092jWLNmjUJd1EVd1EVd1EVd1EVd1EVd/n9F/s+5c+c4fPgwu3fvznBly5YtmJiY
kCxGRkbs3Lkzw9R/69atWFpaptT/xYsX7Nq1K0Paws8oki6l4u7unqLjW7duZSgdS/3pwIED+Pn5
yfWPi4vj4sWLGaqfJZcdO3Zw/PhxQkNDZV2Eh4dz6tQpdZ9L5Y8k24iJiZH1I9nM7xabpJhz8+ZN
4uPj5TpKvkHqHxm97Tdv3szTp09JSkqS9WJjY8OePXvU/eIncY7a5/znZfv27djZ2SWr9ZUM1IcO
HeLJkydYW1tnuCLBpLe3d4pz09XV5fHjxxmq/r6+viQkJMj1l+zg1atXGdIWfmYJCAhICRQSUBsb
G2eYultZWWFra0tQUJBcfwmWrl69ipmZWYazA0kXkgMOCwuTdRESEsLly5flv6v7idIfOTo6EhkZ
KevHx8eHK1eu/HZ1dHZ2Jjo6Wq6jk5MT165dy/Btb2FhIScXsbGxsl4+fPjA7du31f3iJ3FORmW+
f9qff/r0KZmflEAtZSqpRykzmkgBPtm5vXz5MnXGkSEkKipKHjWU5MGDB3h6emZYW/hZIo1EJiYm
pgC19Dkj6kASqa/duHEjJYnLiJIM1FKSIdmDWtK3FQ8PD9kn/W4iJdfJdZTizfPnz9WNLkQCvuRk
ytTUVB54UMs/I6k5R3oSbW9vr1bKPyCSvar4SQnU0tD1+/fvM7RCkh8xSqOzGS25iIiISAHqhw8f
4uLiou4l/7BIAJUaqD9//pyh6i8BRDJEJgN1cuDMaCIlEqmBWnr8n2wbalFCVTJsSsn9vXv3frs6
SqOwkt+VRAIbabRQLUrfIA3wSPLu3Tv09fXVSvmHJDXnSAOH0uiqWv5zkXyVGqi/YWhqoFYD9c8Q
NVCrgTpZ1ED9fVEDdcYVNVD/PFED9c8RNVB/x9DUQK0G6p8haqBWA3WyqIH6+6IG6owraqD+eaIG
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
TkSuQmCC

--_004_625BA99ED14B2D499DC4E29D8138F1504E6294E189shsmsx502ccrc_--
