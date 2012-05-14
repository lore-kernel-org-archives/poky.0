Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72794E006D9
	for <poky@yoctoproject.org>; Mon, 14 May 2012 05:34:22 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A876BF81233; Mon, 14 May 2012 06:34:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1B2E6F81232;
	Mon, 14 May 2012 06:34:21 -0600 (MDT)
Message-ID: <4FB0FBCD.3060405@mlbassoc.com>
Date: Mon, 14 May 2012 06:34:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Confused build for BeagleBoard
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
X-List-Received-Date: Mon, 14 May 2012 12:34:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build a Poky system for my BeagleBoard - only
Poky, no Angstrom or meta-ti layers.  Updated master as of today:

Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120514"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:12b4543ac9f54c0db0ee4a7ee546a71946a051f8"

NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for virtual/kernel (linux-yocto, linux-dummy)
NOTE: consider defining a PREFERRED_PROVIDER entry to match virtual/kernel
NOTE: multiple providers are available for runtime kernel-module-zd1211rw (linux-yocto, linux-dummy)
NOTE: consider defining a PREFERRED_PROVIDER entry to match kernel-module-zd1211rw
    ... etc (lots of these messages)

I don't recall seeing this when I tried this build last Friday.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

