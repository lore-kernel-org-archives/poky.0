Return-Path: <walters@verbum.org>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B65E006E9
	for <poky@yoctoproject.org>; Mon,  9 Jan 2012 13:24:16 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 73A5520F56
	for <poky@yoctoproject.org>; Mon,  9 Jan 2012 16:24:15 -0500 (EST)
Received: from frontend2.nyi.mail.srv.osa ([10.202.2.161])
	by compute2.internal (MEProxy); Mon, 09 Jan 2012 16:24:15 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:date:content-type
	:message-id:mime-version; s=smtpout; bh=d+TKJV+L+ySw9BKF5U2yUOtq
	b4g=; b=YB6OBzne6lpmTFXT2AnHOnnCdiMQk9QNu4nSw9tVC3hIw700VC9WAl0u
	F9vsXH1IqGHZPERyeNJQuUvRtrRMGego/77VCI/tcBFYxqQqPEjvkuS6FeEhmxB4
	QWo9C6l4YsvoZQtilG8ZNYQDwn5jcceUJ2GxFj7MJ2kDhEIxGug=
X-Sasl-enc: Hzzc1JT2Byimvxi0z3g+gogDte3S3sUATTN3runwp+fq 1326144255
Received: from [192.168.1.6] (c-65-96-60-117.hsd1.ct.comcast.net
	[65.96.60.117])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3E152482559
	for <poky@yoctoproject.org>; Mon,  9 Jan 2012 16:24:15 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky <poky@yoctoproject.org>
Date: Mon, 09 Jan 2012 16:23:57 -0500
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1326144238.18105.22.camel@lenny>
Mime-Version: 1.0
Subject: [PATCH] util-linux: .pc files should go in the -dev packages for subpackages
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jan 2012 21:24:17 -0000
X-Groupsio-MsgNum: 7341
Content-Type: multipart/mixed; boundary="=-EpnjwH6yGi32S2ZXDUVZ"

--=-EpnjwH6yGi32S2ZXDUVZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

    The .pc files were ending up in util-linux-dev, not the correct
    subpackage like libuuid1-dev.



--=-EpnjwH6yGi32S2ZXDUVZ
Content-Disposition: attachment;
	filename*0=0001-util-linux-.pc-files-should-go-in-the-dev-packages-f.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-util-linux-.pc-files-should-go-in-the-dev-packages-f.patch";
	charset="UTF-8"
Content-Transfer-Encoding: 7bit

From da609d5d86242f8eb3eb040388b12a4642253829 Mon Sep 17 00:00:00 2001
From: Colin Walters <walters@verbum.org>
Date: Mon, 9 Jan 2012 16:22:39 -0500
Subject: [PATCH] util-linux: .pc files should go in the -dev packages for
 subpackages

The .pc files were ending up in util-linux-dev, not the correct
subpackage like libuuid1-dev.
---
 meta/recipes-core/util-linux/util-linux.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index dcf0ed9..c814581 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -51,9 +51,9 @@ FILES_util-linux-readprofile = "${base_sbindir}/readprofile.${PN}"
 FILES_util-linux-uuidgen = "${bindir}/uuidgen"
 
 FILES_util-linux-libblkid = "${libdir}/libblkid.so.*"
-FILES_util-linux-libblkid-dev = "${libdir}/libblkid.so ${libdir}/libblkid.a ${libdir}/libblkid.la ${includedir}/blkid"
+FILES_util-linux-libblkid-dev = "${libdir}/libblkid.so ${libdir}/libblkid.a ${libdir}/libblkid.la ${includedir}/blkid ${libdir}/pkgconfig/blkid.pc"
 FILES_util-linux-libuuid = "${libdir}/libuuid.so.*"
-FILES_util-linux-libuuid-dev = "${libdir}/libuuid.so ${libdir}/libuuid.a ${libdir}/libuuid.la ${includedir}/uuid"
+FILES_util-linux-libuuid-dev = "${libdir}/libuuid.so ${libdir}/libuuid.a ${libdir}/libuuid.la ${includedir}/uuid ${libdir}/pkgconfig/uuid.pc"
 FILES_util-linux-lscpu = "${bindir}/lscpu"
 
 FILES_util-linux-fsck = "${base_sbindir}/fsck*"
-- 
1.7.6.4


--=-EpnjwH6yGi32S2ZXDUVZ--
