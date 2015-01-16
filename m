Return-Path: <krzysztof.m.sywula@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAF64E00894; Thu, 15 Jan 2015 18:05:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 836BBE00757
	for <poky@yoctoproject.org>; Thu, 15 Jan 2015 18:04:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 15 Jan 2015 17:59:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,407,1418112000"; 
	d="scan'208,217";a="651902857"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2015 18:04:53 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 15 Jan 2015 18:04:52 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
	ORSMSX157.amr.corp.intel.com (10.22.240.23) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 15 Jan 2015 18:04:52 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.131]) by
	fmsmsx115.amr.corp.intel.com ([169.254.4.170]) with mapi id
	14.03.0195.001; Thu, 15 Jan 2015 18:04:51 -0800
From: "Sywula, Krzysztof M" <krzysztof.m.sywula@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: toolchain build without dbg pkgs
Thread-Index: AdAxMMvPXV0zILyATxaIzMo4ofcg9A==
Date: Fri, 16 Jan 2015 02:04:51 +0000
Message-ID: <6741EAAB26B57F4995668065CB62D86B490B2B69@fmsmsx116.amr.corp.intel.com>
Accept-Language: en-GB, pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: toolchain build without dbg pkgs
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
X-List-Received-Date: Fri, 16 Jan 2015 02:05:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6741EAAB26B57F4995668065CB62D86B490B2B69fmsmsx116amrcor_"

--_000_6741EAAB26B57F4995668065CB62D86B490B2B69fmsmsx116amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys, we are considering getting rid of debug packages in toolchain due =
to size constrains. What's the trick to remove them?

Thanks,
Krzysztof Sywula

--_000_6741EAAB26B57F4995668065CB62D86B490B2B69fmsmsx116amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys, we are considering getting rid of debug pac=
kages in toolchain due to size constrains. What&#8217;s the trick to remove=
 them?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<br>
Krzysztof Sywula<o:p></o:p></p>
</div>
</body>
</html>

--_000_6741EAAB26B57F4995668065CB62D86B490B2B69fmsmsx116amrcor_--
