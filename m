Return-Path: <prvs=771019ac70=tflorea@curtisswright.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A4EE0146A; Thu, 21 Jun 2018 03:18:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.154.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1306 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jun 2018 03:18:04 PDT
Received: from mx0b-002bf101.pphosted.com (mx0b-002bf101.pphosted.com
	[148.163.154.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 209C4E00B6C
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 03:18:03 -0700 (PDT)
Received: from pps.filterd (m0123027.ppops.net [127.0.0.1])
	by mx0b-002bf101.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w5L9rA5q029574
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 05:56:17 -0400
Received: from usegtbei01.atl.cw.local ([67.23.50.70])
	by mx0b-002bf101.pphosted.com with ESMTP id 2jqvca8mqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 05:56:17 -0400
Received: from [10.102.200.86] (helo=USEEDGE1302.curtisswright.com)
	by usegtbei01.atl.cw.local with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.88)
	(envelope-from <tflorea@curtisswright.com>) id 1fVwK8-00026N-KG
	for poky@yoctoproject.org; Thu, 21 Jun 2018 05:56:16 -0400
Received: from USEiHUB1302.ATL.CW.LOCAL (10.100.42.32) by
	USEEDGE1302.curtisswright.com (10.102.200.86) with Microsoft SMTP
	Server (TLS) id 15.0.1365.1; Thu, 21 Jun 2018 05:56:15 -0400
Received: from eurmail1302.ATL.CW.LOCAL (10.210.42.82) by
	USEiHUB1302.ATL.CW.LOCAL (10.100.42.46) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Thu, 21 Jun 2018 05:56:16 -0400
Received: from eurmail1301.ATL.CW.LOCAL (10.210.42.81) by
	eurmail1302.ATL.CW.LOCAL (10.210.42.82) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Thu, 21 Jun 2018 10:56:15 +0100
Received: from eurmail1301.ATL.CW.LOCAL ([fe80::f49f:db02:3d20:7c5b]) by
	eurmail1301.ATL.CW.LOCAL ([fe80::f49f:db02:3d20:7c5b%17]) with mapi id
	15.00.1365.000; Thu, 21 Jun 2018 10:56:15 +0100
From: "Florea, Tudor" <tflorea@curtisswright.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: SRCREV_FORMAT does not work as expected
Thread-Index: AdQJQAHjOqkBSgJZRIugKUeZ30jLfg==
Date: Thu, 21 Jun 2018 09:56:15 +0000
Message-ID: <3432507f73cb4aa0af4f4e80464ac43a@eurmail1301.ATL.CW.LOCAL>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.210.42.148]
MIME-Version: 1.0
X-MTA-device-Scanned: Yes (on usegtbei01.atl.cw.local) 6060 bytes in 0 secs
X-UOID: FC422131-F51C-4D70-8D09-C92CA4737A7B
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-06-21_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=674 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1805220000 definitions=main-1806210111
Subject: SRCREV_FORMAT does not work as expected
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
X-List-Received-Date: Thu, 21 Jun 2018 10:18:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3432507f73cb4aa0af4f4e80464ac43aeurmail1301ATLCWLOCAL_"

--_000_3432507f73cb4aa0af4f4e80464ac43aeurmail1301ATLCWLOCAL_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
It seems that there is a flaw in the way the recipe with more than one SCM =
is fetched.
I take the cross-localedef-native_2.26.bb recipe as an example.

If I change in the recipe:
SRCREV_glibc ?=3D "some-new-revision"
and try to rebuild, instead of attempting to fetch the new revision (and fa=
il as "some-new-revision" cannot be fetched) "bitbake cross-localedef-nativ=
e" command finishes  without re-running any task.
From bitbake -e the cross-localedef-native output I can see:
SRCREV=3D"INVALID"
SRCREV_FORMAT=3D"glibc_localedef"
SRCREV_glibc=3D" some-new-revision"
SRCREV_localedef=3D"dfb4afe551c6c6e94f9cc85417bd1f582168c843"

One workaround for this is to add something like do_fetch[vardeps] +=3D "SR=
CPV" or  do_fetch[vardeps] +=3D " SRCREV_glibc SRCREV_localedef"  in each r=
ecipe using multiple SCM but I think there might be a better fix for this.

Should we add
do_fetch[vardeps] +=3D "SRCPV"
in base.bbclass?

Tudor Florea
Software Development Engineer

