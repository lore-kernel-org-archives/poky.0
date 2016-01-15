Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACBF2E009C5; Fri, 15 Jan 2016 06:21:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C5BE0085A;
	Fri, 15 Jan 2016 06:20:56 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 15 Jan 2016 06:20:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,299,1449561600"; 
	d="scan'208,217";a="882026706"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2016 06:20:33 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.22]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.170]) with mapi id
	14.03.0248.002; Fri, 15 Jan 2016 14:20:32 +0000
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Roman, Alexandru CostinX" <alexandru.costinx.roman@intel.com>
Thread-Topic: [yocto] using Hob to run images on a custom simulator, other
	than qemu
Thread-Index: AQHRPK8c8A+3PzWXPEmqwxnnt8MfOJ7YXfQAgAAOE+CAJD1IAIAAHOkQ
Date: Fri, 15 Jan 2016 14:20:32 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E962619259C@irsmsx110.ger.corp.intel.com>
References: <CY1PR0301MB11809C718902C817370BAE6E85E10@CY1PR0301MB1180.namprd03.prod.outlook.com>
	<D29D8ACF.6DB8E%belen.barros.pena@intel.com>
	<DBXPR04MB41628675A843378D20C88978FE50@DBXPR04MB416.eurprd04.prod.outlook.com>
	<D2A024CD.6DE42%belen.barros.pena@intel.com>
	<1FFB62CE8AEB0D4298B51122D8903E9626165832@irsmsx110.ger.corp.intel.com>
	<VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0@VI1PR0401MB1789.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0401MB1789B58E523714CFE9EB1C4B8FCD0@VI1PR0401MB1789.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDdjZmQxMDAtOWYwNS00NzkzLTlkMTgtODViNzQ5NWJhYmIwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX1BVQkxJQyJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNS40LjEwLjE5IiwiVHJ1c3RlZExhYmVsSGFzaCI6Im1USDJBS1VYMGV5UDI0SWZFT0loK29nRjRoSGRCQytIOUpNcGthVDVRQ1E9In0=
x-ctpclassification: CTP_PUBLIC
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Nicolae Manescu <nicu.manescu@nxp.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mirela Rabulea <Mirela.Rabulea@freescale.com>,
	Mirela Rabulea <mirela.rabulea@nxp.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [yocto] using Hob to run images on a custom simulator, other than qemu
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
X-List-Received-Date: Fri, 15 Jan 2016 14:21:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1FFB62CE8AEB0D4298B51122D8903E962619259Cirsmsx110gercor_"

--_000_1FFB62CE8AEB0D4298B51122D8903E962619259Cirsmsx110gercor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Alex,
Can you help Mirela?

Thanks,
AlexG

From: Mirela Rabulea [mailto:mirela.rabulea@nxp.com]
Sent: Friday, January 15, 2016 2:36 PM
To: Georgescu, Alexandru C <alexandru.c.georgescu@intel.com>; Barros Pena, =
Belen <belen.barros.pena@intel.com>; Mirela Rabulea <Mirela.Rabulea@freesca=
le.com>; yocto@yoctoproject.org; poky@yoctoproject.org
Cc: Nicolae Manescu <nicu.manescu@nxp.com>
Subject: RE: [yocto] using Hob to run images on a custom simulator, other t=
han qemu


Hi Alex, Belen,

Is there some pre-setup necessary in order to run the HOB tests you mention=
ed?

I did the following:

-        Cloned poky repository, from master: git://git.yoctoproject.org/po=
ky

-        Tried to run a test-case which seems the most related to my change=
s,  "Case 66 - Run image in Hob." from https://bugzilla.yoctoproject.org/tr=
_show_run.cgi?run_id=3D3478

-        With case 66, at first I was not able to build an image, due to th=
e fact my homedir is on NFS, so I hacked meta/classes/sanity.bbclass, comme=
nted out "status.addresult(check_not_nfs(tmpdir, "TMPDIR"))". After that, I=
 was able to build qemu ppc, core-image-minimal, but it took a lot of time,=
 cannot say exactly how much, but for sure it did exceed 8 hours (it was tr=
ial and error for me, with disk quota exceeded, deleting to free space and =
try again). After the image was build, when running the image I get permiss=
ion errors when running runqemu-ifup (see attached picture), I think it is =
caused by my homedir being on NFS.

