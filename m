Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1EBBE00712; Wed,  9 Nov 2016 12:23:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1361 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Nov 2016 12:23:21 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0095.outbound.protection.outlook.com [104.47.36.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6630E0050B
	for <poky@yoctoproject.org>; Wed,  9 Nov 2016 12:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=F+MrqNExX6eOPKJvir4rseoBAAKGc83VL8pYbRjXpTU=;
	b=HVZPkrrXuS+GvNEKQfUPiW97FSBqay7j9cJnlRW9LQTEiSEZUl0/4hP8ZvGRBrUXRuep82yh/9QaHO/83WDPuLKJkn8f3FPm9pWmZGQMyzhm8aBhMNjAqOzpohoraHcIhdtAW/RJPCtX2sS65ukPpPxFGvFj1HP8n/xL34SSAA0=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2953.namprd05.prod.outlook.com (10.168.176.141) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.721.4; Wed, 9 Nov 2016 18:28:46 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0721.004; Wed, 9 Nov 2016 18:28:46 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: fido: problems with arm926ejs DEFAULTTUNE
Thread-Index: AdI6rzwVVwym+sSESsCW0jg0TkT8kw==
Date: Wed, 9 Nov 2016 18:28:46 +0000
Message-ID: <DM5PR05MB29545E65161FD6FEA0CB8C61BBB90@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: 82a06afd-26ee-408a-df00-08d408ce3e55
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2953;
	7:Yqi89gddN0Kds4Xk1sf/DjtDFqYTSnTY1oh+wmQRvbXbk7S6YXoE44O2/SnnpduNJEMH/l8krM+F44NC2acxNDXxsar3dB2v2Bb7yuFhvUkSBsOxYDfR/HHAxsDVix75uLfnKQPzWtnu42tkC8CwKPGRfM85zEC/xzh2Gb6cAp2jag5HpxZuSySeHnCG2XXCS2Twa1rsM7an7Gb8e9fQrBrLvlQ8ATlIdEoo1XqviTpq2TlI2KHCTfFYL2JUvmSbXgabT/dGaevaYA42O0JjmHARcBg0aUThQDzSqJLLvyHpao3xgFisThxEOhtBTTeUjBxDVZyt4zkORX4pR1ina2Bk3zMi1YY6j30qQ3QTJeA=;
	23:/zF3mR6IYUk8CkuruIuINN8K+UIt7hrgHh2OybgzzsbTFkQc+GDqaMv6ZhsAQoH1ziU0BZcQXbDigAuLvizYZBZIDT5boDF2VY79tnLh9TvmoOGOIzuOYl8efoAieeh/tx1JAaMIvEWD7Ip1+pGPWw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM5PR05MB2953;
x-microsoft-antispam-prvs: <DM5PR05MB2953366BAD58AFCE8992C670BBB90@DM5PR05MB2953.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6042046)(6043046);
	SRVR:DM5PR05MB2953; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2953; 
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(87936001)(92566002)(586003)(3846002)(74316002)(50986999)(66066001)(33656002)(54356999)(102836003)(101416001)(86362001)(189998001)(107886002)(2351001)(5660300001)(81166006)(1730700003)(76576001)(8676002)(81156014)(6116002)(99286002)(105586002)(106356001)(8936002)(7846002)(7736002)(450100001)(305945005)(110136003)(77096005)(68736007)(2900100001)(9686002)(97736004)(7696004)(6916009)(122556002)(2906002)(5640700001)(3280700002)(2501003)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2953;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2016 18:28:46.6991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2953
X-OriginatorOrg: melinkcorp.com
Subject: fido: problems with arm926ejs DEFAULTTUNE
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
X-List-Received-Date: Wed, 09 Nov 2016 20:23:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am on poky/dizzy (version 1.7.3) and I am in the process of upgrading my =
build to fido (current HEAD).  I am using the meta-atmel layer to build an =
image for an AT91SAM9G25 using the at91sam9x5ek machine.  When I try to bui=
ld my image using poky/fido, I get the following error:

ERROR:  OE-core's config sanity checker detected a potential misconfigurati=
on.
    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH (arm926=
ejse).

In my distro configuration I set DEFAULTTUNE =3D "arm926ejs".  If I remove =
this line, my image builds but the arch gets set as "armv5e".  The change i=
n arch would cause problems for firmware upgrades, as I don't think I'd be =
able to upgrade existing systems when the packages are built for a differen=
t arch.

I also noticed that the error message states TUNE_PKGARCH is set to "arm926=
ejse".  I cannot find anywhere in any of the layers I am using where "arm92=
6ejse" comes from.  I can find "arm926ejs" and "arm926ejste" but not "arm92=
ejse".

Any thoughts as to what may be going wrong with my build?

Thanks,
Bryan

