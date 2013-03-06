Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F292DE014D8
	for <poky@lists.yoctoproject.org>; Tue,  5 Mar 2013 17:19:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Mar 2013 17:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,791,1355126400"; 
	d="scan'208,217";a="295471691"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2013 17:19:19 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.239]) with mapi id
	14.01.0355.002; Tue, 5 Mar 2013 17:19:19 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: poky <poky@lists.yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [poky] Is there a guide for adding a board to the yocto system?
Thread-Index: Ac4Zq73ebsSVOmYxS6KhbP6fP9JWlAAn3/MAABC9OGA=
Date: Wed, 6 Mar 2013 01:19:18 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796F34862D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: FW: Is there a guide for adding a board to the yocto system?
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
X-List-Received-Date: Wed, 06 Mar 2013 01:19:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB123796F34862DORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123796F34862DORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Isn't this a matter of creating a BSP layer for the desired board?  If so, =
doesn't one try to find a similar board from one of the supported/released =
yocto BSPs and then modify that to create the custom layer?

Scott

From: Scott Rifenbark [mailto:srifenbark@gmail.com]
Sent: Tuesday, March 05, 2013 5:16 PM
To: Rifenbark, Scott M
Subject: Fwd: [poky] Is there a guide for adding a board to the yocto syste=
m?


---------- Forwarded message ----------
From: Steven Grunza <sgrunza@ctdi.com<mailto:sgrunza@ctdi.com>>
Date: Tue, Mar 5, 2013 at 8:14 AM
Subject: [poky] Is there a guide for adding a board to the yocto system?
To: poky@yoctoproject.org<mailto:poky@yoctoproject.org>


I would like to add a board to the yocto system such that instead of
having a line in build/conf/local.conf that reads

MACHINE ?=3D "beagleboard"

It would be

MACHINE ?=3D "my_board_name"


Is there a guide on how to do this?

------------------------------------------------------------------------
---------------------------

Steven Grunza

_______________________________________________
poky mailing list
poky@yoctoproject.org<mailto:poky@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/poky


--_000_41DEA4B02DBDEF40A0F3B6D0DDB123796F34862DORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Isn&#8217;t this a matter=
 of creating a BSP layer for the desired board?&nbsp; If so, doesn&#8217;t =
one try to find a similar board from one of the supported/released yocto
 BSPs and then modify that to create the custom layer?<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Scott Ri=
fenbark [mailto:srifenbark@gmail.com]
<br>
<b>Sent:</b> Tuesday, March 05, 2013 5:16 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Subject:</b> Fwd: [poky] Is there a guide for adding a board to the yoct=
o system?<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">---------- Forwarded message ----------<br>
From: <b>Steven Grunza</b> &lt;<a href=3D"mailto:sgrunza@ctdi.com">sgrunza@=
ctdi.com</a>&gt;<br>
Date: Tue, Mar 5, 2013 at 8:14 AM<br>
Subject: [poky] Is there a guide for adding a board to the yocto system?<br=
>
To: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<br>
<br>
I would like to add a board to the yocto system such that instead of<br>
having a line in build/conf/local.conf that reads<br>
<br>
MACHINE ?=3D &quot;beagleboard&quot;<br>
<br>
It would be<br>
<br>
MACHINE ?=3D &quot;my_board_name&quot;<br>
<br>
<br>
Is there a guide on how to do this?<br>
<br>
------------------------------------------------------------------------<br=
>
---------------------------<br>
<br>
Steven Grunza<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB123796F34862DORSMSX101amrcor_--
