Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 344AEE00A96; Sat, 27 Jul 2019 02:50:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.26.49.173 listed in list.dnswl.org]
X-Greylist: delayed 1294 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 Jul 2019 02:50:46 PDT
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
	[217.26.49.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0803E0096F
	for <poky@yoctoproject.org>; Sat, 27 Jul 2019 02:50:46 -0700 (PDT)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout013.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hrJ0p-0000n0-Do
	for poky@yoctoproject.org; Sat, 27 Jul 2019 11:29:11 +0200
Received: from [122.172.95.138] (helo=[192.168.1.3])
	by asmtp012.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hrJ0p-00049y-5p
	for poky@yoctoproject.org; Sat, 27 Jul 2019 11:29:11 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
From: Niche Consulting India <contact@nicheconsult.in>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <542FAA2F-800D-422D-A3FD-082BE941CFDA@nicheconsult.in>
Date: Sat, 27 Jul 2019 14:59:08 +0530
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: unable to build qt5-image
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
X-List-Received-Date: Sat, 27 Jul 2019 09:50:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

hello,

 i was able to build dpi-basic-image on ubuntu 14.04 for warrior branch. =
But i wanted Qt and so followed usual process
#bitbake qt5-image
gives me error that it could not find recipes in metacarpi/ for lib and =
ntp. How do i fix that?
which version of ubuntu is officially supported as i get a warning that =
ubuntu 14.04 is not supported?



