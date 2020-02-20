Received: from IND01-MA1-obe.outbound.protection.outlook.com (IND01-MA1-obe.outbound.protection.outlook.com [40.107.138.79])
 by mx.groups.io with SMTP id smtpd.web10.2610.1582184833659382087
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 23:47:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=m7PEuTXt;
 spf=pass (domain: kpit.com, ip: 40.107.138.79, mailfrom: sana.kazi@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LkIkuCUWHFq9fXEdyZMrwlJtgjSIxvwejXxWiXTGh+HaIHpqU5TnxaOg/5Lwxsx9YWfKoYC1OBfrD9PB8lxoFZJaVafGpGAwH4df/kR5MwrYB0vxmfplAUf57nvBobJk9Kw0qTxUKEYqBbBLNihcd+LnxBtHi6V7d2paMpkZrpr85LBANPXKdc8+LWl0MH5HJbjH/pedoMxvUla/3jFJ7AAVK7VK/vmGgpH9UyNx1BoCwIq1L8bX66LTAPgYtroXJdyKqCXvXCRetsiiYg08XveMqP41Whj++MGJpSS2tPm+DHByrjCN4S7Voodp8806v/o5N6J6eAq0f/gj8vcAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83HRoPGlb9AFUR89VmlnlV4UuxWGE3PoTDeKR5UjOVw=;
 b=aqlGWbtyhMbGzXMYRqf38rPFg4Lnpg4ZQBhvc6cRBhTmtxWv8VBCzEsV3gC6X49/qAQxc4NLJh0OEOeTvNeQZFQzvAxb0PhohiQUl09S2uNWm799+xanyGwQwLCJeg/p5gUA55D9uu331QDNpyCU8KUM68dmOUeRonOGakvCuqQmkXNRfvfYYjHC3GbxRuvE1P0WhSG7FVPwyhk7hpLuuEEvsySNXR2C3smhORJ97sn1scrkD0Agr+yx0zgQtSzhwwMYb/31eCxTmDQN17DgOx7lspNw4VBSlb4pVGSNMVrh9iV7NbeYvGz3t9bLTYy//fv0r/in9tXYY5DqgMg+8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83HRoPGlb9AFUR89VmlnlV4UuxWGE3PoTDeKR5UjOVw=;
 b=m7PEuTXtfhvsPNLM9MQ016B7HB5uEHaRrNvHghEzLdQith+YcgeApRFDUFfzkNhByMDtWNRasx8Oq0cxs+psWgvRuD7+pt1Y8aou0eQr6JQ1Nm91Ez7G/S0m8YMi1GwejWSvGR1HDypqehsoEyww69qtPTqQjtZzsqE/VnCo8bs=
Received: from MAXPR01MB3582.INDPRD01.PROD.OUTLOOK.COM (10.255.152.210) by
 MAXPR01MB3662.INDPRD01.PROD.OUTLOOK.COM (52.134.159.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 20 Feb 2020 07:47:11 +0000
Received: from MAXPR01MB3582.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d0b9:321c:bcaf:9874]) by MAXPR01MB3582.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d0b9:321c:bcaf:9874%6]) with mapi id 15.20.2750.016; Thu, 20 Feb 2020
 07:47:11 +0000
From: "Sana Kazi" <Sana.Kazi@kpit.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
CC: Aditya Tayade <Aditya.Tayade@kpit.com>, Nilesh Pawar
	<Nilesh.Pawar@kpit.com>
Subject: Need to enable UTF-8 support for /bin/busybox
Thread-Topic: Need to enable UTF-8 support for /bin/busybox
Thread-Index: AQHV58H1dQI83jYJJkmQvwcrbkqNcg==
Date: Thu, 20 Feb 2020 07:47:10 +0000
Message-ID: 
 <MAXPR01MB35827C24DC0CBE39D824610599130@MAXPR01MB3582.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Sana.Kazi@kpit.com; 
