Return-Path: <yang.y.wang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B067E0079A; Wed,  3 Sep 2014 10:52:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF02E0082B
	for <poky@yoctoproject.org>; Wed,  3 Sep 2014 10:52:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Sep 2014 10:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,459,1406617200"; 
	d="scan'208,217";a="597433747"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga002.jf.intel.com with ESMTP; 03 Sep 2014 10:52:14 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 3 Sep 2014 10:52:13 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
	fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 3 Sep 2014 10:52:13 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.17]) by
	shsmsx102.ccr.corp.intel.com ([169.254.2.246]) with mapi id
	14.03.0195.001; Thu, 4 Sep 2014 01:52:11 +0800
From: "Wang, Yang Y" <yang.y.wang@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: populate_sdk_image function removed in Yocto1.6.1?
Thread-Index: Ac/Hn11KIWMqFN+GRiGUmBVs3VlF3g==
Date: Wed, 3 Sep 2014 17:52:10 +0000
Message-ID: <B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4@SHSMSX104.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: populate_sdk_image function removed in Yocto1.6.1?
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
X-List-Received-Date: Wed, 03 Sep 2014 17:52:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4SHSMSX104ccrcor_"

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4SHSMSX104ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

  I got an issue for the secondary toolchain support with Yocto 1.6.1. In t=
he previous version, e.g. Yocto1.5 poky-dora, I has the function to overwri=
te the environment script:



populate_sdk_image_append() {

         toolchain_create_sdk_env_script_alt ${SDK_OUTPUT}/${SDKPATH}/envir=
onment-setup-${REAL_MULTIMACH_TARGET_SYS}

}



The function populate_sdk_image is defined in the meta/classes/populate_sdk=
_base.bbclass

This works well for Yocto 1.5



However in the Yocto 1.6, the function populate_sdk_image was removed from =
populate_sdk_base.bbclass.

So the populate_sdk_image_append() won't work for my class and my environme=
nt scripts will not be generated.

Is this expected changes in the Yocto1.6? In Yocto1.6, which function can I=
 use with append() to generate my environment file? I checked populate_sdk_=
append() but seems not work.

Could anyone help advise?
Thank you.
-Yang


--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4SHSMSX104ccrcor_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp; I got an issue for th=
e secondary toolchain support with Yocto 1.6.1. In the previous version, e.=
g. Yocto1.5 poky-dora, I has the function to overwrite the environment scri=
pt:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US" style=3D"background:yellow;m=
so-highlight:yellow">populate_sdk_image_append()</span><span lang=3D"EN-US"=
> {<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; toolchain_create_sdk_env_script_alt ${SDK_OUTPUT}/${SD=
KPATH}/environment-setup-${REAL_MULTIMACH_TARGET_SYS}<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">The function populate_sdk_im=
age is defined in the meta/classes/populate_sdk_base.bbclass<o:p></o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">This works well for Yocto 1.=
5<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">However in the Yocto 1.6, th=
e function populate_sdk_image was removed from populate_sdk_base.bbclass.<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">So the populate_sdk_image_ap=
pend() won</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier Ne=
w&quot;">&#8217;</span><span lang=3D"EN-US">t work for my class and my envi=
ronment scripts will not be generated.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Is this expected changes in =
the Yocto1.6? In Yocto1.6, which function can I use with append() to genera=
te my environment file? I checked populate_sdk_append() but seems not work.=
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Could anyone help advise?<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4SHSMSX104ccrcor_--
