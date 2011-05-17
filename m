Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31CDC4C80AE6
	for <poky@yoctoproject.org>; Tue, 17 May 2011 15:37:12 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 13:37:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,227,1304319600"; 
   d="scan'208";a="2999030"
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 13:37:11 -0700
Message-ID: <4DD2DC77.7030603@linux.intel.com>
Date: Tue, 17 May 2011 13:37:11 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1305523345.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1305523345.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Recipe patch Upstream-Status additions
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
X-List-Received-Date: Tue, 17 May 2011 20:37:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/15/2011 10:25 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> Attached are Upstream-Status updates for nine of my recipes:
>
>      openssh
>      dbus-glib
>      expat
>      opensp
>      sgml-common
>      at
>      cpio (GPLv3 version)
>      libpam
>      icu
>
> I have plenty more to do, just giving you some work in progress.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/patch-updates
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/patch-updates
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    recipes: Add Upstream-Status to various recipe patches
>
>   .../openssh/openssh-5.6p1/nostrip.patch            |    9 ++++++---
>   .../dbus/dbus-glib-0.92/no-examples.patch          |    9 ++++++---
>   .../recipes-core/expat/expat-2.0.1/autotools.patch |   10 +++++++---
>   .../opensp/opensp/attributevalue.patch             |    3 +++
>   .../opensp/opensp/fix-docdir.patch                 |    3 +++
>   meta/recipes-devtools/opensp/opensp/m4.patch       |    3 +++
>   .../opensp/opensp/rangmap-fix.patch                |    3 +++
>   .../sgml-common/sgml-common-0.6.3/autohell.patch   |    3 +++
>   .../sgml-common/sgml-common-0.6.3/license.patch    |    3 +++
>   meta/recipes-extended/at/at-3.1.12/configure.patch |    8 ++++++--
>   .../at/at-3.1.12/fix_parallel_build_error.patch    |    4 ++++
>   meta/recipes-extended/cpio/cpio-2.11/statdef.patch |    8 ++++++--
>   .../pam/libpam/pam-no-innetgr.patch                |    5 +++++
>   meta/recipes-extended/sudo/files/libtool.patch     |   10 +++++++---
>   meta/recipes-support/icu/files/gccfix.patch        |    6 ++++++
>   meta/recipes-support/icu/files/noldlibpath.patch   |    5 +++++
>   .../icu/files/use-g++-for-linking.patch            |    7 +++++++
>   17 files changed, 83 insertions(+), 16 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into oe-core and poky

Thanks
	Sau!


