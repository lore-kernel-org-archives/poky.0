Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E798CE00C02; Fri,  5 Jan 2018 03:21:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.10 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA2FE008FB
	for <poky@yoctoproject.org>; Fri,  5 Jan 2018 03:21:23 -0800 (PST)
Received: from [216.82.249.131] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-10.bemta-12.messagelabs.com id 8A/52-03100-3BF5F4A5;
	Fri, 05 Jan 2018 11:21:23 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRWlGSWpSXmKPExsXi5LtOQHdTvH+
	UwZ1bWhbT/61hd2D0aD/RxxbAGMWamZeUX5HAmvFx23O2gkb2ir0n5zA1MF5l7WLk4hASWMUo
	cWHeC3YIZzWjxLzzO5ghnMWMEgsWLGLpYuTkYBMwl5h2+CCYLSJgLDHz0xKgdg4OYQEriYfXu
	SHC9hLtuw4xQ9h6EisXzWYHKWERUJG4st8SJMwr4CuxtmEBO4jNKCArsfL8aUYQm1lAXOLWk/
	lMILaEgIDEkj3nmSFsUYmXj/+xQtgKEm2f7rFC1OtILNj9iQ3C1pZYtvA1M8R8QYmTM5+AXSk
	koCbRNmcC8wRG4VlIVsxC0j4LSfssJO0LGFlWMWoUpxaVpRbpGlnqJRVlpmeU5CZm5ugaGhrp
	5aYWFyemp+YkJhXrJefnbmIEhn89AwPjDsZ/X3wPMUpyMCmJ8pZE+0cJ8SXlp1RmJBZnxBeV5
	qQWH2KU4eBQkuA9EAeUEyxKTU+tSMvMAUYiTFqCg0dJhPcpSJq3uCAxtzgzHSJ1itGY48bD63
	+YOJ7NfN3ALMSSl5+XKiXOewGkVACkNKM0D24QLEFcYpSVEuZlZGBgEOIpSC3KzSxBlX/FKM7
	BqCTMuwFkCk9mXgncvldApzABnbLqiC/IKSWJCCmpBsaqguaHu1zf/HCxWrm1/c6Cj4UGavM+
	ORzg7o3ek8c6efaH42zPvVd22plM6f0Y5fTjcNUOWfst3rP7z+/XcFR7tJjv1fapzzR3d9rXx
	T1Q2OnTbjJrv9GhtmMB6rWzkr8xumtozj8a4MWcsqliaSbv7v2nlRheL1a1n67CcfFlefZMv+
	vSdc+UWIozEg21mIuKEwE5QdjBCwMAAA==
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-5.tower-28.messagelabs.com!1515151282!67630846!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26582 invoked from network); 5 Jan 2018 11:21:22 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-5.tower-28.messagelabs.com with SMTP;
	5 Jan 2018 11:21:22 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Fri, 5 Jan 2018 05:21:19 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH04.digi.com
	(10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Fri, 5 Jan 2018 05:21:18 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Fri, 5 Jan 2018 12:21:17 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Postinstallation script for target throw warnings
Thread-Index: AdOGFvIlZ1i5ZFsITeSHmsOXXh2MUQ==
Date: Fri, 5 Jan 2018 11:21:17 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.179]
MIME-Version: 1.0
Subject: Postinstallation script for target throw warnings
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
X-List-Received-Date: Fri, 05 Jan 2018 11:21:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to create a recipe with a post installation script. I am using =
the following fragment of code (as documented in http://www.yoctoproject.or=
g/docs/2.4/mega-manual/mega-manual.html#new-recipe-post-installation-script=
s ):

pkg_postinst_PACKAGENAME() {
     if [ x"$D" =3D "x" ]; then
          # Actions to carry out on the device go here
     else
          exit 1
     fi
}

This was working fine in Yocto 2.2, but now in Yocto 2.4 I am getting these=
 warnings:

WARNING: core-image-base-1.0-r0 do_rootfs: [log_check] core-image-base: fou=
nd 3 warning messages in the logfile:
[log_check] warning: %post(init-ifupdown-1.0-r7.0.cortexa7hf_neon) scriptle=
t failed, exit status 1

How can I clean these warnings in Yocto 2.4? Is that still the correct way =
to create post installation script that must run on the target? Should I ju=
st replace 'exit 1' by 'exit 0'?

Thanks

