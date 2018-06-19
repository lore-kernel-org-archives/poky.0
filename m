Return-Path: <Ankit.Rastogi@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF845E0044F; Mon, 18 Jun 2018 22:49:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1990 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Jun 2018 22:49:32 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0058.outbound.protection.outlook.com [104.47.100.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD0BAE0044F
	for <poky@yoctoproject.org>; Mon, 18 Jun 2018 22:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nX/9FUNOhByM+K8tKOQBoJj3jy38tJ5WMDDzvGShaMQ=;
	b=GhGq4vNpAy0igQac3y2f/XHAp04ndyECf2z8XXjwjKssMOuNRC/gIkMxfwKtQ6j/2tg8GLkJKICrD8e/fIdcMfKLyfQahQWs/rp2OkX12nysnR+bEHV5B31gwSzytTnhIQyVNBUCUfFyqMr5VeNmJNCFQ9f+WHnXbz6m+Kd6k2o=
Received: from BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM (52.133.132.139) by
	BM1PR0101MB1474.INDPRD01.PROD.OUTLOOK.COM (52.133.128.17) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.16; Tue, 19 Jun 2018 05:16:17 +0000
Received: from BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM
	([fe80::3923:5afd:3d96:579f]) by
	BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM
	([fe80::3923:5afd:3d96:579f%10]) with mapi id 15.20.0863.016;
	Tue, 19 Jun 2018 05:16:17 +0000
From: Ankit Rastogi <Ankit.Rastogi@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: How to export kernel specific headers to userspace
Thread-Index: AQHUB4ymBTF/8rn+YUeAI1HnLX+rsg==
Date: Tue, 19 Jun 2018 05:16:17 +0000
Message-ID: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Ankit.Rastogi@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BM1PR0101MB1474;
	7:yuuDg9hx1eRJDQIRog79YecSU1IF3m03hF+2sgfHLawSvXzvncFXCeK/ITuwjlW1+bvAZfSxXvGF8KPn/zUvB22bqi9fOC7XdKfMnEEGYPmPDxlvqid5KJEu3CJP8LqCgm2feeUSUDOa6Z3yTedfef9XoBWPYfWvHZndIAKjcvfhc4gi6p1Htf2IOpbQiDko6Qmq7Ao9hlZt45afi7OQu8RfnbSyZKwPJ8mEG6S310PE+9uEMORdQjKenMLvTIQH
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 49b2e115-1d45-44b6-fc2f-08d5d5a3c964
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:BM1PR0101MB1474; 
x-ms-traffictypediagnostic: BM1PR0101MB1474:
x-microsoft-antispam-prvs: <BM1PR0101MB14749252E13772A997E2F68691700@BM1PR0101MB1474.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3231254)(944501410)(52105095)(3002001)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:BM1PR0101MB1474; BCL:0; PCL:0; RULEID:;
	SRVR:BM1PR0101MB1474; 
x-forefront-prvs: 07083FF734
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(39850400004)(346002)(39380400002)(366004)(189003)(199004)(14454004)(19627405001)(3846002)(6116002)(6916009)(5250100002)(97736004)(2501003)(72206003)(6606003)(8936002)(66066001)(478600001)(106356001)(25786009)(7736002)(2351001)(74316002)(105586002)(53936002)(55016002)(54896002)(5660300001)(9686003)(2906002)(476003)(8676002)(2900100001)(486006)(102836004)(33656002)(7696005)(6506007)(55236004)(59450400001)(186003)(3660700001)(99286004)(6436002)(3280700002)(26005)(5640700003)(68736007)(316002)(81166006)(86362001)(81156014)(1730700003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BM1PR0101MB1474;
	H:BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: OXrm1cmxyMx2n82FiTP2kIPygtKcCng8prOoWZ/zYhyoVB63K4EPnGzjDd6mdMMM2oFU9Fl3iXcN/q7NQlFQixzWiFIiB5Xcw9u8VRZYjvf05snKY7eUUTUM0dihJkhjrYZhs56mwtKOQ1xB+ryJY28ckW36zxUN0U6DfVWmPaxGmaTlenUfBWQQRp+XpuOWzM8ef0IVCsbqlNr7x1jx6mfiUTtVsDuRR+z2IcaD9N1vWZIntY/OQ8T1hRe315xJAPjsb3ZCdNjuLOAjFw8Ayhf3k0pUv8yMsS1Iama6MZ6Mg1G4pjw+iyOCJ+h52USPc2R1a1YNYtwYary59AubBQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49b2e115-1d45-44b6-fc2f-08d5d5a3c964
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2018 05:16:17.5775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB1474
Subject: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 05:49:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB12833B9EE6843CFD07689D6A91700BM1PR0101MB1283_"

--_000_BM1PR0101MB12833B9EE6843CFD07689D6A91700BM1PR0101MB1283_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Can someone provide any pointers on how to export kernel specific headers t=
o userspace?

I am getting below error while building our one of the component which requ=
ires kernel uapi headers.

Error Received:
 /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such file o=
r directory
> |  #include <linux/hdmi_info.h>
> |           ^~~~~~~~~~~~~~~~~~~
> | compilation terminated.

In yocto 2.5, userspace is boot strapped with linux-libc-headers package wh=
ich uses a set of uapi headers from Linux kernel 4.15. Can someone suggest =
for custom kernels, how to expose uapi headers to userspace? Thus create a =
separate linux-apl-headers package with those files.

Thanks,
Ankit

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_BM1PR0101MB12833B9EE6843CFD07689D6A91700BM1PR0101MB1283_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<span style=3D"font-size: 11pt;">Hi, </span>
<div><br>
<span style=3D"font-size: 11pt;"></span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">Can&nbsp;someone provide any pointers=
 on how to export kernel specific headers to userspace?</span><br>
<span style=3D"font-size: 11pt;"></span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;"><br>
</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">I am getting below error while buildi=
ng our one of the component which requires kernel uapi headers.</span></div=
>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;"><br>
</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span><span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">Error Received:</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">&nbsp;/hdmi-capture/main.c:16:10: fat=
al error: linux/hdmi_info.h: No such file or directory</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">&gt; |&nbsp; #include &lt;linux/hdmi_=
info.h&gt;</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">&gt; |&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;^~~~~~~~~~~~~~~~~~~</span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 11pt;">&gt; | compilation terminated.</span>=
</div>
<span style=3D"font-size: 11pt;"></span>
<div><br>
<span style=3D"font-size: 11pt;"></span></div>
<span style=3D"font-size: 11pt;"></span>
<div><span style=3D"font-size: 12pt;"><span style=3D"font-size: 11pt;">In y=
octo 2.5, userspace is boot strapped with linux-libc-headers package which =
uses a set of uapi headers from Linux kernel 4.15. Can someone suggest for&=
nbsp;</span><span style=3D"font-size: 11pt;">custom
 kernels, how&nbsp;</span><span style=3D"font-size: 11pt;">to expose uapi h=
eaders to userspace? Thus create a separate linux-apl-headers package&nbsp;=
</span></span><span style=3D"font-size: 11pt;">with those files.</span><br>
</div>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 11pt;">Thanks,</span></div>
<div><span style=3D"font-size: 11pt;">Ankit</span></div>
<br>
</span></div>
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

--_000_BM1PR0101MB12833B9EE6843CFD07689D6A91700BM1PR0101MB1283_--
