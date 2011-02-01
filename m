Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5DF04C80082
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 01:53:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 23:53:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,409,1291622400"; d="scan'208";a="653163731"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 23:53:40 -0800
Message-ID: <4D47BC03.6010008@linux.intel.com>
Date: Mon, 31 Jan 2011 23:53:39 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
In-Reply-To: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Tue, 01 Feb 2011 07:53:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 01/28/2011 01:07 PM, Tom Rini wrote:
> Rather than using a wrapper switch to using upstreams support for
> relocation.  While in here, bring in the mangling to use
> /usr/bin/env perl rather than /full/path/to in order to work
> in deep directory paths.
> 
> Signed-off-by: Tom Rini<tom_rini@mentor.com>

perl fails do_compile with this patch, reverting it resolves the problem. The log.do_compile is available here (600k):

http://bugzilla.pokylinux.org/show_bug.cgi?id=691

Reads in part:

NOTE: make -e MAKEFLAGS= perl LD=ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/vol/1/dvhart/poky-1.git/build/tmp/sysroots/atom-pc
Perl cross-build directory is /vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2/Cross
Target arch is i586-linux
toolchain: ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/vol/1/dvhart/poky-1.git/build/tmp/sysroots/atom-pc, ccache i586-poky-linux-g++ -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/vol/1/dvhart/poky-1.git/build/tmp/sysroots/atom-pc, ccache i586-poky-linux-gcc -m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse --sysroot=/vol/1/dvhart/poky-1.git/build/tmp/sysroots/atom-pc, i586-poky-linux-strip, i586-poky-linux-ar, i586-poky-linux-ranlib
Optimizations: -fexpensive-optimizations -fomit-frame-pointer -O2
/vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2/Cross/generate_config_sh config.sh-i586-linux > /vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2/Cross/../config.sh
cd /vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2/Cross/.. ; ./Configure -S ; make depend ; make ; make more
 
Fetching answers from config.sh...
 
Doing variable substitutions on .SH files...
Extracting config.h (with variable substitutions)

...

make[1]: Entering directory `/vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2'

...

*** Module name IN: lib/Cwd.pm
*** Module name OUT: /vol/1/dvhart/poky-1.git/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.12.2/Cwd.pm
Can't undef active subroutine at /vol/1/dvhart/poky-1.git/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.12.2/Config_heavy.pl line 1343.
Compilation failed in require at lib/Config.pm line 70.
Extracting pod2html (with variable substitutions)
make[1]: *** [pod/pod2html] Error 255
make[1]: Leaving directory `/vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/perl-5.12.2'
make: *** [perl] Error 2
FATAL: oe_runmake failed
Function 'do_compile' failed (see /vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/temp/log.do_compile.30564 for further information)
ERROR: Function 'do_compile' failed (see /vol/1/dvhart/poky-1.git/build/tmp/work/core2-poky-linux/perl-5.12.2-r0/temp/log.do_compile.30564 for further information)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

