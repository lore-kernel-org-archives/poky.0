Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26C824C8085F
	for <poky@lists.pokylinux.org>; Mon, 24 Jan 2011 15:53:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 13:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,371,1291622400"; d="scan'208";a="650655519"
Received: from unknown (HELO [10.255.14.50]) ([10.255.14.50])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 13:53:06 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D3DF0F8.50704@mlbassoc.com>
References: <4D3DF0F8.50704@mlbassoc.com>
Date: Mon, 24 Jan 2011 15:52:58 -0600
Message-ID: <1295905978.10128.65.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Build failure
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
X-List-Received-Date: Mon, 24 Jan 2011 21:53:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-24 at 13:36 -0800, Gary Thomas wrote:
> Trying to build poky-image-sato-live:
>    OE Build Configuration:
>    BB_VERSION        = "1.11.0"
>    METADATA_BRANCH   = "master"
>    METADATA_REVISION = "74783fec56d6ced1a793b36410233472e7daf445"
>    TARGET_ARCH       = "i586"
>    TARGET_OS         = "linux"
>    MACHINE           = "qemux86"
>    DISTRO            = "poky"
>    DISTRO_VERSION    = "0.9+snapshot-20110124"
>    TARGET_FPU        = ""
> 
> ERROR: Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
> ERROR: '/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb' failed
> ERROR: Logfile of failure stored in: /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954
> Log data follows:
> | install: cannot stat `/home/local/pc_poky/tmp/sysroots/qemux86-poky-linux/kernel/bzImage': No such file or directory
> | Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
> | ERROR: Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
> NOTE: package poky-image-sato-live-1.0-r0: task build_boot_bin: Failed
> ERROR: Task 9 (/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb, do_bootimg) failed with exit code '1'
> 
> n.b. I tried to access BugZilla to report this, but that
> failed as well :-(
> 

The problem is this commit:

commit bc9d2fbfd4eaad0df5647dd5d07dfb9fcff80ff3
Author: Dongxiao Xu <dongxiao.xu@intel.com>
Date:   Tue Jan 18 16:17:58 2011 +0800

    staging: Use relative path in sysroot-destdir for target recipes

Dongxiao is aware of the problem and working on a fix.  In the meantime,
you could try the fix below from Dongxiao, cut and pasted from IRC, or
back up to the commit before that...

Hope that helps,

Tom

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 9d3b2bb..d1b5398 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -512,3 +512,5 @@ EXPORT_FUNCTIONS do_deploy
PACKAGES =+ "perf"
FILES_perf = "${bindir}/* \
${libexecdir}"
+
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR}/${MACHINE}${HOST_VENDOR}-${HOST_OS}/"


