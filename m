Return-Path: <raymond.tan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92A7DE00C86; Mon, 19 Sep 2016 06:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F6EE0086B
	for <poky@yoctoproject.org>; Mon, 19 Sep 2016 06:52:26 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP; 19 Sep 2016 06:52:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,362,1470726000"; d="scan'208";a="11308229"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga004.jf.intel.com with ESMTP; 19 Sep 2016 06:52:25 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.75]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.133]) with mapi id
	14.03.0248.002; Mon, 19 Sep 2016 21:52:24 +0800
From: "Tan, Raymond" <raymond.tan@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][meta] live image booting pauses with 'waiting for
	removable media' on Krogoth
Thread-Index: AdISeJNC3ek5EMRERyOZF+1yM63H1A==
Date: Mon, 19 Sep 2016 13:52:24 +0000
Message-ID: <F0CA9E243F4F424B836EAC30E41BF4CF5DF3C973@PGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: [meta] live image booting pauses with 'waiting for removable media' on Krogoth
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
X-List-Received-Date: Mon, 19 Sep 2016 13:52:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear All,

While booting live image with core-image-sato.hddimg, the boot stalls with =
the message "waiting for removable media".=20
If I set "debugshell" in the kernel boot parameter, after the default 30 se=
conds sleep to wait for mounted device, I will get the error "Cannot find r=
ootfs.img file in /run/media/*, dropping to shell". =20

If I edit the init-live.sh to manually mount the /dev/hda drive, the boot w=
ill complete successfully. It seems that the udev isn't mounting the /dev/h=
da.

This issue is only seen in Krogoth branch, but not on Jethro.=20

What could possibly be the problem?

Warm Regards,=20

=A0Raymond Tan



