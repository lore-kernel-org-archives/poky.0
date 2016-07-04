Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E15C7E00B5F; Mon,  4 Jul 2016 03:52:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.5 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
X-Greylist: delayed 205 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Jul 2016 03:52:10 PDT
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AEAFE0049B
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 03:52:10 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160704104843221_0484
	for <poky@yoctoproject.org>; Mon, 04 Jul 2016 10:48:43 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <poky@yoctoproject.org>
Received: from [216.191.234.70] (port=56007 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bK1SN-0007Do-6O
	for poky@yoctoproject.org; Mon, 04 Jul 2016 06:50:27 -0400
Date: Mon, 4 Jul 2016 06:47:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: poky@yoctoproject.org
Message-ID: <alpine.LFD.2.20.1607040639330.6324@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [PATCH] meta-yocto: Delete PREFERRED_VERSION for obsolete version of U-Boot.
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
X-List-Received-Date: Mon, 04 Jul 2016 10:52:54 -0000
Content-Type: text/plain; charset=US-ASCII


The OE recipe for U-Boot v2013.07 was deleted in 2014, so remove this
reference to it.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index f3ad12d..1e7de09 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -22,7 +22,6 @@ XSERVER ?= "xserver-xorg \
             xf86-input-evdev \
             xf86-video-fbdev"

-PREFERRED_VERSION_u-boot ?= "v2013.07%"
 UBOOT_ENTRYPOINT = "0x00000000"

 KERNEL_DEVICETREE = "mpc8315erdb.dtb"

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


