Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40C69E00C5F; Wed, 16 Jan 2019 07:02:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.138.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 34578 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Jan 2019 07:02:16 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-eopbgr1380043.outbound.protection.outlook.com [40.107.138.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91F5CE00C29
	for <poky@yoctoproject.org>; Wed, 16 Jan 2019 07:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nMJJS+aZW2u8WttRcuO+9mk6qFdavR/5FszDbbIx2NE=;
	b=dLn5at1mk+xCrj00hmnKUlhWBWOoY697r26mxFz1g27SWCA2rzzM3TW2D0XtaakQ2krx/+4rnO+pt96UhOaPKGy32hV7luN3S7aonUy7pdBBEHmke7Ov0WwnI6WVD+2LJiLa2vyy/RN+1SHEl85Es4aQ79X7/Eswx+jEKKpEIcg=
Received: from BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM (52.133.131.142) by
	BM1PR0101MB2003.INDPRD01.PROD.OUTLOOK.COM (10.174.223.145) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1537.24; Wed, 16 Jan 2019 02:52:29 +0000
Received: from BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM
	([fe80::297e:4649:f207:9f04]) by
	BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM
	([fe80::297e:4649:f207:9f04%4]) with mapi id 15.20.1516.019;
	Wed, 16 Jan 2019 02:52:29 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [tiff] Issue in do_package_qa: found library in wrong
	location
Thread-Index: AQHUrUXYEq5F4mxYXUCY6G0l5C+ZVw==
Date: Wed, 16 Jan 2019 02:52:28 +0000
Message-ID: <BM1PR0101MB170066F2CE87FD5FA7CE641D91820@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [43.241.126.128]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BM1PR0101MB2003;
	6:rUb/uZ+DfmxSIy6XCksG02yE7QBBxT6f/HHsze3KmTWozwWI/P45G8jC+DT63/gbqdXX/NmmXYqmmvHqN4200d9wnw3aKvND/Jal8n4NAFJocCVdqhfU9BcTNcW3x3YGupfo1+WWqIAWgtYkoOmuWX05/B7PLpd4BU4TK7fC83KRii4TFVR7U4qL/LkjuJM8XGdQM2IYPOHEarvpE5VhZIyWJXK+rsbORwbsygtsphQLLosQRQZADYixdmfMxoBJagKXL0YCAAWHXxeynCLSlbf25n1xlqToskez/EYwSl6/9xv/QcxhT9CI2737iMN37k7ZOi3XwN/SDtn5mWZk6XPUNWi00hwseU2GKQgH1M3ZV1/ktLYmFf9xukCdoPcBipy5rRFx+m6rjap1izEhBeGjHjsDzq5HjZulm0Cb/xsBMnuTNTUpdPJbnOPNRcwoM4R71vd3rnGO2CPJOsfhrw==;
	5:CdTKf6We/0HHFJg6OT7k7j1GOhW3FIMOuZgWWtVQeW+FLblWXlO+WrO+cyei5OEeBBFstjgK69ziJiD4Vu1UGZpz28rvIRFCD0wKr3rOd1PAXJE2z8JZW8MD8N4ElWelYl7jNPYOc+fcXY+6+at/vxqs4h5GJffvjiITj/j2jBxHla2XEEBGdnF4+Tw41jRzKrmTfeLr05emHW3Oe+SaHQ==;
	7:C+IfFNgiNSbR/bWF1id6vJ8s4dq7s9V51tTAb/55idqyTcsrjbrxl/wz5mI30T0qar7/G82VZh99kp+CRIsfWMldyw9t4xsenJtadmy9WWn1uoAjX8c+iPFc2G2UhNhNPVGB49YrFrAumlTBkJETEA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 703b7a22-41f9-4026-147f-08d67b5da774
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BM1PR0101MB2003; 
X-MS-TrafficTypeDiagnostic: BM1PR0101MB2003:|BM1PR0101MB2003:
x-microsoft-antispam-prvs: <BM1PR0101MB2003DA0B6E2D66EA781D4EEE91820@BM1PR0101MB2003.INDPRD01.PROD.OUTLOOK.COM>
x-forefront-prvs: 091949432C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(376002)(346002)(136003)(39860400002)(366004)(189003)(199004)(186003)(25786009)(105586002)(486006)(2351001)(19627405001)(106356001)(256004)(14444005)(2906002)(66574012)(74316002)(478600001)(86362001)(7736002)(316002)(71200400001)(6506007)(102836004)(476003)(26005)(2501003)(71190400001)(97736004)(3846002)(8676002)(1730700003)(7696005)(6116002)(81166006)(6916009)(99286004)(66066001)(6436002)(5640700003)(55016002)(9686003)(54896002)(33656002)(6606003)(14454004)(72206003)(68736007)(5660300001)(8936002)(81156014)(53936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BM1PR0101MB2003;
	H:BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IREdQRIYkh/aub/Y6CJTtsF6t5qUmT1woZmfU6Zk7XCyN3eDJEP8+z/iMUYZKGAk5mAswqMCHwdSj7yFBlI5Ryk5NlWyYPH4KlV7TwBANl6nwFuJWe8OHiMN/WI+uTzeBdQ1M5Ohe11N2hdORWU869r1ri5ugCtWF962O4murHFixwHvRLLUnZ7m7zkyL6crE+rjBy32GkAF57m1u3Dyed9DdZqB4F5GBFX8j3EmPNZQK4HC0LSEUGzePCp9Oet+fIXRAP84+cj1eU+QV6R9Ul8pcZ6c0nROBZFfNCItkvDZgLZ8vkqlMlfzOjK7rTed3KDVo43Z0kiJzQyEH0OzY3043zC4b4Gud2iZLFP0inPbvpRQOPnJjxHqoiqRTno7JtwVejEmGWFhE0rW76ZGcPXMZe6MLSVMz/64wHNrvqc=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 703b7a22-41f9-4026-147f-08d67b5da774
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2019 02:52:28.7418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB2003
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB2003;
	23:Yc/sMvu1NTMPw6ue3ymiEJhl2SmJwGED05KhqOk9RmUBNFzuth0yaJt1Bcom/oVRnfjxW1qWb6quPA20KIdWVyEO5VVXmfqiaE8IC2Xf1thmXzQfapzX3EVEwj+X5S8fN/CZs4XRCCjeuCwdr+mmXg==
X-OriginatorOrg: kpit.com
Subject: [tiff] Issue in do_package_qa: found library in wrong location
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
X-List-Received-Date: Wed, 16 Jan 2019 15:02:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB170066F2CE87FD5FA7CE641D91820BM1PR0101MB1700_"

--_000_BM1PR0101MB170066F2CE87FD5FA7CE641D91820BM1PR0101MB1700_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Can any one help to resolve below issues
ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- pack=
age contains symlink .so: tiff-mytest path '/work/pathto/tiff/4.0.9-r0/pack=
ages-split/tiff-mytest/usr/share/tiff/mytest/libtiff/.libs/libtiff.so'
non -dev/-dbg/nativesdk- package contains symlink .so: tiff-mytest path '/w=
ork/pathto/tiff/4.0.9-r0/packages-split/mytest/usr/share/tiff/mytest/libtif=
f/.libs/libtiffxx.so' [dev-so]
ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -staticdev package contai=
ns static .a library: tiff-mytest path '/work/pathto/tiff/4.0.9-r0/packages=
-split/tiff-mytest/usr/share/tiff/mytest/port/.libs/libport.a'
non -staticdev package contains static .a library: tiff-mytest path '/work/=
pathto/tiff/4.0.9-r0/packages-split/tiff-mytest/usr/share/tiff/mytest/port/=
.libs/libport.a' [staticdev]


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

--_000_BM1PR0101MB170066F2CE87FD5FA7CE641D91820BM1PR0101MB1700_
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
<div>Hi,</div>
<div><br>
</div>
<div></div>
<div>Can any one help to resolve below issues<br>
ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- pack=
age contains symlink .so: tiff-mytest path '/work/pathto/tiff/4.0.9-r0/pack=
ages-split/tiff-mytest/usr/share/tiff/mytest/libtiff/.libs/libtiff.so'<br>
non -dev/-dbg/nativesdk- package contains symlink .so: tiff-mytest path '/w=
ork/pathto/tiff/4.0.9-r0/packages-split/mytest/usr/share/tiff/mytest/libtif=
f/.libs/libtiffxx.so' [dev-so]<br>
ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -staticdev package contai=
ns static .a library: tiff-mytest path '/work/pathto/tiff/4.0.9-r0/packages=
-split/tiff-mytest/usr/share/tiff/mytest/port/.libs/libport.a'<br>
non -staticdev package contains static .a library: tiff-mytest path '/work/=
pathto/tiff/4.0.9-r0/packages-split/tiff-mytest/usr/share/tiff/mytest/port/=
.libs/libport.a' [staticdev]</div>
<div><br>
</div>
<div><br>
</div>
<div>Regards,</div>
<div>Aditya Tayade<br>
</div>
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

--_000_BM1PR0101MB170066F2CE87FD5FA7CE641D91820BM1PR0101MB1700_--
