Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 368E64C804FF
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 00:13:29 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2011 22:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,301,1304319600"; 
   d="scan'208";a="7654408"
Received: from unknown (HELO [10.255.13.41]) ([10.255.13.41])
	by orsmga001.jf.intel.com with ESMTP; 31 May 2011 22:13:28 -0700
Message-ID: <4DE5CA77.3050907@linux.intel.com>
Date: Tue, 31 May 2011 22:13:27 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1305963432.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305963432.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]ghostscript: add patches to make it run cross compile platform V2
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
X-List-Received-Date: Wed, 01 Jun 2011 05:13:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/21/2011 01:24 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Hi Richard,
>
> I update the patches with your opinion, thanks!
>
> When test lsb on ppc find that gs can't run. The root cause is gs determines some target configuration
> on build system. According to the document of ghostscript,
> http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
> when cross compile ghostscript need some manual work.
> So import patches from WindRiver Linux to make sure ghostscript can be cross compiled, and spit the patches
> into arch/[so]obj.h source files.
>
> The following changes since commit 7706d5d844db2725f4118207d90e302679eacdfe:
>
>    linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures (2011-05-19 17:33:50 -0700)
>

Kang Kai:

I think I must have merged the working patch, when I started to test 
with your enable ghostscipt patch I got a fetch error on ghostscript, I 
think we some how missed the changes you made for obarch.h and soobjarch.h

I get the following error:ERROR: Logfile of failure stored in:

/intel/poky/builds/world/tmp/work/i686-linux/ghostscript-native-9.02-r1/temp/log.do_fetch.11982
Log data follows:
| ERROR: Function 'Fetcher failure for URL: 'file://objarch.h'. Unable 
to fetch URL file://objarch.h from any source.' failed
| ERROR: Function 'Fetcher failure for URL: 'file://objarch.h'. Unable 
to fetch URL file://objarch.h from any source.' failed
NOTE: package ghostscript-native-9.02-r1: task do_fetch: Failed
ERROR: Task 343 
(virtual:native:/intel/poky/distro/meta/recipes-extended/ghostscript/ghostscript_9.02.bb, 
do_fetch) failed with exit code '1'


Please review your ghostscript and verify that it is correct.

Thanks
	Sau!

> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib.git kangkai/distro
>    http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/distro
>
> Kang Kai (1):
>    ghostscript: fix run failure on mpc8315e
>
>   meta/recipes-extended/ghostscript/arm/objarch.h    |   40 +++++++++++++++++++
>   meta/recipes-extended/ghostscript/arm/soobjarch.h  |   40 +++++++++++++++++++
>   .../ghostscript/ghostscript-9.02-genarch.patch     |   27 +++++++++++++
>   .../ghostscript/ghostscript_9.02.bb                |   22 +++++++++-
>   meta/recipes-extended/ghostscript/i586/objarch.h   |   41 ++++++++++++++++++++
>   meta/recipes-extended/ghostscript/i586/soobjarch.h |   41 ++++++++++++++++++++
>   meta/recipes-extended/ghostscript/mips/objarch.h   |   40 +++++++++++++++++++
>   meta/recipes-extended/ghostscript/mips/soobjarch.h |   40 +++++++++++++++++++
>   .../recipes-extended/ghostscript/powerpc/objarch.h |   40 +++++++++++++++++++
>   .../ghostscript/powerpc/soobjarch.h                |   40 +++++++++++++++++++
>   meta/recipes-extended/ghostscript/x86_64/objarch.h |   40 +++++++++++++++++++
>   .../ghostscript/x86_64/soobjarch.h                 |   40 +++++++++++++++++++
>   12 files changed, 448 insertions(+), 3 deletions(-)
>   create mode 100644 meta/recipes-extended/ghostscript/arm/objarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/arm/soobjarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-genarch.patch
>   create mode 100644 meta/recipes-extended/ghostscript/i586/objarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/i586/soobjarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/mips/objarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/mips/soobjarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/powerpc/objarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/powerpc/soobjarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/x86_64/objarch.h
>   create mode 100644 meta/recipes-extended/ghostscript/x86_64/soobjarch.h
>

