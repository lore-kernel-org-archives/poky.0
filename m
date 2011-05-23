Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4EA9E4C80485
	for <poky@yoctoproject.org>; Mon, 23 May 2011 14:01:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2011 12:01:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,257,1304319600"; 
   d="scan'208";a="6306600"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by fmsmga002.fm.intel.com with ESMTP; 23 May 2011 12:01:49 -0700
Message-ID: <4DDAAF1C.3010005@linux.intel.com>
Date: Mon, 23 May 2011 12:01:48 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1306080531.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1306080531.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/3] switch to newer eglibc & gcc versions
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
X-List-Received-Date: Mon, 23 May 2011 19:01:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2011 10:10 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
>
> Switch to eglibc 2.13 from 2.12
> Switch to gcc 4.6.0 from 4.5.1 for mips&  powerpc
>
> Tested meta-toolchain, core-image-lsb-sdk&  core-image-sato-sdk images with
> these commits. And didn't notice any breakage. sdk compiler is working inside
> the images. and basic programs are working well inside the images.
>
> Also update patch status for some gplv2 recipes
>
> The following changes since commit fc55b224caa3eeac4abda099ec9ed505db59fb28:
>
>    base.bbclass: use oe.data for OE_IMPORTS (2011-05-20 17:34:23 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib.git nitin/misc
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Nitin A Kamble (3):
>    tcmode-default: switch to eglibc 2.13 from 2.12
>    tcmode-default: switch to gcc 4.6.0 for ppc&  mips also
>    gplv2 recipes update upstream status of patches
>
>   meta/conf/distro/include/tcmode-default.inc        |    6 +-----
>   meta/recipes-extended/at/at-3.1.12/configure.patch |    2 ++
>   .../cpio/cpio-2.8/m4extensions.patch               |    2 ++
>   meta/recipes-extended/cpio/cpio-2.8/statdef.patch  |    2 ++
>   .../grep/grep-2.5.1a/uclibc-fix.patch              |    2 ++
>   .../recipes-extended/tar/tar-1.17/gcc43build.patch |    2 ++
>   .../tar/tar-1.17/m4extensions.patch                |    2 ++
>   7 files changed, 13 insertions(+), 5 deletions(-)
>
Merged into oe-core and poky master.

Thanks
	Sau!

BTW, in the future please send directly to oe-core, no need to cross post.


