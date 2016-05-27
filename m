Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B78E5E00E12; Fri, 27 May 2016 03:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3553 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 May 2016 03:12:21 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0057.outbound.protection.outlook.com [157.56.112.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C951EE00D6D
	for <poky@yoctoproject.org>; Fri, 27 May 2016 03:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=yROYRl4uY5Caj6R08S5+C5tcxTMZbpVINnanW9C3HhQ=;
	b=mflTcOnFlrRo9GoQujh9PwPhVvKrdX+ocoDxazoJr8KHFr3Pzhgsxb8TEERLVez9eYK+OxKft3uMRWTF9da06NkRpRPL8F8sBRtMdMqEfnCRpSaQrGQKeAHDkU0v5ddFEuabOmL2dyrvzlyyw7X3T1TlwNboPJnYX8G305rOE2k=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0682.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::12) with Microsoft SMTP Server (TLS) id 15.1.506.9;
	Fri, 27 May 2016 08:38:39 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca%18]) with mapi id 15.01.0501.016;
	Fri, 27 May 2016 08:38:39 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Andrei Gherzan <andrei@gherzan.ro>, "star@gmx.li" <star@gmx.li>
Thread-Topic: [poky] [POKY] lib-sdl issue with qemu
Thread-Index: AQHRt9ixgzBvUrAoe0O25GN1+f7n65/McziAgAABQLA=
Date: Fri, 27 May 2016 08:38:39 +0000
Message-ID: <DB3PR04MB0684E2838C48612F5FAA33AAEE420@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
	<20160527082625.GP9848@resin.home>
In-Reply-To: <20160527082625.GP9848@resin.home>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gherzan.ro; dkim=none (message not signed)
	header.d=none;gherzan.ro; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [199.59.226.141]
x-ms-office365-filtering-correlation-id: f5915e45-0013-4796-ae42-08d3860a4d5f
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0682;
	5:dd5VGRMkoDt4C0hCjg3ndE5o4JYcaPtEPyn9TKmOw6hb/ayRpXKphBg86qAi/Z9Vbp1qhX0N6RfDhLNPM/xTbPbspjzsnyGGYcTA43HbTCucZZV3LKiumG9pgRM6tYNPh39jWYUtKE8g//rXWwHstg==;
	24:O46sljrWIgFv+wWIz38GkJb1EbS6xOCsjw9Mql/f5DGkAOzgvT/kyQln+e/t+K7e9FsaaHJheuaTuDJEgcsOHz6V/Vbjh1hYb7xesG9oTVQ=;
	7:vuwvjgm4+EXuydJvCKc+NYUSgJaEQcNr625QFBZ4R6ovc1AwL1QLZipoqxauNoGdEl/AZDoM3TrTcUkCv/Uie53W0TaTYayRAkUov54Fkh/kYabaRrGd6SsTALbbItRgxRgf0lTZQbQYYsctQwuZPgtk6FvxEdBmbUoDj27zb8lBjnUik0fSC3x/i9LAG+E/
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0682;
x-microsoft-antispam-prvs: <DB3PR04MB0682E0457005275D32D00BF7EE420@DB3PR04MB0682.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0682; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0682; 
x-forefront-prvs: 09555FB1AD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(13464003)(24454002)(377454003)(2501003)(50986999)(76176999)(5002640100001)(86362001)(54356999)(9686002)(87936001)(3280700002)(3660700001)(189998001)(106116001)(81166006)(5001770100001)(8676002)(8936002)(5250100002)(2900100001)(5003600100002)(586003)(19580395003)(3846002)(102836003)(6116002)(4326007)(19580405001)(1220700001)(5008740100001)(92566002)(2906002)(2950100001)(11100500001)(33656002)(15975445007)(76576001)(66066001)(74316001)(5004730100002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0682;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2016 08:38:39.3095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0682
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 10:12:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You can refer to https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8553.=
=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Andrei Gherzan
> Sent: Friday, May 27, 2016 4:26 PM
> To: star@gmx.li
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [POKY] lib-sdl issue with qemu
>=20
> On Fri, May 27, 2016 at 07:23:25AM +0200, star@gmx.li wrote:
> > Tried a "bitbake core-image-minimal" with included xilinx meta-layer an=
d
> machine "qemuzynq".
> > I get the above mentioned error on an Ubuntu 1604, but with already
> installed libsdl.
> >
> > See below:
> >
> > ...
> > | ERROR: User requested feature sdl
> > |        configure was not able to find it.
> > |        Install SDL devel
> > |
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_configure (log file is located at
> /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2.4.0-
> r1/temp/log.do_configure.3236)
> > ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-
> devtools/qemu/qemu_2.4.0.bb, do_configure) failed with exit code '1'
> >
> >
> > sudo apt-get install libsdl1.2-dev
> > ...
> > libsdl1.2-dev is already the newest version (1.2.15+dfsg1-3).
> > 0 upgraded, 0 newly installed, 0 to remove and 95 not upgraded.
> >
>=20
> I hit this issue last week too. What is your host operating system?
>=20
> --
> Andrei Gherzan

