Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A085E00C9F; Thu, 13 Dec 2018 04:42:53 -0800 (PST)
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
	*      [40.107.138.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 56074 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Dec 2018 04:42:51 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-eopbgr1380084.outbound.protection.outlook.com [40.107.138.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD76E00C8F
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 04:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=wDIdO+DyiSUohefGJPWhNSul0ujwV4w4mzP5JtojbOI=;
	b=A3McELA5OFtGg26QG6j75bIj77TzPPzi2q8Q3MDOEp+HKYAwIwTdYdCFtc1tN03f7TA7TLqhvLsDQZ0s3Za73Ih7sBz1KbHkBjpnRgmKEwo+9eSzPXTUaKOJqjZyypPJ6wVRoiSYBlUGGCj3eLk63nSIe5yW+OoogdG8wuQ56t8=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB0698.INDPRD01.PROD.OUTLOOK.COM (10.174.57.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1404.22; Wed, 12 Dec 2018 21:08:13 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c%4]) with mapi id 15.20.1425.016;
	Wed, 12 Dec 2018 21:08:13 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: ChenQi <Qi.Chen@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [Issue] systemd v237: systemd-analyze plot
Thread-Index: AQHUjOBzj08sPSSQ8EOYJSfuMrB61aVxM7qAgAoTzxk=
Date: Wed, 12 Dec 2018 21:08:13 +0000
Message-ID: <MA1PR01MB2604819C56997405DF7030AE91A70@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>,
	<72115296-1563-3c1a-2fcd-3ac1c5b46a82@windriver.com>
In-Reply-To: <72115296-1563-3c1a-2fcd-3ac1c5b46a82@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [43.241.126.187]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0698;
	6:O1PVr9kDvaILNndZ3RPc9Lb8aG0x7AnVrEkSA95wZ5a8Fjd24mMKaJB7X6e3dZgZbBe/4tsw79VMx87PO7U+osgZry6XhvJAqsJw0Hq35JqO+zBiBWqWJ0nmQQ+OWPWaGG5cHNbnnRwUaIHc1L0vNzBVeioflckW+qJB7+HoEfM1FWPtA9f3/thwSbX5hLpFatbfulhUt9qWUaYJYoF+CJ0sAPzct3pqff9qAzr35FZ9jbGyCrumg18fi7qWeVlGWRC/xBQUgQZHKOZjrKuUnHnLO1kljR2VhuRzK9VJbQ6aVeW/Ltwv+ony+ZCH4Vy3bVlX3ql3e8vGR0OE2WayPKfqHKxgsTmON5BxzhE70yNnyzAMALZPpRLKe4gYncluy65RTj07TbwpwUzcsoPOz1DRlprT3l0r0LBsRADOiJnzB4F8QVA+y909GVB+Wz7QXNR6Y85P9M07TUvSrByepg==;
	5:U6jCF/oYwMKPzG4Muf7g2raCWHi4MGTqKg4Rhnt/sGKz5Yb1S/JSZ2fZzUZ6AwLpcrpcXlW+MkFYjO9nC9+k9Jbys45D/B1TBxzvE37BIaQwi66qCfFMGTUl6aVLZxnXULZeVrKCyJamyW2PEAARxv5RlgMn/Cy+mTSC5n8I84A=;
	7:nB4sHASWpUWZNBA0F2OXjKxBrl0IwzFDNhUgVeENGEes/10E4PuzqPj3/v7UzuVewfRI+0RKAE/OWj68OPKsXWVyDuselhYfX6aidT8925AD9V/rT0zAZHVG3TTgyG+O5kp5Zr46/pJt1nb6ejsGdw==
x-ms-office365-filtering-correlation-id: 45bfb802-c0c1-4d8d-503f-08d66075edc9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB0698; 
x-ms-traffictypediagnostic: MA1PR01MB0698:
x-microsoft-antispam-prvs: <MA1PR01MB0698E3014CB35EA31F1A176491A70@MA1PR01MB0698.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230020)(999002)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(3231475)(944501520)(52105112)(6055026)(148016)(149066)(150057)(6041310)(20161123564045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB0698; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0698; 
x-forefront-prvs: 0884AAA693
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(53936002)(66066001)(72206003)(25786009)(53546011)(102836004)(229853002)(99286004)(476003)(7696005)(110136005)(8676002)(106356001)(8936002)(81166006)(74316002)(71200400001)(6436002)(316002)(6606003)(26005)(54896002)(6506007)(236005)(76176011)(66574011)(4326008)(5660300001)(3846002)(6306002)(86362001)(256004)(186003)(9686003)(1015004)(6116002)(107886003)(81156014)(6246003)(71190400001)(97736004)(68736007)(2501003)(14444005)(55016002)(446003)(7736002)(2906002)(606006)(105586002)(19627405001)(11346002)(966005)(14454004)(478600001)(486006)(33656002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0698;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: yFaa4MzDLCL0aJM1utGCZOLyUEXkAVkNNlKyrf+FCax9Hwv091uDcj5/Gqf9inu4AoFZXjZQnoZ2zdbUB3G4NIaEANZ1BYcjOlq2++D4wrHWH17QD0wNads4BMZuWsIRrEZH1w0wTTeda4dWq1WubrluNpRDvh7Vl97hxYfVI4ClL9fix1OHexMvbxkHSy+KI51rk285O/UMWpftzzLxuA567mm7S04hbP6qtrUH5CQHYghvZWjWqu3QKgzeZm4OuSxz75tu+5BTDJTh/8oSNf+LYqPpWCvRq2Htey40c0wIshSwFQvGTCJsW+ZafAIj
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45bfb802-c0c1-4d8d-503f-08d66075edc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2018 21:08:13.4486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0698
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
X-List-Received-Date: Thu, 13 Dec 2018 12:42:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2604819C56997405DF7030AE91A70MA1PR01MB2604INDP_"

--_000_MA1PR01MB2604819C56997405DF7030AE91A70MA1PR01MB2604INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I tried to dig up more and found below issue in getting host info from syst=
emd as well:

Failed to get host information from systemd: Unknown object '/org/freedeskt=
op/hostname1'

I guess it should be fixed with: https://github.com/systemd/systemd/issues/=
7667 , but the issue still persists.


Any one facing the same issue? What could be the possible cause.


Regards,

Aditya Tayade


________________________________
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

--_000_MA1PR01MB2604819C56997405DF7030AE91A70MA1PR01MB2604INDP_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I tried to dig up more and found=
 below issue in getting host info from systemd as well:</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<pre class=3D"code-java">Failed to get host information from systemd: Unkno=
wn object '/org/freedesktop/hostname1'</pre>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">I guess it should be fixed with:=
 <a href=3D"https://github.com/systemd/systemd/issues/7667" class=3D"OWAAut=
oLink" id=3D"LPlnk196680" previewremoved=3D"true">
https://github.com/systemd/systemd/issues/7667</a> , but the issue still pe=
rsists.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Any one facing the same issue? W=
hat could be the possible cause.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> ChenQi &lt;Qi.Chen@=
windriver.com&gt;<br>
<b>Sent:</b> Thursday, December 6, 2018 11:14:23 AM<br>
<b>To:</b> Aditya Tayade; poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] [Issue] systemd v237: systemd-analyze plot</font=
>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">Please check if systemd-hostnamed.service =
is installed, and if it's activatable via this 'org.freedesttop.hostname1'.=
<br>
<br>
`busctl'<br>
`cat /usr/share/dbus-1/system-services/org.freedesktop.hostname1.service'<b=
r>
`ls -l /lib/systemd/system/dbus-org.freedesktop.hostname1.service'<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 12/06/2018 05:25 AM, Aditya Tayade wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;Emoji=
Font&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols;">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Is any one facing below issue wi=
th &quot;systemd-analyze plot&quot; command:</p>
<p style=3D"margin-top:0; margin-bottom:0">Failed to get host information f=
rom systemd: The name org.freedesktop.hostname1 was not provided by any .se=
rvice files</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">After going through the source c=
ode of analyze.c found it's log_debug_error, can any one help here.<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Rest of systemd-analyze options =
working fine.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade<br>
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
 infected mails. <br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
</blockquote>
<p><br>
</p>
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

--_000_MA1PR01MB2604819C56997405DF7030AE91A70MA1PR01MB2604INDP_--
