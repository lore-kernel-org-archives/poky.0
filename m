Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E5CB4C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 06:23:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2010 04:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,202,1291622400"; d="scan'208";a="638293853"
Received: from unknown (HELO [10.255.16.58]) ([10.255.16.58])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2010 04:23:19 -0800
From: Joshua Lock <josh@linux.intel.com>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20101220092911.AF1F8CDE29A@gemini.denx.de>
References: <cover.1292600657.git.josh@linux.intel.com>
	<20101220092911.AF1F8CDE29A@gemini.denx.de>
Date: Mon, 20 Dec 2010 12:23:13 +0000
Message-ID: <1292847793.2466.18.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Misc build fixes
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
X-List-Received-Date: Mon, 20 Dec 2010 12:23:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-20 at 10:29 +0100, Wolfgang Denk wrote:
> Dear Joshua,
> 
> In message <cover.1292600657.git.josh@linux.intel.com> you wrote:
> > This series includes a corrected fix for gst-plugins-base for make 3.82 as
> > well as fixes to enable gthumb to build on a system without gtk-doc installed
> 
> Thanks.
> 
> >   gthumb: add gnome-doc-utils-native to DEPENDS
> 
> Using your poky-contrib/josh/make-382git branch and trying to build
> poky-image-sdk for qemuppc on F14 results for me in this:
> 
> ...
> | checking dynamic linker characteristics... (cached) GNU/Linux ld.so
> | checking how to hardcode library paths into programs... immediate
> | checking for glib-genmarshal... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/glib-genmarshal
> | checking for glib-mkenums... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/glib-mkenums
> | checking for powerpc-poky-linux-pkg-config... no
> | checking for pkg-config... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
> | configure: WARNING: using cross tools not prefixed with host triplet
> | checking pkg-config is at least version 0.9.0... yes
> | checking gnome-doc-utils >= 0.3.2... no
> | configure: error: gnome-doc-utils >= 0.3.2 not found
> | FATAL: oe_runconf failed
> | ERROR: Task failed: ('function do_configure failed', '/opt/poky/build-work-qemuppc/tmp/work/ppc603e-poky-linux/gthumb-2.12.0-r2/temp/log.do_configure.5399')
> NOTE: package gthumb-2.12.0-r2: task do_configure: Failed
> ERROR: Task 1387 (/home/wd/git/poky/work/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb, do_configure) failed with 1
> ERROR: '/home/wd/git/poky/work/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb' failed
> 
> Am I missing something?

Ah, of course - we need the non-native variant of gnome-doc-utils to
pass the pkg-config check...

As you've discovered (on IRC) you can work around this by manually
building gnome-doc-utils - I will work out a patch for this today.

Thanks for reporting,

Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


