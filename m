Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10081.1594881596797433978
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 23:39:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BC80E01E8C; Wed, 15 Jul 2020 23:39:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
	*  0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject: header
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7477CE01E8A
	for <poky@yoctoproject.org>; Wed, 15 Jul 2020 23:39:54 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1jvxYf-0003Mb-AL; Thu, 16 Jul 2020 08:39:53 +0200
From: "Roelof" <rberg@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Subject: do_image_wic failed with exit code '1', Codepage 850
Message-Id: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
Date: Thu, 16 Jul 2020 08:39:52 +0200
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1594881595;208a09c2;
X-HE-SMSGID: 1jvxYf-0003Mb-AL
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Error in do_image_wic when building in an openSUSE based docker image =
(the customers IT only allows SUSE). Any ideas where this might be =
coming from ? Thanks a lot.

mcopy outputs
 output: Error converting to codepage 850 Invalid argument
 Cannot initialize '::'
 Bad target ::/

Log:
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_wic
| INFO: Creating image(s)...
|
| ERROR: _exec_cmd: export =
PATH=3D/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnue=
abi/remux-headless-image/1.0-r0/recipe-sysroot-native/sbin:/remux/yocto/bu=
ild/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnueabi/remux-headless-ima=
ge/1.0-r0/recipe-sysroot-native/usr/sbin:/remux/yocto/build/tmp/work/phybo=
ard_mira_imx6_14-phytec-linux-gnueabi/remux-headless-image/1.0-r0/recipe-s=
ysroot-native/usr/bin:$PATH;mcopy -i =
/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnueabi/rem=
ux-headless-image/1.0-r0/deploy-remux-headless-image-image-complete/remux-=
headless-image-phyboard-mira-imx6-14-20200716063506/tmp.wic._f7ek1ol/rootf=
s_boot.2.vfat -s =
/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnueabi/rem=
ux-headless-image/1.0-r0/deploy-remux-headless-image-image-complete/remux-=
headless-image-phyboard-mira-imx6-14-20200716063506/tmp.wic._f7ek1ol/boot.=
2/* ::/ returned '1' instead of 0
| output: Error converting to codepage 850 Invalid argument
| Cannot initialize '::'
| Bad target ::/
|
| WARNING: =
/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnueabi/rem=
ux-headless-image/1.0-r0/temp/run.do_image_wic.63035:1 exit 1 from =
'BUILDDIR=3D"/remux/yocto/build" wic create "$wks" --vars =
"/remux/yocto/build/tmp/sysroots/phyboard-mira-imx6-14/imgdata/" -e =
"remux-headless-image" -o "$out/"'
| ERROR: Function failed: do_image_wic (log file is located at =
/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-gnueabi/rem=
ux-headless-image/1.0-r0/temp/log.do_image_wic.63035)
ERROR: Task =
(/remux/yocto/sources/poky/../meta-remux/recipes-images/images/remux-headl=
ess-image.bb:do_image_wic) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4765 tasks of which 4552 didn't need to =
be rerun and 1 failed.

