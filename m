Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E41C0E00B9C; Wed, 25 Apr 2018 07:05:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.77 listed in list.dnswl.org]
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
	(mail-ma1ind01on0077.outbound.protection.outlook.com [104.47.100.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3896AE005A9
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 07:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hT8LvBBAtxhekAZfqtpV0iT/bT2KyU7ljbOe0q4OdGo=;
	b=N703VuYEPtEfEPhVdb6C7lZw/Z8SwC9dweuGSCiXUJKnNDosBWp8kUaDt7jcWTNCFSVTPmYWIEM+LBQ4owCPQXsDnAHt0YYUZoz7XxT8HcUbA5CKudKEjF/svrh2F9INpU3iGNVHDWBFA7BpY+pf9T/uwDZlhAB5o+YCqRz/p1Y=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0185.INDPRD01.PROD.OUTLOOK.COM (10.164.149.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.696.15; Wed, 25 Apr 2018 14:04:55 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::a0d8:3378:8a41:c0d]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::a0d8:3378:8a41:c0d%13]) with mapi id 15.20.0696.020;
	Wed, 25 Apr 2018 14:04:55 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: ./mosquitto_internal.h:40:20: fatal error: ares.h: No such file
	or directory
Thread-Index: AQHT3J2+vyyismdrzEKj27h1h/DJGw==
Date: Wed, 25 Apr 2018 14:04:54 +0000
Message-ID: <MAXPR01MB0348B611A9993EAC201769B4918F0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0185;
	7:b/XdpsJGEy/NDGDB3P9MK0SMbi6jEPUHrNOKdGdvaA70e03szBC2ghgyKp/v0xwes3X0WuZMxdHHnRUxYLWE9DNRoXSz89DjKsMa7FoEg8MaOxqvHNQNxYmdtFzLklxK7jlIYWFGwdC+FOu0eeg1kcyNn7eVBuSOrsb1TBNJOYIFMjYwiNykAOfU/QXWVNqCosAsio4TGt/qibtbat78Au4m3vy1cmZdPQcihBvY3bleBvTeugR4P+V8ZmaxPbaG
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(5600026)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0185; 
x-ms-traffictypediagnostic: MAXPR01MB0185:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-microsoft-antispam-prvs: <MAXPR01MB0185315F1DF8F9E3AAEE420D918F0@MAXPR01MB0185.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231232)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(6041310)(20161123562045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0185; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0185; 
x-forefront-prvs: 06530126A4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39860400002)(366004)(39380400002)(396003)(199004)(189003)(5640700003)(53936002)(97736004)(6506007)(3280700002)(19627405001)(54896002)(8936002)(6436002)(6916009)(6606003)(7696005)(1730700003)(2351001)(3660700001)(74316002)(33656002)(55016002)(2900100001)(5250100002)(2906002)(3846002)(6116002)(9686003)(476003)(8676002)(105586002)(99286004)(81156014)(7736002)(106356001)(68736007)(5660300001)(66066001)(14454004)(26005)(72206003)(55236004)(102836004)(2501003)(478600001)(59450400001)(316002)(86362001)(81166006)(186003)(25786009)(486006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0185;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: G13lhHzFfyeOh7IleZH8HRSXrNsbahn2S72L254SKff29WhfIplkgO6fDOzuvzV9iW7dW4dROuAS6+2XuwoAj+n6ChuQh/wihgqyjl2x2R3rQvuF8R28nTj9L0WyY/RzcG+y9QB9sa3tW1vJ7lz27y88IbRDE1z1SSN5a/Sbu3B2d5v7tSih0e+MIlhquBL3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 63bed457-e9b0-4335-eaf6-08d5aab585a9
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63bed457-e9b0-4335-eaf6-08d5aab585a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2018 14:04:54.9851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0185
Subject: ./mosquitto_internal.h:40:20: fatal error: ares.h: No such file or directory
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
X-List-Received-Date: Wed, 25 Apr 2018 14:05:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0348B611A9993EAC201769B4918F0MAXPR01MB0348INDP_"

--_000_MAXPR01MB0348B611A9993EAC201769B4918F0MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I was facing subject line issue while building mosquitto 1.14.14

Modified config.mk file so that it should not build with SRV lookup support=
.
from WITH_SRV:=3Dyes to WITH_SRV:=3Dno which resolved error.

If it is valid, request to patch the same to upstream.


Regards,
Aditya


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB0348B611A9993EAC201769B4918F0MAXPR01MB0348INDP_
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
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Hi,<br>
<br>
I was facing subject line issue while building <span>mosquitto 1.14.14</spa=
n> <br>
<br>
Modified config.mk file so that it should not build with SRV lookup support=
.<br>
from <span>WITH_SRV:=3Dyes to </span>WITH_SRV:=3Dno which resolved error.<b=
r>
<br>
If it is valid, request to patch the same to upstream.<br>
<br>
<br>
Regards,<br>
Aditya<br>
</div>
<br>
<p></p>
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

--_000_MAXPR01MB0348B611A9993EAC201769B4918F0MAXPR01MB0348INDP_--