Industrial Division
Curtiss-Wright
15, Enterprise Way, Aviation Park West,
Bournemouth Airport, CHRISTCHURCH, Dorset, BH23 6HH, United Kingdom
T: +441202034125
tflorea@curtisswright.com<mailto:tflorea@curtisswright.com>

----------------------------------------------------------------------
This e-mail and any files transmitted with it are proprietary and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have reason to believe that you have received this e-mail in error, =
please notify the sender and destroy this e-mail and any attached files. Pl=
ease note that any views or opinions presented in this e-mail are solely th=
ose of the author and do not necessarily represent those of the Curtiss-Wri=
ght Corporation or any of its subsidiaries. Documents attached hereto may c=
ontain technology subject to the U.S. Export Regulations. Recipient is sole=
ly responsible for ensuring that any re-export, transfer or disclosure of t=
his information is in accordance with U.S. Export Regulations. The recipien=
t should check this e-mail and any attachments for the presence of viruses.=
 Curtiss-Wright Corporation and its subsidiaries accept no liability for an=
y damage caused by any virus transmitted by this e-mail.

--_000_3432507f73cb4aa0af4f4e80464ac43aeurmail1301ATLCWLOCAL_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal">It seems that there is a flaw in the way the recipe =
with more than one SCM is fetched.<o:p></o:p></p>
<p class=3D"MsoNormal">I take the cross-localedef-native_2.26.bb recipe as =
an example.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I change in the recipe:<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_glibc ?=3D &quot;some-new-revision&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">and try to rebuild, instead of attempting to fetch t=
he new revision (and fail as &#8220;some-new-revision&#8221; cannot be fetc=
hed) &#8220;bitbake cross-localedef-native&#8221; command finishes&nbsp; wi=
thout re-running any task.<o:p></o:p></p>
<p class=3D"MsoNormal">From bitbake -e the cross-localedef-native output I =
can see:<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV=3D&quot;INVALID&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRCREV_FORMAT=3D&quot;glibc_localedef&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal">SRCREV_glibc=3D&quot; some-new-revision&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal">SRCREV_localedef=3D&quot;dfb4afe551c6c6e94f9cc85417b=
d1f582168c843&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One workaround for this is to add something like do_=
fetch[vardeps] &#43;=3D &quot;SRCPV&#8221; or &nbsp;do_fetch[vardeps] &#43;=
=3D &quot; SRCREV_glibc SRCREV_localedef&#8221; &nbsp;in each recipe using =
multiple SCM but I think there might be a better fix for this.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Should we add <o:p></o:p></p>
<p class=3D"MsoNormal">do_fetch[vardeps] &#43;=3D &quot;SRCPV&#8221; <o:p><=
/o:p></p>
<p class=3D"MsoNormal">in base.bbclass?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><b><s=
pan style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black;mso-farea=
st-language:EN-GB">Tudor Florea<br>
</span></b><span style=3D"font-size:10.0pt;line-height:106%;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black;mso-fareast-language:EN-GB">Software =
Development Engineer<br>
<br>
Industrial Division<br>
<b>Curtiss-Wright<br>
</b>15, Enterprise Way, Aviation Park West, <o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot;,s=
ans-serif;color:black;mso-fareast-language:EN-GB">Bournemouth Airport, CHRI=
STCHURCH, Dorset, BH23 6HH, United Kingdom<br>
T: &#43;441202034125<br>
<a href=3D"mailto:tflorea@curtisswright.com">tflorea@curtisswright.com</a><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<HR>This e-mail and any files transmitted with it are proprietary and inten=
ded solely for the use of the individual or entity to whom they are address=
ed. If you have reason to believe that you have received this e-mail in err=
or, please notify the sender and destroy this e-mail and any attached files=
. Please note that any views or opinions presented in this e-mail are solel=
y those of the author and do not necessarily represent those of the Curtiss=
-Wright Corporation or any of its subsidiaries. Documents attached hereto m=
ay contain technology subject to the U.S. Export Regulations. Recipient is =
solely responsible for ensuring that any re-export, transfer or disclosure =
of this information is in accordance with U.S. Export Regulations. The reci=
pient should check this e-mail and any attachments for the presence of viru=
ses. Curtiss-Wright Corporation and its subsidiaries accept no liability fo=
r any damage caused by any virus transmitted by this e-mail.<BR>
</body>
</html>

--_000_3432507f73cb4aa0af4f4e80464ac43aeurmail1301ATLCWLOCAL_--
