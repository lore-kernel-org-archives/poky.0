Return-Path: <Tim.Johnson@calix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EC9DE00DB7; Tue,  6 Feb 2018 15:18:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.163.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 910 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Feb 2018 15:18:46 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp0111.outbound.protection.outlook.com
	[207.46.163.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FBDEE00A44
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 15:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=CALIX.onmicrosoft.com; 
	s=selector1-calix-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=80xEbwGQXLodABkGw9XyZ+K0rj5SiL6UsM7QSIp7Wp0=;
	b=WNUGOX+CiIKCYoRqYmmT22jqSCvCDdXLWKFawQABJN4zfziQNtPlf7tgZpdkCFmGH+4MrFvTP7yRakfqcVsuWeT2aIYZuWQeRbrpoSyXS7sjYf918UajD56KxgwhPSHVD1L56Chm09SNI9/9faIzyW4K4NEOERLn/8POKSy2Zpw=
Received: from DM5PR05MB2955.namprd05.prod.outlook.com (10.168.176.143) by
	DM5PR05MB3017.namprd05.prod.outlook.com (10.168.177.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.485.3; Tue, 6 Feb 2018 23:03:35 +0000
Received: from DM5PR05MB2955.namprd05.prod.outlook.com ([10.168.176.143]) by
	DM5PR05MB2955.namprd05.prod.outlook.com ([10.168.176.143]) with mapi id
	15.20.0485.009; Tue, 6 Feb 2018 23:03:35 +0000
From: Tim Johnson <Tim.Johnson@calix.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Sharing Header Files between Kernel Modules
Thread-Index: AdOfnmW2jq6CpaKZSWKokVvl+WjUGQ==
Date: Tue, 6 Feb 2018 23:03:34 +0000
Message-ID: <DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0@DM5PR05MB2955.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Tim.Johnson@calix.com; 
x-originating-ip: [208.201.250.2]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR05MB3017;
	7:4hAueGiPZYdVzuQ+c0NL5a7dyYu1XCxFvNUj/xjtZDEgL5YetWm1IJPLuBBgBTrKuFj2xNdHW7DeVVHihcExuiznqTbIRxecU9LxiJ/W3pDYzM9nPw6uj6jnH+2PpmoWTvWC+zt6BXrJUK407rYRiq4gvRyXHv6aQs+FO5r6ekgZNJAN4sj8Dt5C66buZD1uwGLLcXVc1wBMzwEukakoiSMRr7Onjy3AETvW5G74tyW1PVFbwiXR69E7X88RpF1G
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 3c48bea7-bcd3-41d9-6ce9-08d56db5d9a2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:DM5PR05MB3017; 
x-ms-traffictypediagnostic: DM5PR05MB3017:
x-microsoft-antispam-prvs: <DM5PR05MB30170B4D456B7FA6480AD647E5FD0@DM5PR05MB3017.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3231101)(2400082)(944501161)(93006095)(93001095)(3002001)(10201501046)(6041288)(20161123562045)(20161123564045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011);
	SRVR:DM5PR05MB3017; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB3017; 
x-forefront-prvs: 0575F81B58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(396003)(366004)(39850400004)(39380400002)(189003)(199004)(3660700001)(478600001)(3280700002)(316002)(55016002)(7696005)(54896002)(6306002)(68736007)(5660300001)(53936002)(14454004)(9686003)(790700001)(66066001)(8936002)(5630700001)(6116002)(72206003)(6916009)(105586002)(3846002)(99286004)(7736002)(2900100001)(33656002)(74316002)(106356001)(2351001)(6506007)(186003)(6436002)(77096007)(26005)(1730700003)(81156014)(8676002)(5640700003)(97736004)(81166006)(2906002)(2501003)(102836004)(25786009)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR05MB3017;
	H:DM5PR05MB2955.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: calix.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: GQ8znXnlVN4etwhErlY6gueZmUBQP/JYNcWKypzOK+mYarOE4YUS6NqqEO8/zEqbIzEpJiKWOcULZR+mrm6c7g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: calix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c48bea7-bcd3-41d9-6ce9-08d56db5d9a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2018 23:03:34.9976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ffae2e5-6ff0-4510-bbf3-ca842d7ca55e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB3017
Subject: Sharing Header Files between Kernel Modules
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
X-List-Received-Date: Tue, 06 Feb 2018 23:18:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0DM5PR05MB2955namp_"

--_000_DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0DM5PR05MB2955namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am using Morty (2.2).

I have several kernel modules with header files that need to accessed by ot=
her kernel modules when building.

Where can I install the header files so:

  1.  they can be found by other kernel modules while compiling
  2.  they will be created during an sstate build

I was able to install the header files in: '${STAGING_KERNEL_DIR}/include/l=
inux/exa' (in work-shared). The other modules were able to find the header =
files, but that approach breaks the build from sstates.

Tim

--_000_DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0DM5PR05MB2955namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1291474096;
	mso-list-type:hybrid;
	mso-list-template-ids:1599997300 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<p class=3D"MsoNormal">I am using Morty (2.2).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have several kernel modules with header files that=
 need to accessed by other kernel modules when building.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Where can I install the header files so:<o:p></o:p><=
/p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">they can be found by other kernel modules while compiling<o:p></o:p><=
/li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 lev=
el1 lfo1">they will be created during an sstate build<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was able to install the header files in: &#8216;${=
STAGING_KERNEL_DIR}/include/linux/exa&#8217; (in work-shared). The other mo=
dules were able to find the header files, but that approach breaks the buil=
d from sstates.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tim<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM5PR05MB29558E5FAE0822DBB84D79D5E5FD0DM5PR05MB2955namp_--
