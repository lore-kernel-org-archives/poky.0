Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53379E00C92; Wed,  5 Dec 2018 20:58:01 -0800 (PST)
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
	*      [40.107.138.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 17973 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Dec 2018 20:57:57 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-eopbgr1380045.outbound.protection.outlook.com [40.107.138.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F6D7E00C09
	for <poky@yoctoproject.org>; Wed,  5 Dec 2018 20:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xyOKYw5Balx/6pW6wpt69CA9Bo2b/g/J46i6Yt2q804=;
	b=N/sTUvc6GfIYEZO5WYeE8ag9mM621Q1nhk9dSxbNEXLux8BtVoOzOrS98onV3fab2pOCjwcDGPhb21tL0/MEsB7MO7x3CQgCh8EjY7APDj65Lfa06++zO8KqmxwJe2CyJbZI3Jddu7E+XUTzFjTpGjMHYwJ9YYnJmEMCZD6j5R4=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB2489.INDPRD01.PROD.OUTLOOK.COM (52.134.148.22) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1404.19; Wed, 5 Dec 2018 21:25:44 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::1524:e6c7:cf42:550c%3]) with mapi id 15.20.1404.020;
	Wed, 5 Dec 2018 21:25:44 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [Issue] systemd v237: systemd-analyze plot 
Thread-Index: AQHUjOBzj08sPSSQ8EOYJSfuMrB61Q==
Date: Wed, 5 Dec 2018 21:25:44 +0000
Message-ID: <MA1PR01MB2604F38E134555C92B23094791A80@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.189.28.62]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB2489;
	6:UZhEBbBxWIxCP2tJ+cVK+sIRNwQerhwGfJH+AllawWwv+6/HDoZuTG1gF3UIEBndxy5R66oRAtr6H+DtiId+VsJy2EbQ0RsmM/cqX8nHlvWP/m4AVKhey8z7gdLvFVSMiZAKEHS3042/F1S773h+CrBr5Re1nK8eo2ib31H6Y6coQhs5K28LDBtGeoP3aCl+4efeFoTQwOOlPNoejZEOgeJo+hLaVdMWrzXTtt65V1Jv3Z/Coz3bvQweE0XSecNv/GMd33CDRarK2enzRfu6qvpiJO5W1EUG6Jg0U+3unNXETG+VrGT8CWUZ0eA9phhfZfFhxpjTcIZ9PNUoCGqBXDP236h+XXU/5jGrCwgk+Tj7SUY3i70EAADT4vTiEFWwbnn7kHYg6VuzbNZ0Md6De0YmSWLk+YdyU5Q/50GT/BxL5b++V4f09OE9zQx4PHuYS+q3i7rJspxaNsF3O+sJXg==;
	5:CFhvH/gNVHp+/eMshHSnetcvCArZE7E7HIVNsiuYYMENFZu8RopD1fkqtrcBq1WTsR53nyh5CrhS0AzWUA/QrV7a+ghPixqq8oWp19reIsd18U1qeueDFE5cmoHrk/oFEIBukwpRACDhoEegEQbGRZlwOd4Hqn/gOW+6Czfv70g=;
	7:T8XEe6o/5kPm8TkbX+00Kaecs4Gsif0eu3BHcFWk5KvmIw3w46T5znBxFSZkPIr8EodKcPeB5fedNLnyHr24m3KoFSEFK4U+N5TukCOVKfs17HZ7UczDKxL9JRoHJx/TuB066wLsVax6nDzT9ZFdBQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: b0f17ae5-f622-47fd-c4d5-08d65af8377a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB2489; 
x-ms-traffictypediagnostic: MA1PR01MB2489:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-microsoft-antispam-prvs: <MA1PR01MB2489A1AEBF040C063CDC256191A80@MA1PR01MB2489.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231455)(999002)(944501520)(52105112)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123560045)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB2489; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB2489; 
x-forefront-prvs: 08770259B4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(376002)(39860400002)(346002)(136003)(366004)(189003)(199004)(105586002)(25786009)(72206003)(74316002)(478600001)(6116002)(2906002)(3846002)(66066001)(106356001)(4743002)(2351001)(33656002)(55016002)(54896002)(19627405001)(53936002)(9686003)(71190400001)(99286004)(6916009)(6606003)(5660300001)(6436002)(5640700003)(316002)(71200400001)(68736007)(102836004)(6506007)(7696005)(186003)(26005)(14444005)(66574009)(2501003)(7736002)(256004)(86362001)(476003)(97736004)(486006)(1730700003)(8936002)(81166006)(14454004)(81156014)(8676002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB2489;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: QKvPz1rme94b2UtSM6Ll4eB6fgvJB2H6jX/nMaH1bReUahoeegb80OJxoJsT5d+mRnp0/s9OTxhtsmghcC91bwGU5cHomKipzTi3/68wRQSoAnb7AOwAj1C/JlviPz8jka+QYxCFUyyNvENgCp/q0RSHhwcvMJ2mxoonkPy3i67QLxHRCjAoBoHKGhquWN3F//hFmgshhwOyQZEW8E8s6uabr1ylytD8W5nsAf9EONxcFeysgVHtljiTRmNjMzqf+oqi08dgO8qaMDIJhJ3ChnPvMg749tWgoJhlD1pXc1YsQo8doBL39ZguqvyrTMcVEXh0NgTy68lLk9Cj/dCbm69rjdCl56FYmmLqLiayqTk=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f17ae5-f622-47fd-c4d5-08d65af8377a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2018 21:25:44.7123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2489
Subject: [Issue] systemd v237: systemd-analyze plot
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
X-List-Received-Date: Thu, 06 Dec 2018 04:58:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2604F38E134555C92B23094791A80MA1PR01MB2604INDP_"

--_000_MA1PR01MB2604F38E134555C92B23094791A80MA1PR01MB2604INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_MA1PR01MB2604F38E134555C92B23094791A80MA1PR01MB2604INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Is any one facing below issue wit=
h &quot;systemd-analyze plot&quot; command:</p>
<p style=3D"margin-top:0;margin-bottom:0">Failed to get host information fr=
om systemd: The name org.freedesktop.hostname1 was not provided by any .ser=
vice files</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">After going through the source co=
de of analyze.c found it's log_debug_error, can any one help here.<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Rest of systemd-analyze options w=
orking fine.</p>
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

--_000_MA1PR01MB2604F38E134555C92B23094791A80MA1PR01MB2604INDP_--
