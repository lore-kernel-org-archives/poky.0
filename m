Return-Path: <Nisha.Parrakat@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBBDDE00B65; Thu, 12 Apr 2018 14:07:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.62 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 943 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Apr 2018 14:07:08 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0062.outbound.protection.outlook.com [104.47.100.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FF3BE0084E
	for <poky@yoctoproject.org>; Thu, 12 Apr 2018 14:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9qp5bXJv33uFuue787KXMcyDPFu0WuRV7DeG5hjF4JQ=;
	b=F/R0+83R/rWzaPIMw4RvRmf77cDBZ5qnjQpnGtKFDDk405BfGvalfOstuIpJKZ1FshxWcOAVg7ZgWuWFnOm2noFER4v7PLptkchqV8NCcKoKGkCnf0w/KILzFqdexX+9LhkSNTYQbpLR26LX+0oTEANzQCJFiWDbymcIFt1pe4A=
Received: from MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM (10.174.59.21) by
	MA1PR01MB0762.INDPRD01.PROD.OUTLOOK.COM (10.174.58.11) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Thu, 12 Apr 2018 20:51:23 +0000
Received: from MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM
	([fe80::2d55:8f30:2dd2:e2c2]) by
	MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM
	([fe80::2d55:8f30:2dd2:e2c2%14]) with mapi id 15.20.0653.015;
	Thu, 12 Apr 2018 20:51:23 +0000
From: Nisha Parrakat <Nisha.Parrakat@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky]how to get mount verion >=2.30 for latest systemd
Thread-Index: AQHT0p7tdpQWMe7V+0KyHUmbkY4cpQ==
Date: Thu, 12 Apr 2018 20:51:23 +0000
Message-ID: <MA1PR01MB093884598A66E22A48969213EEBC0@MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Nisha.Parrakat@kpit.com; 
x-originating-ip: [46.189.28.205]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0762;
	7:k/0yBv4JOttaV6ZwKC+WrgcM5d/CjXQ0mcyyfD40QOFSI7LmD2bh01vrtTPf4SVuaxv4lYjFi4BHcH3Q0EXUu6LfzMBTZyPwwyHY5ZuwMYLjsCkzD9q6mMATCpvc5bsv4biUCfRMBKmrsOqe//JosvYvqJi0mD2dz3i2oz3ep+5jMm48bLGSO/lTIbyER5ZCPPwnFR61Sf18OmUsF0FUDkIeMm9v+8r9Tvo3qeIWDad9cLFWXxeCo6QUKZQXmsJA
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB0762; 
x-ms-traffictypediagnostic: MA1PR01MB0762:
x-microsoft-antispam-prvs: <MA1PR01MB0762A078C15D403C5045FE5EEEBC0@MA1PR01MB0762.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(10201501046)(3231232)(944501327)(52105095)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123558120)(20161123560045)(20161123562045)(6072148)(201708071742011);
	SRVR:MA1PR01MB0762; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0762; 
x-forefront-prvs: 06400060E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(376002)(39380400002)(346002)(39860400002)(366004)(199004)(189003)(81156014)(6116002)(8676002)(478600001)(3846002)(33656002)(53936002)(81166006)(6436002)(97736004)(1730700003)(6506007)(54896002)(316002)(9686003)(5640700003)(74316002)(8936002)(55016002)(59450400001)(7736002)(476003)(102836004)(25786009)(14454004)(86362001)(105586002)(106356001)(2501003)(68736007)(2351001)(2900100001)(72206003)(66066001)(5250100002)(1857600001)(2906002)(3280700002)(6606003)(6916009)(7696005)(99286004)(99946001)(3660700001)(486006)(19627405001)(186003)(5660300001)(575784001)(26005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0762;
	H:MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: bWwZtYGazMozMxv6N2RIeoJNGWOsmJr6hbwOQIdsIHw/St86gySXxKReuEcFRbjws8TCHm+kAvNxbWeY+U7nkkh0UfzvY4tK/gL4CI2nz7FqduFC//VYj7dLklwJD/dRHOW5PJV6vcjOWeQd3n20s0SmBwAAMPXVyzLgX9IxIsVk5oW0hKK6joyjFmQG3MrC
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 0b4e4f9d-ff91-4501-60c8-08d5a0b726c2
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b4e4f9d-ff91-4501-60c8-08d5a0b726c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2018 20:51:23.1119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0762
Subject: how to get mount verion >=2.30 for latest systemd
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
X-List-Received-Date: Thu, 12 Apr 2018 21:07:11 -0000
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB093884598A66E22A48969213EEBC0MA1PR01MB0938INDP_"

--_000_MA1PR01MB093884598A66E22A48969213EEBC0MA1PR01MB0938INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Poky team,

I am using poky from master of sha 0a0d01addd.

The systemd checks for a dependency of mount version >=3D2.30 but the util-=
linux(util-linux_2.31.bb) of in the same version of poky installs mount of =
earlier version 2.27.0.

Please advice on  how to get mount version 2.30 ?



Regards,
Ms Nisha Parrakat
KPIT Technologies Ltd, Pune, INDIA


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MA1PR01MB093884598A66E22A48969213EEBC0MA1PR01MB0938INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Poky team,<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I am using poky from master of sh=
a <b></b><span><b>0a0d01addd.&nbsp;</b></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Th</span>e systemd checks f=
or a dependency of mount version &gt;=3D2.30 but the util-linux(<b><span>ut=
il-linux_2.31.bb</span></b>) of in the same version of poky installs mount =
of earlier version 2.27.0.</p>
<p style=3D"margin-top:0;margin-bottom:0">Please advice on&nbsp; how to get=
 mount version 2.30 ?<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font size=3D"2" face=3D"Calibri,Arial,Helvetica,sans-serif" color=3D"#0033=
66"><span style=3D"font-size:10pt"><font face=3D"Calibri,Arial,Helvetica,sa=
ns-serif"><font size=3D"1" face=3D"Tahoma"><span style=3D"font-size:13px">
<div style=3D"margin-top:0; margin-bottom:0"><font size=3D"2" face=3D"Calib=
ri,Arial,Helvetica,sans-serif">Regards,</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font size=3D"2" face=3D"Calib=
ri,Arial,Helvetica,sans-serif">Ms Nisha Parrakat<br>
</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font size=3D"2" face=3D"Calib=
ri,Arial,Helvetica,sans-serif">KPIT Technologies Ltd, Pune, INDIA</font></d=
iv>
</span></font></font></span></font><br>
<br>
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

--_000_MA1PR01MB093884598A66E22A48969213EEBC0MA1PR01MB0938INDP_--