x-originating-ip: [115.110.145.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 19b6f231-e276-4244-fd9d-08d7b5d9180f
x-ms-traffictypediagnostic: MAXPR01MB3662:|MAXPR01MB3662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MAXPR01MB3662916E790467912F8A129A99130@MAXPR01MB3662.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(366004)(39850400004)(199004)(189003)(81156014)(8676002)(2906002)(81166006)(8936002)(5660300002)(107886003)(6506007)(26005)(186003)(52536014)(9686003)(4326008)(6916009)(55016002)(76116006)(33656002)(478600001)(86362001)(316002)(7696005)(66556008)(66476007)(66946007)(54906003)(64756008)(19627405001)(66446008)(66574012)(71200400001);DIR:OUT;SFP:1101;SCL:1;SRVR:MAXPR01MB3662;H:MAXPR01MB3582.INDPRD01.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: kpit.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QznxD1x9dCZ1E4ia7w3kzsM9tyRCk41nRVnLs4FthJS0KVqJvx5isnNWuycm40jIqR/0PrDjXi0q6uaSCVGkvsaN9BtewQqDwUwRkNdHuslcmkOdEQAoHVOi++vzTv5FOxIxBibTgZESBp2tUIwJkuBfFCb8bG0pWY5fDgIzAPDUE78BmeCI+7vijC3721rLtxTxyTjR3W91YQsbPhgBmF1gd/zzqteEQnAZJF8gSQNQzil32rE0obc0iJNxDKVKpnHC8OMskS+5EffLShjTlYjULpWv7P4PIAMLHH3UuwAzIZH6JHpxDHGe1qy7zhKX/1i3RzVrG3N7IIgPzF2//aPvZoQrn20tle3Cyn9UI2EPKXAULby17/uaYxtgHVEaCJO4JD9pgvULSA9lljcNp7kBHaQUhxipfZVEzug9GhBHIeGjTAYs8HJqVkzYDZRH
x-ms-exchange-antispam-messagedata: 
 0uVnYyz8grxAY0cjzuSLLyGmd3RgADbTHeF8ieIoLDAL61qXL73drbVE8tG1fLfOVBCfYHG5hKh2SoKT14UDhy79OcCYo9tyS0I19EZSSKsN6mHWyWSXerbxMAsGMkqDszZKfPyOIUGZE0u1wGEpSg==
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b6f231-e276-4244-fd9d-08d7b5d9180f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 07:47:11.0047
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +0af9gGXaDTLcfq8LzR5rCL/TRdDkfbQVezF5lHFdSaX4Clnp0EhZHME1j5A+UV8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3662
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB35827C24DC0CBE39D824610599130MAXPR01MB3582INDP_"

--_000_MAXPR01MB35827C24DC0CBE39D824610599130MAXPR01MB3582INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using busybox version  v1.31.0 in the custom yocto SDK and during test=
ing it is found that "/bin/busybox ls" command does not supports UTF-8 enco=
ding.

[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox touch utf_test-=DC
[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox ls utf_test-*
utf_test-??
[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox ls utf_test-* > sa=
mple.log
[sdk]$ cat sample.log
utf_test-??
[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox hexdump -C sample.=
log | grep "c3 9c"
[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox hexdump -C sample.=
log
00000000  75 74 66 5f 74 65 73 74  2d 3f 3f 0a              |utf_test-??.|
0000000c

Also, i tried by adding LANG=3Den_US.UTF-8 in busybox's unicode.cfg. But st=
ill facing same issue.

Is there any option to be set in the config to enable UTF-8 support across =
all the commands of "/bin/busybox".

Regards,
Sana Kazi
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB35827C24DC0CBE39D824610599130MAXPR01MB3582INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div>
<div>Hi, </div>
<div>
<div dir=3D"ltr">
<div style=3D"color:black; font-size:12pt; font-family:Calibri,Arial,Helvet=
ica,sans-serif">
<div dir=3D"ltr">
<div><br>
</div>
<div>I am using busybox version&nbsp;&nbsp;v1.31.0 in the custom yocto SDK =
and during testing it is found that &quot;/bin/busybox ls&quot; command doe=
s not supports UTF-8 encoding.</div>
<br>
<span>[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox touch utf_te=
st-=DC<br>
</span>
<div>[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox ls utf_test-*=
</div>
<div>utf_test-??<br>
</div>
<span></span><span>[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox=
 ls utf_test-* &gt; sample.log<br>
</span>
<div>[sdk]$ cat sample.log <br>
</div>
<div>utf_test-??<br>
</div>
<div>[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox hexdump -C sa=
mple.log | grep &quot;c3 9c&quot;<br>
</div>
<div>[sdk]$ qemu-aarch64 /sdk/sysroots/poky-linux/bin/busybox hexdump -C sa=
mple.log<br>
</div>
<div>00000000 &nbsp;75 74 66 5f 74 65 73 74 &nbsp;2d 3f 3f 0a &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;|utf_test-??.|<br>
</div>
<div>0000000c<br>
</div>
<span></span><br>
<div>Also, i tried by adding LANG=3Den_US.UTF-8 in busybox's unicode.cfg. B=
ut still facing same issue.</div>
<div><br>
</div>
<div>Is there any option to be set in the config to enable UTF-8 support ac=
ross all the commands of &quot;/bin/busybox&quot;.</div>
</div>
</div>
<br>
</div>
Regards,</div>
</div>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<div>Sana Kazi<br>
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

--_000_MAXPR01MB35827C24DC0CBE39D824610599130MAXPR01MB3582INDP_--
