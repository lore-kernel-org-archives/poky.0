Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20E45E00C27; Wed, 11 Apr 2018 05:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0067.outbound.protection.outlook.com [104.47.100.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE77E00B65
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 05:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ifjstc0FO8Tj/q3jTHdRdUsiO5NgACqYhOAnWZTbXrs=;
	b=gqc85mw1WZEWDKFmQjzV32Is9bzC+QRPDFBilx8bkll3bC0/RaWx2XyHbDBG1qcw5HzBPQBYRhVO72bhefJVZNCBvQJmMVYR6o9Az5aUtPSb4BpWo/3oN4ak3xMuHTCrCSHboqQmTD1vFO6xKcNHWZznMzz3dvMM4HwzTuu4aZk=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0204.INDPRD01.PROD.OUTLOOK.COM (10.164.149.146) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Wed, 11 Apr 2018 12:46:13 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197%13]) with mapi id 15.20.0653.015;
	Wed, 11 Apr 2018 12:46:13 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: g++: error: ./examples/calc++/calc++-scanner.cc: No such file or
	directory
Thread-Index: AQHT0ZKEC9EIXSSL4UesaF2+rou3aA==
Date: Wed, 11 Apr 2018 12:46:13 +0000
Message-ID: <MAXPR01MB0348C083A17C72900E72EFCB91BD0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0204;
	7:5MSll5BmCH1KQCcADyaRI7f2OZ/Gwqv02B6kVfoSrs1YP/14wcRcaz/ONCwyYOEr9M/z2ybffTlxlUiIufACjviQIht2NVeMgHKQiNhgW/Xqz+XF3tRBJ/4MYBsfSg2fx40tyx+eQ6a2+emf/aBoB2mBbd8JbexbybbrYz73fIfd+yyRpPrXdOqAzTlRxUAejoo+jtd/RmF/RIPkoVFPmcEEl2YNQ88oxd7xhBGda19/xh+4lqYjoaFXzRpfrP4v
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0204; 
x-ms-traffictypediagnostic: MAXPR01MB0204:
x-microsoft-antispam-prvs: <MAXPR01MB0204ACBEC6561E899AFA5F2D91BD0@MAXPR01MB0204.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231221)(944501327)(52105095)(93006095)(93001095)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123560045)(20161123564045)(20161123562045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0204; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0204; 
x-forefront-prvs: 0639027A9E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(346002)(376002)(366004)(39860400002)(39380400002)(189003)(199004)(102836004)(59450400001)(6116002)(97736004)(9686003)(6916009)(14454004)(3280700002)(478600001)(26005)(66066001)(55236004)(7736002)(476003)(486006)(6606003)(2906002)(53936002)(3660700001)(6506007)(86362001)(186003)(2501003)(2900100001)(33656002)(5660300001)(105586002)(7696005)(74316002)(3846002)(106356001)(99286004)(68736007)(72206003)(81156014)(316002)(19627405001)(5640700003)(6436002)(8676002)(1730700003)(81166006)(54896002)(8936002)(5250100002)(25786009)(55016002)(2351001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0204;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: k3T/U7jKeMQDAspwcCMcrcC52PS4A/jzn/4aFpYEduznYICT+/i2Ap3LCzpnOs9/811pArSXIAAQ7ZqAgJ3mN70HeqqDp7jNIK/NI9Scf7LcDznXNqmEKVDkH8de2eDBkOm2k+CcIZDtIHezqcDdsZ/DjxaVSrgoaqhrpxyUNT9MAL9uc0JpjFGEQgqfweoRaLsPlDLV7RqY3iiqRXQle+siqKTpt8tQBl5s/fhfGw2vBHC/Er4boamFZtUSPesGRr9uCrA9+TUNIqbYedy/2s04xis199ExFvdeYGP5wEBwAn/VPemCmvUD85/jPrBpryUFn8H9YB5sbjgDl2+XwT6LNBgofYkJm31c+wmW6ZXdHFTYUbnNCD4B6UCTg35fPub87MsN5/dsqxefwGZnRijFmRF35Gfp+ukQmVtScN0=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: fabb35aa-d0fb-4175-0e19-08d59faa35cd
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fabb35aa-d0fb-4175-0e19-08d59faa35cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2018 12:46:13.6649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0204
Subject: g++: error: ./examples/calc++/calc++-scanner.cc: No such file or directory
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
X-List-Received-Date: Wed, 11 Apr 2018 12:46:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0348C083A17C72900E72EFCB91BD0MAXPR01MB0348INDP_"

--_000_MAXPR01MB0348C083A17C72900E72EFCB91BD0MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am trying run test suite for bison but its throwing some error-

g++: error: ./examples/calc++/calc++-scanner.cc: No such file or directory

Found some work around-
cp Makefile Makefile.bak
sed -i '/calc++/d' Makefile
make check

This helped me to run suite without error. But is it correct solution?


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

--_000_MAXPR01MB0348C083A17C72900E72EFCB91BD0MAXPR01MB0348INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I am trying run test suite for bi=
son but its throwing some error-</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div><b>g&#43;&#43;: error: ./examples/calc&#43;&#43;/calc&#43;&#43;-scanne=
r.cc: No such file or directory<span></span></b><br>
<br>
Found some work around-<br>
<div><b>cp Makefile Makefile.bak <br>
</b><b>sed -i '/calc&#43;&#43;/d' Makefile <br>
</b><b>make check<span></span></b><br>
<br>
This helped me to run suite without error. But is it correct solution?<br>
<br>
<br>
Regards,<br>
Aditya Tayade<br>
</div>
<br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
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

--_000_MAXPR01MB0348C083A17C72900E72EFCB91BD0MAXPR01MB0348INDP_--