-        With my changes applied on the poky repository, I run again case 6=
6, I found 1 issue which I fixed, and now the behavior is the same. With qe=
mu image I get up to the point with permission errors when running runqemu-=
ifup, while with my custom image and run script, I can run successfully.

Unfortunately, at this moment I don't have enough quota on a non-NFS locati=
on. I can try to work around that, or expect until someone else performs a =
weekly test run. I am pretty confident now that my changes will not affect =
the current regression tests.

I would like to get the changes merged into YP 2.1 M2, RC1, which I see has=
 the following schedule:

Release Candidate and Milestone Release schedule (Full Pass QA test follows=
 every RC build)

*             RC1: 1/25/16

*             RC2: 2/1/16

*             M2 release: 2/12/16

Considering the above, how should I proceed next?

Should I log a bug/feature in Bugzilla and submit a patch for it? Do I need=
 some special membership to log bugs and submit patches?

The patch should be on which list/repo? Poky or bitbake (my modified files =
are in poky\bitbake\lib\bb\ui\crumbs)?

May I rely on some weekly test run, or do I need to work-out my NFS issues?



Thanks for your help,

Mirela



-----Original Message-----
From: Georgescu, Alexandru C [mailto:alexandru.c.georgescu@intel.com]
Sent: Wednesday, December 23, 2015 1:17 PM
To: Barros Pena, Belen <belen.barros.pena@intel.com<mailto:belen.barros.pen=
a@intel.com>>; Mirela Rabulea <mirela.rabulea@nxp.com<mailto:mirela.rabulea=
@nxp.com>>; Mirela Rabulea <Mirela.Rabulea@freescale.com<mailto:Mirela.Rabu=
lea@freescale.com>>; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>;=
 poky@yoctoproject.org<mailto:poky@yoctoproject.org>
Cc: Nicolae Manescu <nicu.manescu@nxp.com<mailto:nicu.manescu@nxp.com>>
Subject: RE: [yocto] using Hob to run images on a custom simulator, other t=
han qemu



Hi,

Currently there are two test runs that ensure the HOB is functioning correc=
tly, as following:

                - https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=
=3D3479

                - https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=
=3D3478



We also have some of the test cases automated can be run, but as Belen ment=
ioned earlier, HOB is being deprecated so we would have to see if they stil=
l run correctly on the latest master. Keep me posted if you want to run the=
m, maybe we can help.



Cheers,

AlexG





-----Original Message-----

From: Barros Pena, Belen

Sent: Wednesday, December 23, 2015 12:21 PM

To: Mirela Rabulea <mirela.rabulea@nxp.com<mailto:mirela.rabulea@nxp.com>>;=
 Mirela Rabulea <Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@freesca=
le.com>>; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; poky@yocto=
project.org<mailto:poky@yoctoproject.org>

Cc: Nicolae Manescu <nicu.manescu@nxp.com<mailto:nicu.manescu@nxp.com>>; Ge=
orgescu, Alexandru C <alexandru.c.georgescu@intel.com<mailto:alexandru.c.ge=
orgescu@intel.com>>

Subject: Re: [yocto] using Hob to run images on a custom simulator, other t=
han qemu







On 22/12/2015 11:35, "Mirela Rabulea" <mirela.rabulea@nxp.com<mailto:mirela=
.rabulea@nxp.com>> wrote:



>Hi Bel=E9n,

>Thanks for the answer. Is there a set of tests that would ensure there

>are no regressions? Where can it be found?



These are the test cases I can find in Testopia:



https://bugzilla.yoctoproject.org/tr_list_cases.cgi?searchstr=3Dhob&current=
_t

ab=3Dcase&summary_type=3Danywordssubstr&summary=3Dhob&field-1-0-0=3Dsummary=
&type-1-

