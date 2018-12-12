Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4E57E00C9F; Wed, 12 Dec 2018 19:05:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.139.80 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 20109 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Dec 2018 19:05:23 PST
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-eopbgr1390080.outbound.protection.outlook.com [40.107.139.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B25E00C8F
	for <poky@yoctoproject.org>; Wed, 12 Dec 2018 19:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7LxVVm/WCj8hXLQLHRiYJ8v6pjf+ncZPQlNnNxJkk4A=;
	b=ZYWr0x8tm+rM66UnhSO/m7RuKe55V9/6JRaHemI8qqK3R31cURMo+l2Kif2bRZ4HWfJySMz64N2g+p2tEl/RrVsM/rf1wQ7ftdgzAdP+oJbtj0OONeMIzpnjdvFON/mXKv0l69gx3oz3Fx3fW2D/5uRRe5i5UlvavJnJA2FwgsA=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB2843.INDPRD01.PROD.OUTLOOK.COM (52.134.150.12) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1425.18; Wed, 12 Dec 2018 21:30:09 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c%4]) with mapi id 15.20.1425.016;
	Wed, 12 Dec 2018 21:30:09 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: ChenQi <qi.chen@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [Issue] systemd v237: systemd-analyze plot
Thread-Index: AQHUjOBzj08sPSSQ8EOYJSfuMrB61aVxM7qAgAoTzxmAAGJraw==
Date: Wed, 12 Dec 2018 21:30:08 +0000
Message-ID: <MA1PR01MB260410B1192C644AC81D55D091A70@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>,
	<72115296-1563-3c1a-2fcd-3ac1c5b46a82@windriver.com>,
	<MA1PR01MB2604819C56997405DF7030AE91A70@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2604819C56997405DF7030AE91A70@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [13.86.36.187]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB2843;
	6:kjWijkdSJ+xsncpZhFmvZQjjq4PCr/KfC+lnhKbon4ff5YNqRHn9B8tlaF5LPBw5YKHtGSgT5yDSC1ri0OZv7wmk6K/xt+SngB92lQiRNQFUPnUX5HaAzg508VhUWfgMIrIKHLU94bEH26+yLL+g/RBYwrTojWVBlJBg5eE1mdxjQK/H5b0EP4ano8QL371HhnjwLLzlR4M1idzfzqJket/WwAVRikNwkRKUG/OwXnNdOJ/mw9JegtQ/AuTtojeX3pt8Hv4IlARqgnzd7kiM0QhARKmY/fNWdhrmmpBxQkr6l7WQVZFi5ZYhDJhIjT/coxm9CRl0qeBwId3zKgpRybvAOwbKWo6IafUX8kcb5Y3O3t4K6hXzzPYCyMh2y4dltv3uAiqag/fJ07YN+KXsUUlwoa9OG6gvz+9BcEzoOB1j1/XtEdZKvMFa2Ko+/azjEn2EccqLTRHVrdRxrBkDPw==;
	5:T+h7NwPw6zr3LlUFpGsxZ6pMP7nWwuuWn9tadEMW2ivpVMjhX8mcUyV+jJ0DsJW5FMZNjhn3a9laTs5D8zqLJ4ln+Rvyrq1M0LnKSHmjr3OZI4um2P8fXe1rPodSsJwr4iEKm7EHi1FuwHchadcXsOmnDjf/JdCbq6UegWxYs1U=;
	7:PVFh2+LeGYv1KJkrR6nPTWKgm1tGaTEqcQuSGImIqX4YX4edTO2HcBYHDYAJGOeE/XovU/7SUUjS7DRHQN5l0RBuBsYpAg/wT03WZsvt+DxYc1WlaJDHROqzX/AjC5XGnipdq8fkTu3U94g8+6HaxQ==
