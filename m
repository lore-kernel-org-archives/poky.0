Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBE1F4C80335
	for <poky@yoctoproject.org>; Tue, 17 May 2011 15:30:40 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 May 2011 13:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,227,1304319600"; d="scan'208";a="437794889"
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 13:30:39 -0700
Message-ID: <4DD2DAEF.9080803@linux.intel.com>
Date: Tue, 17 May 2011 13:30:39 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1305592601.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1305592601.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] More recipe patch Upstream-Status additions
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
X-List-Received-Date: Tue, 17 May 2011 20:30:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 05:38 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> Attached are Upstream-Status updates for the following recipes:
>
>      apmd
>      insserv
>      linuxdoc-tools
>      mtools (GPLv3 version)
>      openjade
>      sgmlspl
>      at
>      sudo
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/patch-updates2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/patch-updates2
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    recipes: add Upstream-Status to various recipe	patches
>
>   meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch  |   28 +++++++++++--------
>   meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch  |   20 ++++++++-----
>   .../insserv/files/disable_runtests.patch           |   11 +++++---
>   meta/recipes-devtools/insserv/files/makefile.patch |   11 +++++---
>   .../linuxdoc-tools-native/disable_dvips_doc.patch  |    4 +++
>   .../linuxdoc-tools-native/disable_sgml2rtf.patch   |    4 +++
>   .../linuxdoc-tools-native/disable_tex_doc.patch    |    4 +++
>   .../linuxdoc-tools-native/disable_txt_doc.patch    |    4 +++
>   .../mtools/mtools/mtools-makeinfo.patch            |    6 ++++
>   .../mtools/mtools/no-x11.gplv3.patch               |   10 +++++--
>   .../openjade/openjade-1.3.2/makefile.patch         |    4 +++
>   .../user-declared-default-constructor.patch        |    4 +++
>   meta/recipes-devtools/sgmlspl/files/combined.patch |    3 ++
>   meta/recipes-extended/at/at-3.1.12/configure.patch |    8 ++++-
>   .../at/at-3.1.12/fix_parallel_build_error.patch    |    4 +++
>   meta/recipes-extended/sudo/files/libtool.patch     |   10 +++++--
>   16 files changed, 99 insertions(+), 36 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into oe-core and poky

Thanks
	Sau!