0-0=3Danywordssubstr&value-1-0-0=3Dhob



Hopefully someone from QA can provide more details on how to run them.



If you want any input on how to present the new options in the UI, let me k=
now. I'll be happy to help.



Cheers



Bel=E9n



>

>Thanks,

>Mirela

>

>-----Original Message-----

>From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]

>Sent: Monday, December 21, 2015 1:26 PM

>To: Mirela Rabulea <Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@fre=
escale.com>>;

>yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; poky@yoctoproject.o=
rg<mailto:poky@yoctoproject.org>

>Cc: nicolae.manescu@nxp.com<mailto:nicolae.manescu@nxp.com>

>Subject: Re: [yocto] using Hob to run images on a custom simulator,

>other than qemu

>

>

>

>On 18/12/2015 16:05, "yocto-bounces@yoctoproject.org on behalf of

>Mirela Rabulea" <yocto-bounces@yoctoproject.org on behalf of

>Mirela.Rabulea@freescale.com<mailto:Mirela.Rabulea@freescale.com>> wrote:

>

>>

>>

>>Hello yocto world

>>J

>>

>>

>>

>>This is my first message on any yocto list, I=B9m not sure which list to

>>address, so I choose the ones which seemed the most generic and suited

>>to my purpose. Please redirect me if a more specific list is better

>>suited to ask this question.

>>

>>

>>

>>The problem I see at present is: there is one single button in Hob,

>>=B3Run Image=B2, which is active only for qemu images, and it is

>>triggering the execution of the =B3poky\scripts\runqemu=B2 script. Please

>>scroll down to the picture at end of this email to see what I=B9m talking=
 about.

>>

>>

>>

>>The question I want to ask is if it would be acceptable to add more

>>buttons to the =B3Image details=B2 dialog (or a new dialog to pop-up when

>>=B3Run Image=B2 is clicked), in order to allow the customization of the

>>simulator to be launched, basically to specify the location & command

>>line of such custom simulator. Who may advise in this matter? I am

>>willing to contribute with changes.

>

>Hi Mirela,

>

>I have asked a few people about this, because Hob is pretty much

>deprecated at this point (it's being replaced by a web interface called

>Toaster). They replied they would be willing to merge changes to Hob,

>as long as they can be sure they won't cause any regressions.

>

>I hope this helps.

>

>Cheers

>

>Bel=E9n

>

>>

>>

>>

>>The changes I anticipate would be necessary are:

>>

>>1.

>>Changes in the GUI, somewhere in the python scripts from

>>=B3poky\bitbake\lib\bb\ui\crumbs\=B2, especially in imagedetailspage.py,

>>maybe in builder.py

>>

>>2.

>>Be more permissive with the types of images that are allowed to run.

>>Currently, there are these restrictions related to the name and

>>extension of the image in =B3poky\meta\classes\ image_types.bbclass=B2,

>>these need to be extended/customized:

>>

>>RUNNABLE_IMAGE_TYPES ?=3D "ext2 ext3"

>>

>>RUNNABLE_MACHINE_PATTERNS ?=3D "qemu"

>>

>>

>>

>>

>>BTW, here is how Hob =B3Image details=B2 dialog currently looks like, see

>>attached picture, note that the highlighted =B3Run Image=B2 button shows

>>up only for qemu images.

>>

>>

>>Regards,

>>

>>Mirela

>>

>>

>>

>>

>



--_000_1FFB62CE8AEB0D4298B51122D8903E962619259Cirsmsx110gercor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1026561941;
	mso-list-type:hybrid;
	mso-list-template-ids:1096983880 -1823941040 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:13;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Alex,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Can you help Mirela?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">AlexG<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b>From:</b> Mir=
