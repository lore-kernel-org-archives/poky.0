Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C258E00D75; Wed, 26 Jun 2019 14:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.139.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-eopbgr1390052.outbound.protection.outlook.com [40.107.139.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA33AE00D68
	for <poky@yoctoproject.org>; Wed, 26 Jun 2019 14:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
	b=qEftpfXsxSDptd7MGQv+WqPfaP1+SN5kczoxAk0d3xFLqC9/NkRNnjaTK8HsYHkeT/msydpyKWAS0GT/zuANrL104nbBs9xrQWah8GNeSt8AIrrYpRKCBk4pIBcVposygqSmWi55XHbU+X1zIF3ZufidZGGU30WqyQ6yvzg9rk8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=testarcselector01;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xD2Xz5bYhKGWOUZsDsUp+oDkpCGBP5zwd4Pe86yF5e0=;
	b=RxFJnqFekx/co1U82M8qj5JxGxTf02cXF0/ZXNzBlAwWsmIxPvkg4tXfqy13+ptWFisyH6qrex4CGC8bVLpTDOcnBxZ60VkjOJQwwa9Mf2Wktuk1wMDCdoLK6GpkSKa2od0zu0GqhhqJRnWy2Q+8vQduGhO/ShNJyvQu4Go8anw=
ARC-Authentication-Results: i=1; test.office365.com
	1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xD2Xz5bYhKGWOUZsDsUp+oDkpCGBP5zwd4Pe86yF5e0=;
	b=PR7KfoWh+p8sTfWWkSYaNLiL6T9x5eSvw7fPBSgMUk36EctuTd1ECt5s7fpz7tXlB5K/V2abh+m3Gxb8WzhOGtk0tUjpaHC9EBMDZ03HP69UTCFskroSs8VmaQPFqWr/FupZyy1BZig066jI3ezS2zv+w3bKfDpA5KXqGXaJtX4=
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM (10.174.216.146) by
	BMXPR01MB2759.INDPRD01.PROD.OUTLOOK.COM (20.178.168.74) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2008.16; Wed, 26 Jun 2019 21:13:35 +0000
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1dc9:e24c:4b73:8c43]) by
	BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1dc9:e24c:4b73:8c43%5]) with mapi id 15.20.2008.014;
	Wed, 26 Jun 2019 21:13:35 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: busybox-syslog, can I remove from all images?
Thread-Index: AQHVLGJQgrqgPDESjkO5lodVsZZD8w==
Date: Wed, 26 Jun 2019 21:13:35 +0000
Message-ID: <BMXPR01MB0854A364CF2A305E3EB2417091E20@BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [139.5.30.167]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2f72930-6b19-47ed-a130-08d6fa7b26e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
	SRVR:BMXPR01MB2759; 
x-ms-traffictypediagnostic: BMXPR01MB2759:
x-microsoft-antispam-prvs: <BMXPR01MB275985C6D5FFDCD0E97B74A991E20@BMXPR01MB2759.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(136003)(396003)(346002)(376002)(39860400002)(53754006)(199004)(189003)(55016002)(7736002)(86362001)(9686003)(3846002)(26005)(6116002)(186003)(102836004)(7696005)(99286004)(68736007)(66574012)(6606003)(74316002)(53936002)(4744005)(2501003)(2906002)(5660300002)(6436002)(52536014)(2351001)(66556008)(6506007)(478600001)(25786009)(72206003)(19627405001)(73956011)(6916009)(5640700003)(64756008)(81156014)(66946007)(81166006)(54896002)(1730700003)(66476007)(66446008)(76116006)(33656002)(256004)(71200400001)(71190400001)(486006)(8676002)(66066001)(476003)(14444005)(316002)(8936002)(14454004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BMXPR01MB2759;
	H:BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: z3VS0iVgXELMXZoYRNi5fjPqHeMRHhTHC4tMwrWL4cOSxSOgDikRo/GdQnaIh2x8Z9hA0KQM6Jr2LIoL3wYUbUgFT43kQA5ULyXdszFupoV0cfKoL4rwd5GmY8Z39jS7TOo31W8+Sp57Nx/1WDApv2gd8efI3lxLQngofV1tCsmnopAznmfnuWwYl3kjb5VS2AXwF69vw34EXE/lQKy7Ou2cTg3yVd+/F5ZDlJn+aOfFv1XgsvPmb8rPLKOV8qyUE9jUwbnRjmimh+PqHfkbG/QmOmS3IT+aKx8yobO6fURD4KS8HV2htOqG/3XNeJmSOfXOis3oZB8MVoPPDG6PA30glzvEhewglvbd2o+ZC0ZxQJtFNQjLZhVF4Y0hnUCy+juY2cla7t4Dfx0GHgawwPDewRuJgaTw/RwOezAzMfc=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2f72930-6b19-47ed-a130-08d6fa7b26e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 21:13:35.7169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adityat3@kpit.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB2759
Subject: busybox-syslog, can I remove from all images?
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
X-List-Received-Date: Wed, 26 Jun 2019 21:13:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB0854A364CF2A305E3EB2417091E20BMXPR01MB0854INDP_"

--_000_BMXPR01MB0854A364CF2A305E3EB2417091E20BMXPR01MB0854INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,


I want to remove only syslogd provided by busybox-syslog package from all t=
he images.


As per my understanding, after removal of busybos-syslog below traces will =
also get removed from images:

/etc/alternatives/syslogd -> /bin/busybox.nosuid

/sbin/syslogd -> /etc/alternatives/syslogd


Added PACKAGE_EXCLUDE +=3D "busybox-syslog" in local.conf but it did't work=
.


Can you please help with this.



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

--_000_BMXPR01MB0854A364CF2A305E3EB2417091E20BMXPR01MB0854INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi All,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I want to remove only syslogd pro=
vided by busybox-syslog package from all the images.</p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>As per my understanding, af=
ter removal of busybos-syslog below traces will also get removed from image=
s:<br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>/etc/alternatives/syslogd -=
&gt; /bin/busybox.nosuid</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>/sbin/syslogd -&gt; /etc/al=
ternatives/syslogd</span><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Added PACKAGE_EXCLUDE &#43;=3D &q=
uot;busybox-syslog&quot; in local.conf but it did't work.<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Can you please help with this.</p=
>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Aditya Tayade<br>
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

--_000_BMXPR01MB0854A364CF2A305E3EB2417091E20BMXPR01MB0854INDP_--