x-ms-office365-filtering-correlation-id: bcfa2597-e621-4572-3d8f-08d66078fde9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB2843; 
x-ms-traffictypediagnostic: MA1PR01MB2843:
x-microsoft-antispam-prvs: <MA1PR01MB2843A3CDD63973C120CC908D91A70@MA1PR01MB2843.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230020)(999002)(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(3231475)(944501520)(52105112)(10201501046)(6055026)(148016)(149066)(150057)(6041310)(20161123564045)(20161123562045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB2843; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB2843; 
x-forefront-prvs: 0884AAA693
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(66066001)(2940100002)(6436002)(110136005)(99286004)(316002)(606006)(76176011)(2906002)(66574011)(93156006)(7696005)(5660300001)(86362001)(106356001)(105586002)(6116002)(71190400001)(3846002)(71200400001)(6506007)(14454004)(53546011)(256004)(14444005)(236005)(6306002)(54896002)(97736004)(446003)(11346002)(9686003)(102836004)(6246003)(55016002)(8936002)(7736002)(476003)(4326008)(2501003)(25786009)(486006)(478600001)(68736007)(966005)(72206003)(74316002)(26005)(33656002)(186003)(81166006)(229853002)(81156014)(53936002)(107886003)(8676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB2843;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 7O8eOQa0byPi1HSsmwJGdsyfwdRAucY2N84+VZHr2KFf8/qu6xIUhVMOPW+HzXQhr1+DswKYO89f7Ym/qotTTRgjj0HaY3IdEP9gsTl148efT6iSAZAJ3aADm+c+UA6zEH0qnUwHpJkuOv2bsT8eVzd63NndRKK4Cf+ldtCQR56Byxr3IU64UMKFaUAsYMN5l0ZsolSFJ9n134PW8yuIQuTNlthqexHe1r8vpXkJOzSV15hK32sUVkfmY7U13IgCSqzToxBn08I5waPgfunv5SIrr4QbdIdeRFg9ocWn6N1P3fp7YZCwemPADWXS1iu9
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcfa2597-e621-4572-3d8f-08d66078fde9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2018 21:30:08.9765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2843
Cc: "Ashish P. Chavan" <Ashish.Chavan@kpit.com>
Subject: Re: [Issue] systemd v237: systemd-analyze plot
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
X-List-Received-Date: Thu, 13 Dec 2018 03:05:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB260410B1192C644AC81D55D091A70MA1PR01MB2604INDP_"

--_000_MA1PR01MB260410B1192C644AC81D55D091A70MA1PR01MB2604INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

In addition to below mailer I don't want systemd-hostnamed.service to be ru=
nning on target and still want to plot the systemd-analyze which I believe =
is the possible scenario.

Can you please help.

Regards,
Aditya Tayade



From: Aditya Tayade
Sent: Thursday, December 13, 2:38 AM
Subject: Re: [poky] [Issue] systemd v237: systemd-analyze plot
To: ChenQi, poky@yoctoproject.org
Cc: Ashish P. Chavan


Hi,

I tried to dig up more and found below issue in getting host info from syst=
emd as well:
Failed to get host information from systemd: Unknown object '/org/freedeskt=
op/hostname1'
I guess it should be fixed with: https://github.com/<https://github.com/sys=
temd/systemd/issues/7667>systemd<https://github.com/systemd/systemd/issues/=
7667>/<https://github.com/systemd/systemd/issues/7667>systemd<https://githu=
b.com/systemd/systemd/issues/7667>/issues/7667<https://github.com/systemd/s=
ystemd/issues/7667> , but the issue still persists.

Any one facing the same issue? What could be the possible cause.

Regards,
Aditya Tayade

From: ChenQi <Qi.Chen@windriver.com>
Sent: Thursday, December 6, 2018 11:14:23 AM
To: Aditya Tayade; poky@yoctoproject.org
Subject: Re: [poky] [Issue] systemd v237: systemd-analyze plot

Please check if systemd-hostnamed.service is installed, and if it's activat=
able via this 'org.freedesttop.hostname1'.

`busctl'
`cat /usr/share/dbus-1/system-services/org.freedesktop.hostname1.service'
`ls -l /lib/systemd/system/dbus-org.freedesktop.hostname1.service'

Best Regards,
Chen Qi

On 12/06/2018 05:25 AM, Aditya Tayade wrote:
Hi,

Is any one facing below issue with "systemd-analyze plot" command:
Failed to get host information from systemd: The name org.freedesktop.hostn=
ame1 was not provided by any .service files

After going through the source code of analyze.c found it's log_debug_error=
, can any one help here.

Rest of systemd-analyze options working fine.

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




This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MA1PR01MB260410B1192C644AC81D55D091A70MA1PR01MB2604INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hi,<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
In addition to below mailer I don't want systemd-hostnamed.service to be ru=
nning on target and still want to plot the systemd-analyze which I believe =
is the possible scenario.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Can you please help.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Regards,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Aditya Tayade</div>
<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
From: Aditya Tayade<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Sent: Thursday, December 13, 2:38 AM<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Subject: Re: [poky] [Issue] systemd v237: systemd-analyze plot<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
To: ChenQi, poky@yoctoproject.org<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Cc: Ashish P. Chavan<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hi,<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I tried to dig up more and found below issue in getting host info from syst=
emd as well:<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Failed to get host information from systemd: Unknown object '/org/freedeskt=
op/hostname1'
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I guess it should be fixed with: <a href=3D"https://github.com/systemd/syst=
emd/issues/7667">
https://github.com/</a><a href=3D"https://github.com/systemd/systemd/issues=
/7667">systemd</a><a href=3D"https://github.com/systemd/systemd/issues/7667=
">/</a><a href=3D"https://github.com/systemd/systemd/issues/7667">systemd</=
a><a href=3D"https://github.com/systemd/systemd/issues/7667">/issues/7667</=
a>
 , but the issue still persists.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Any one facing the same issue? What could be the possible cause.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Regards,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Aditya Tayade<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<b><font color=3D"#000000">From:</font></b><font color=3D"#000000"> </font>=
<font color=3D"#000000">ChenQi</font><font color=3D"#000000"> &lt;Qi.Chen@w=
indriver.com&gt;</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<b><font color=3D"#000000">Sent:</font></b><font color=3D"#000000"> Thursda=
y, December 6, 2018 11:14:23 AM</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<b><font color=3D"#000000">To:</font></b><font color=3D"#000000"> Aditya Ta=
yade; poky@yoctoproject.org</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<b><font color=3D"#000000">Subject:</font></b><font color=3D"#000000"> Re: =
[poky] [Issue]
</font><font color=3D"#000000">systemd</font><font color=3D"#000000"> v237:=
 </font><font color=3D"#000000">systemd</font><font color=3D"#000000">-anal=
yze plot</font>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Please check if systemd-hostnamed.service is installed, and if it's activat=
able via this 'org.freedesttop.hostname1'.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
`busctl'<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
`cat /usr/share/dbus-1/system-services/org.freedesktop.hostname1.service'<b=
r>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
`ls -l /lib/systemd/system/dbus-org.freedesktop.hostname1.service'<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Best Regards,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Chen Qi<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
On 12/06/2018 05:25 AM, Aditya Tayade wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hi,<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Is any one facing below issue with &quot;systemd-analyze plot&quot; command=
:<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Failed to get host information from systemd: The name org.freedesktop.hostn=
ame1 was not provided by any .service files<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
After going through the source code of analyze.c found it's log_debug_error=
, can any one help here.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Rest of systemd-analyze options working fine.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Regards,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Aditya Tayade<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails. <br>
</div>
</blockquote>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<br>
<br>
<br>
<br>
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

--_000_MA1PR01MB260410B1192C644AC81D55D091A70MA1PR01MB2604INDP_--