ela Rabulea [mailto:mirela.rabulea@nxp.com]
<br>
<b>Sent:</b> Friday, January 15, 2016 2:36 PM<br>
<b>To:</b> Georgescu, Alexandru C &lt;alexandru.c.georgescu@intel.com&gt;; =
Barros Pena, Belen &lt;belen.barros.pena@intel.com&gt;; Mirela Rabulea &lt;=
Mirela.Rabulea@freescale.com&gt;; yocto@yoctoproject.org; poky@yoctoproject=
.org<br>
<b>Cc:</b> Nicolae Manescu &lt;nicu.manescu@nxp.com&gt;<br>
<b>Subject:</b> RE: [yocto] using Hob to run images on a custom simulator, =
other than qemu<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hi Alex, Belen,<o:p></o:p></p>
<p class=3D"MsoPlainText">Is there some pre-setup necessary in order to run=
 the HOB tests you mentioned?<o:p></o:p></p>
<p class=3D"MsoPlainText">I did the following:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Cloned poky repository, from master: <span style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white">
<a href=3D"git://git.yoctoproject.org/poky">git://git.yoctoproject.org/poky=
</a></span><o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>Tried to run a test-case which seems the most relat=
ed to my changes, &nbsp;&quot;Case 66 - Run image in Hob.&quot; from
<a href=3D"https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3478"=
>https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3D3478</a><o:p></=
o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>With case 66, at first I was not able to build an i=
mage, due to the fact my homedir is on NFS, so I hacked meta/classes/sanity=
.bbclass, commented out &#8220;status.addresult(check_not_nfs(tmpdir, &quot=
;TMPDIR&quot;))&#8221;. After that, I was able to build
 qemu ppc, core-image-minimal, but it took a lot of time, cannot say exactl=
y how much, but for sure it did exceed 8 hours (it was trial and error for =
me, with disk quota exceeded, deleting to free space and try again). After =
the image was build, when running
 the image I get permission errors when running runqemu-ifup (see attached =
picture), I think it is caused by my homedir being on NFS.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.75in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
</span></span><![endif]>With my changes applied on the poky repository, I r=
un again case 66, I found 1 issue which I fixed, and now the behavior is th=
e same. With qemu image I get up to the point with permission errors when r=
unning runqemu-ifup, while with
 my custom image and run script, I can run successfully.<o:p></o:p></p>
<p class=3D"MsoPlainText">Unfortunately, at this moment I don&#8217;t have =
enough quota on a non-NFS location. I can try to work around that, or expec=
t until someone else performs a weekly test run. I am pretty confident now =
that my changes will not affect the current
 regression tests.<o:p></o:p></p>
<p class=3D"MsoPlainText">I would like to get the changes merged into YP 2.=
1 M2, RC1, which I see has the following schedule:<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">Release Candidate and =
Milestone Release schedule (Full Pass QA test follows every RC build)
<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=3D"ba=
ckground:yellow;mso-highlight:yellow">
RC1: 1/25/16</span> <o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RC2: 2/1/16 <o:p>=
</o:p></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in">&#8226;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M2 release: 2/12/=
16<o:p></o:p></p>
<p class=3D"MsoPlainText"><b>Considering the above, how should I proceed ne=
xt? <o:p>
</o:p></b></p>
<p class=3D"MsoPlainText">Should I log a bug/feature in Bugzilla and submit=
 a patch for it? Do I need some special membership to log bugs and submit p=
