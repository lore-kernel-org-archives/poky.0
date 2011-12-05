Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F09CDE0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:11:05 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BED5B16601E7; Mon,  5 Dec 2011 10:11:05 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 16DEE16601CC;
	Mon,  5 Dec 2011 10:11:04 -0700 (MST)
Message-ID: <4EDCFB28.9010402@mlbassoc.com>
Date: Mon, 05 Dec 2011 10:11:04 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Can't build glib-2.0
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
X-List-Received-Date: Mon, 05 Dec 2011 17:11:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

OE Build Configuration:
BB_VERSION        = "1.15.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "cobra3530p60"
DISTRO            = "amltd"
DISTRO_VERSION    = "1.1+snapshot-20111205"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:e5b9ac3b71b6c16fb9a629f12e4d83103db2d5b0"
   ...
NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
ERROR: Function 'do_install' failed (see /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610 for further information)
ERROR: Logfile of failure stored in: /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| ERROR: Function 'do_install' failed (see /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610 for further information)
| /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/run.do_install.8610: line 96: oe_runmake: command not found
NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

