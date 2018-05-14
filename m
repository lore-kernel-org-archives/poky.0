Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAB66E01937; Mon, 14 May 2018 11:18:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0056.outbound.protection.outlook.com [104.47.100.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7FF7E00E65
	for <poky@yoctoproject.org>; Mon, 14 May 2018 11:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ifUPHztK29q83UwfiS/4+CIz6adoUN8145zlWjvd4+Y=;
	b=ojTp94v4jaigVbYka5snI7dP1chq4AIJSOvaxQ+8hAis3mxsjK2UbScT642svOYi+Zcd1wu+ahoTUaCV/bo0IMb3xFZQTgJRqsW+XCqHtN3rM5pP59kXCOkHyO2SaILqHMpImYB9XiQ+c8DUb9A68AXYexy/nwkAKq1irch/k+g=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0553.INDPRD01.PROD.OUTLOOK.COM (10.164.152.9) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.755.16; Mon, 14 May 2018 18:18:42 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c0b3:9919:e79d:425d]) by
	MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c0b3:9919:e79d:425d%13]) with mapi id 15.20.0755.018;
	Mon, 14 May 2018 18:18:42 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Error:python3-jsonschema dependency issue
Thread-Index: AQHT66h1XUY6f02bl0qNw0+IZUFVWKQvhHym
Date: Mon, 14 May 2018 18:18:42 +0000
Message-ID: <MAXPR01MB03488A38E5540E5025FC94DA919C0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB0348DD3E703FEBFB4FF3DA89919C0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB0348DD3E703FEBFB4FF3DA89919C0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [183.87.61.198]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0553;
	7:bsrN0gtGUKYcloGRuBixoiNrCCRzTYR71NkA3CAK0YGfVv4TrmpC0anQ0U/+AmxybhqluLwY3WTt2TEPhS6FTT9FsYrGQODpv5ZgL+FPGvUnk3H/TN8lOCwIaKdtzYTrIIxa66nvxVbJCgSyt13ud8dYR0tCnsw0hcT+RaH9rWXjbt0EYPNAaBvd+VY0rKA1EwkA+nIJa2RxQe8/jPLcZzRY0sSnq+lH15tqkfkFLvSfQ8akmv+f2RXfmSvcuIOX
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0553; 
x-ms-traffictypediagnostic: MAXPR01MB0553:
x-microsoft-antispam-prvs: <MAXPR01MB0553F975E5F2D68D7C92DCF4919C0@MAXPR01MB0553.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(3231254)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:MAXPR01MB0553; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0553; 
x-forefront-prvs: 067270ECAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39860400002)(376002)(346002)(396003)(39380400002)(199004)(189003)(55016002)(106356001)(74316002)(229853002)(2351001)(68736007)(3280700002)(14454004)(54896002)(25786009)(2900100001)(19627405001)(6436002)(3660700001)(9686003)(2906002)(5250100002)(105586002)(5660300001)(6246003)(2501003)(66066001)(8676002)(6916009)(81166006)(7736002)(316002)(8936002)(81156014)(5640700003)(53936002)(1730700003)(6606003)(186003)(3846002)(6116002)(53546011)(72206003)(6506007)(26005)(102836004)(33656002)(2940100002)(486006)(446003)(76176011)(97736004)(7696005)(99286004)(86362001)(11346002)(59450400001)(476003)(55236004)(478600001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0553;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 5IruiuP9SoWPjWM2PBzEnwo7b9aD7hjCv4P/1lqLyZc64tSDr6OEaFw4RJH+c0r1vObzP5S3Qs+yVQpJexl325hw/88aqAtM8FwtvVYLV8/HkATiSluZtxSjDNY2yQsl9GLxyRM3yCLwzGB33NE7hzEaKR+6fyPNPfjG5CWcZH0m/o34cZaMJmYHPPiGWA+5
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 70aaae88-7dfe-47b2-a35c-08d5b9c71f99
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70aaae88-7dfe-47b2-a35c-08d5b9c71f99
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2018 18:18:42.1179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0553
Subject: Re: Error:python3-jsonschema dependency issue
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
X-List-Received-Date: Mon, 14 May 2018 18:18:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB03488A38E5540E5025FC94DA919C0MAXPR01MB0348INDP_"

--_000_MAXPR01MB03488A38E5540E5025FC94DA919C0MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Using compile time dependency solved the dependency issue and successfully =
built it.


But do we really need 'python3-strict-rfc3339' and 'python3-rfc3987 ' at co=
mpile time?


Regards,

Aditya Tayade


________________________________
From: Aditya Tayade
Sent: Monday, May 14, 2018 11:01 PM
To: poky@yoctoproject.org
Subject: Error:python3-jsonschema dependency issue


Hi,


Facing below error while build while building python3-jsonschema:


ERROR: Nothing RPROVIDES 'python3-strict-rfc3339' (but /home/builder/src/ba=
se/meta-openembedded/meta-python/recipes-devtools/python/python3-jsonschema=
_2.6.0.bb RDEPENDS on or otherwise requires it)
python3-strict-rfc3339 was skipped: it has an incompatible license: GPLv3
NOTE: Runtime target 'python3-strict-rfc3339' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python3-strict-rfc3339']
ERROR: Required build target 'python3-jsonschema' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['python3-jsonschema', 'python=
3-strict-rfc3339']

All these packages are already there in RDEPENDS of python-jsonschema.inc b=
ut still throwing above errors, don't know why.
RDEPENDS_${PN} +=3D " \
    ${PYTHON_PN}-core \
    ${PYTHON_PN}-io \
    ${PYTHON_PN}-json \
    ${PYTHON_PN}-netclient \
    ${PYTHON_PN}-numbers \
    ${PYTHON_PN}-pkgutil \
    ${PYTHON_PN}-pprint \
    ${PYTHON_PN}-rfc3987 \
    ${PYTHON_PN}-shell \
    ${PYTHON_PN}-strict-rfc3339 \
    ${PYTHON_PN}-unittest \
"

Also, tried suppressing GPLv3 license by adding below packages under whitel=
ist but no luck:
PACKAGE_EXCLUDE +=3D "python-rfc3987 python3-rfc3987 python-strict-rfc3987 =
python3-strict-rfc3987"

Could you please help.

Regards,
Aditya Tayade
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB03488A38E5540E5025FC94DA919C0MAXPR01MB0348INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Using compile time dependency sol=
ved the dependency issue and successfully built it.<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">But do we really need <span>'pyth=
on3-strict-rfc3339'</span> and
<span>'python3-rfc3987</span> ' at compile time?<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Aditya Tayade<br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Aditya Tayade<br>
<b>Sent:</b> Monday, May 14, 2018 11:01 PM<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> Error:python3-jsonschema dependency issue</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;Emoji=
Font&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols;">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quo=
t;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,=
&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Facing below error while build w=
hile building python3-jsonschema:<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div>
<div>ERROR: Nothing RPROVIDES 'python3-strict-rfc3339' (but /home/builder/s=
rc/base/meta-openembedded/meta-python/recipes-devtools/python/python3-jsons=
chema_2.6.0.bb RDEPENDS on or otherwise requires it)<br>
python3-strict-rfc3339 was skipped: it has an incompatible license: GPLv3<b=
r>
NOTE: Runtime target 'python3-strict-rfc3339' is unbuildable, removing...<b=
r>
Missing or unbuildable dependency chain was: ['python3-strict-rfc3339']<br>
ERROR: Required build target 'python3-jsonschema' has no buildable provider=
s.<br>
Missing or unbuildable dependency chain was: ['python3-jsonschema', 'python=
3-strict-rfc3339']<br>
</div>
<div>
<div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<br>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
All these packages are already there in <span><span>RDEPENDS</span> of pyth=
on-jsonschema.inc but still throwing above errors, don't know why.</span><b=
r>
</div>
RDEPENDS_${PN} &#43;=3D &quot; \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-core \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-io \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-json \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-netclient \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-numbers \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-pkgutil \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-pprint \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-rfc3987 \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-shell \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-strict-rfc3339 \<br>
&nbsp;&nbsp;&nbsp; ${PYTHON_PN}-unittest \<br>
&quot;</div>
</div>
<div><br>
</div>
</div>
Also, tried suppressing GPLv3 license by adding below packages under whitel=
ist but no luck:</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<span>PACKAGE_EXCLUDE &#43;=3D &quot;python-rfc3987 python3-rfc3987 python-=
strict-rfc3987 python3-strict-rfc3987&quot;</span></div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<br>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
Could you please help.</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<br>
</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
Regards,</div>
<div dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cal=
ibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
Aditya Tayade<br>
</div>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB03488A38E5540E5025FC94DA919C0MAXPR01MB0348INDP_--