atches?<o:p></o:p></p>
<p class=3D"MsoPlainText">The patch should be on which list/repo? Poky or b=
itbake (my modified files are in poky\bitbake\lib\bb\ui\crumbs)?<o:p></o:p>=
</p>
<p class=3D"MsoPlainText">May I rely on some weekly test run, or do I need =
to work-out my NFS issues?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks for your help,<o:p></o:p></p>
<p class=3D"MsoPlainText">Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Georgescu, Alexandru C [<a href=3D"mailto:alexandru.c.georgescu@intel=
.com">mailto:alexandru.c.georgescu@intel.com</a>]
<br>
Sent: Wednesday, December 23, 2015 1:17 PM<br>
To: Barros Pena, Belen &lt;<a href=3D"mailto:belen.barros.pena@intel.com">b=
elen.barros.pena@intel.com</a>&gt;; Mirela Rabulea &lt;<a href=3D"mailto:mi=
rela.rabulea@nxp.com">mirela.rabulea@nxp.com</a>&gt;; Mirela Rabulea &lt;<a=
 href=3D"mailto:Mirela.Rabulea@freescale.com">Mirela.Rabulea@freescale.com<=
/a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; <a hr=
ef=3D"mailto:poky@yoctoproject.org">
poky@yoctoproject.org</a><br>
Cc: Nicolae Manescu &lt;<a href=3D"mailto:nicu.manescu@nxp.com">nicu.manesc=
u@nxp.com</a>&gt;<br>
Subject: RE: [yocto] using Hob to run images on a custom simulator, other t=
han qemu<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText">Currently there are two test runs that ensure the=
 HOB is functioning correctly, as following:<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a href=3D"https://bugzilla.yoc=
toproject.org/tr_show_run.cgi?run_id=3D3479">
<span style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D3479</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <a href=3D"https://bugzilla.yoc=
toproject.org/tr_show_run.cgi?run_id=3D3478">
<span style=3D"color:windowtext;text-decoration:none">https://bugzilla.yoct=
oproject.org/tr_show_run.cgi?run_id=3D3478</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">We also have some of the test cases automated can=
 be run, but as Belen mentioned earlier, HOB is being deprecated so we woul=
d have to see if they still run correctly on the latest master. Keep me pos=
ted if you want to run them, maybe
 we can help.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Cheers,<o:p></o:p></p>
<p class=3D"MsoPlainText">AlexG<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">From: Barros Pena, Belen <o:p></o:p></p>
<p class=3D"MsoPlainText">Sent: Wednesday, December 23, 2015 12:21 PM<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">To: Mirela Rabulea &lt;<a href=3D"mailto:mirela.r=
abulea@nxp.com"><span style=3D"color:windowtext;text-decoration:none">mirel=
a.rabulea@nxp.com</span></a>&gt;; Mirela Rabulea &lt;<a href=3D"mailto:Mire=
la.Rabulea@freescale.com"><span style=3D"color:windowtext;text-decoration:n=
one">Mirela.Rabulea@freescale.com</span></a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"color:windowtext;t=
ext-decoration:none">yocto@yoctoproject.org</span></a>;
<a href=3D"mailto:poky@yoctoproject.org"><span style=3D"color:windowtext;te=
xt-decoration:none">poky@yoctoproject.org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">Cc: Nicolae Manescu &lt;<a href=3D"mailto:nicu.ma=
nescu@nxp.com"><span style=3D"color:windowtext;text-decoration:none">nicu.m=
anescu@nxp.com</span></a>&gt;; Georgescu, Alexandru C &lt;<a href=3D"mailto=
:alexandru.c.georgescu@intel.com"><span style=3D"color:windowtext;text-deco=
ration:none">alexandru.c.georgescu@intel.com</span></a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">Subject: Re: [yocto] using Hob to run images on a=
 custom simulator, other than qemu<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">On 22/12/2015 11:35, &quot;Mirela Rabulea&quot; &=
lt;<a href=3D"mailto:mirela.rabulea@nxp.com"><span style=3D"color:windowtex=
t;text-decoration:none">mirela.rabulea@nxp.com</span></a>&gt; wrote:<o:p></=
o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Hi Bel=E9n,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Thanks for the answer. Is there a set of test=
s that would ensure there
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;are no regressions? Where can it be found?<o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">These are the test cases I can find in Testopia:<=
o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><a href=3D"https://bugzilla.yoctoproject.org/tr_l=
ist_cases.cgi?searchstr=3Dhob&amp;current_t"><span style=3D"color:windowtex=
t;text-decoration:none">https://bugzilla.yoctoproject.org/tr_list_cases.cgi=
?searchstr=3Dhob&amp;current_t</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">ab=3Dcase&amp;summary_type=3Danywordssubstr&amp;s=
ummary=3Dhob&amp;field-1-0-0=3Dsummary&amp;type-1-<o:p></o:p></p>
<p class=3D"MsoPlainText">0-0=3Danywordssubstr&amp;value-1-0-0=3Dhob<o:p></=
o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hopefully someone from QA can provide more detail=
s on how to run them.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">If you want any input on how to present the new o=
ptions in the UI, let me know. I'll be happy to help.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Cheers<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Bel=E9n<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Thanks,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;-----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;From: Barros Pena, Belen [<a href=3D"mailto:b=
elen.barros.pena@intel.com"><span style=3D"color:windowtext;text-decoration=
:none">mailto:belen.barros.pena@intel.com</span></a>]<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Sent: Monday, December 21, 2015 1:26 PM<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt;To: Mirela Rabulea &lt;<a href=3D"mailto:Mire=
la.Rabulea@freescale.com"><span style=3D"color:windowtext;text-decoration:n=
one">Mirela.Rabulea@freescale.com</span></a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<a href=3D"mailto:yocto@yoctoproject.org"><sp=
an style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org</=
span></a>;
<a href=3D"mailto:poky@yoctoproject.org"><span style=3D"color:windowtext;te=
xt-decoration:none">poky@yoctoproject.org</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Cc: <a href=3D"mailto:nicolae.manescu@nxp.com=
"><span style=3D"color:windowtext;text-decoration:none">nicolae.manescu@nxp=
.com</span></a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Subject: Re: [yocto] using Hob to run images =
on a custom simulator,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;other than qemu<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;On 18/12/2015 16:05, &quot;yocto-bounces@yoct=
oproject.org on behalf of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Mirela Rabulea&quot; &lt;yocto-bounces@yoctop=
roject.org on behalf of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<a href=3D"mailto:Mirela.Rabulea@freescale.co=
m"><span style=3D"color:windowtext;text-decoration:none">Mirela.Rabulea@fre=
escale.com</span></a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Hello yocto world<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;J<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;This is my first message on any yocto lis=
t, I=B9m not sure which list to
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;address, so I choose the ones which seeme=
d the most generic and suited
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;to my purpose. Please redirect me if a mo=
re specific list is better
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;suited to ask this question.<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The problem I see at present is: there is=
 one single button in Hob,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3Run Image=B2, which is active only for=
 qemu images, and it is
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;triggering the execution of the =B3poky\s=
cripts\runqemu=B2 script. Please
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;scroll down to the picture at end of this=
 email to see what I=B9m talking about.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The question I want to ask is if it would=
 be acceptable to add more
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;buttons to the =B3Image details=B2 dialog=
 (or a new dialog to pop-up when
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3Run Image=B2 is clicked), in order to =
allow the customization of the
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;simulator to be launched, basically to sp=
ecify the location &amp; command
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;line of such custom simulator. Who may ad=
vise in this matter? I am
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;willing to contribute with changes.<o:p><=
/o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Hi Mirela,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;I have asked a few people about this, because=
 Hob is pretty much
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;deprecated at this point (it's being replaced=
 by a web interface called
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;Toaster). They replied they would be willing =
to merge changes to Hob,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;as long as they can be sure they won't cause =
any regressions.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;I hope this helps.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Cheers<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;Bel=E9n<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;The changes I anticipate would be necessa=
ry are:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Changes in the GUI, somewhere in the pyth=
on scripts from
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;=B3poky\bitbake\lib\bb\ui\crumbs\=B2, esp=
ecially in imagedetailspage.py,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;maybe in builder.py<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o=
:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Be more permissive with the types of imag=
es that are allowed to run.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Currently, there are these restrictions r=
elated to the name and
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;extension of the image in =B3poky\meta\cl=
asses\ image_types.bbclass=B2,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;these need to be extended/customized:<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;RUNNABLE_IMAGE_TYPES ?=3D &quot;ext2 ext3=
&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;RUNNABLE_MACHINE_PATTERNS ?=3D &quot;qemu=
&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;BTW, here is how Hob =B3Image details=B2 =
dialog currently looks like, see
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;attached picture, note that the highlight=
ed =B3Run Image=B2 button shows
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;up only for qemu images.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;Mirela<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1FFB62CE8AEB0D4298B51122D8903E962619259Cirsmsx110gercor_--
