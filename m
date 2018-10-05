Return-Path: <Alex.Gonzalez@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA85E0090C; Fri,  5 Oct 2018 05:14:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [67.219.246.212 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 810 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Oct 2018 05:14:36 PDT
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
	[67.219.246.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBFDE00519
	for <poky@yoctoproject.org>; Fri,  5 Oct 2018 05:14:35 -0700 (PDT)
Received: from [67.219.246.101] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-2.bemta.az-b.us-east-1.aws.symcld.net id D8/1C-10914-28257BB5;
	Fri, 05 Oct 2018 12:01:06 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRWlGSWpSXmKPExsXi5LtOQLcxaHu
	0Qct5U4vp/9awOzB6tJ/oYwtgjGLNzEvKr0hgzdh+7hhLwSSmiutf/zM2MH5j7GLk4hASWMUo
	sWzFfnYIZzWjxIH1x1khnD2MEhs7D7N1MXJysAnoS3z7c5AJxBYRMJaY+WkJK4jNLKArsfdSD
	3MXIweHsICXxJ1d2hAlARIfGo+yQdh6Euf6/7KClLAIqEh0NZeDmLwChhKXZpiBVDAKiEl8P7
	WGCWKguMStJ/PBbAkBAYkle84zQ9iiEi8f/wNbKgo0peXgHhaIuILE54Pz2CB6dSQW7P4EZZt
	L/Fq5gxHC1pZYtvA12BxeAUGJkzOfsICcICSgLNFwhXcCo9gsJJtnIZk0C8mkWUgmzUIyaQEj
	6ypGs6SizPSMktzEzBxdQwMDXUNDI11jIMtIL7FKN0mvtFg3NbG4RNdQL7G8WK+4Mjc5J0UvL
	7VkEyMw7lIKmNN2MF5tTz/EKMnBpCTK++jN1mghvqT8lMqMxOKM+KLSnNTiQ4wyHBxKErwfA7
	ZHCwkWpaanVqRl5gATAExagoNHSYTXJBAozVtckJhbnJkOkTrFqMvR9vT6DGYhlrz8vFQpcd5
	fIDMEQIoySvPgRsCS0SVGWSlhXkYGBgYhnoLUotzMElT5V4ziHIxKwry/QabwZOaVwG16BXQE
	E9AR8jlbQI4oSURISTUwVrFOyJ0otbXuzGTeOc9uHLqtUnt0HrNq+JKI7ZdZJVVWmDnY7uA7v
	j5f7jbLfK/wpk3TBQIulnB5cO8xyl/55Bj/Pa9m/aTPHA47s73rzrx6n+m14+/MefPjkjbOZN
	j7/B9D2oVWnw+rFkUHyC5ctunxSZ0cjZMCd+47JrVIKUn3z/659mL2LiWW4oxEQy3mouJEAIj
	fITdBAwAA
X-Env-Sender: Alex.Gonzalez@digi.com
X-Msg-Ref: server-11.tower-385.messagelabs.com!1538740861!206434!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.14.24; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12473 invoked from network); 5 Oct 2018 12:01:05 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-11.tower-385.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 5 Oct 2018 12:01:05 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Fri, 5 Oct 2018 07:01:01 -0500
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH03.digi.com
	(10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Fri, 5 Oct 2018 07:01:01 -0500
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([fe80::c47f:be41:1dc7:5ab8%11]) with mapi id
	14.03.0415.000; Fri, 5 Oct 2018 14:00:59 +0200
From: "Gonzalez, Alex" <Alex.Gonzalez@digi.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [rocko] Backport request for meta/recipes-kernel/cryptodev
Thread-Index: AQHUXKMU07o6tc5/OUWTgOcYhVSXrg==
Date: Fri, 5 Oct 2018 12:00:58 +0000
Message-ID: <20181005120055.GC7228@agonzal-linux>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.5.24 (2015-08-30)
x-originating-ip: [10.101.2.194]
MIME-Version: 1.0
Subject: [rocko] Backport request for meta/recipes-kernel/cryptodev
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
X-List-Received-Date: Fri, 05 Oct 2018 12:14:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <411FD6DB611C2F45836FCA4E5E68FD41@digi.com>
Content-Transfer-Encoding: quoted-printable

Hi,

Could you please backport commit c568e89c3d316e5c10369c6ff48e871828bad783 t=
o=20
rocko?

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dc568e89c3d316e=
5c10369c6ff48e871828bad783

This will allow to build cryptodev with kernels >=3D 4.17.

Thanks,
Alex=

