Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6FB64C8086F
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:04:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jan 2011 14:04:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="370592864"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 14:04:50 -0800
Message-ID: <4D24EB02.7000807@linux.intel.com>
Date: Wed, 05 Jan 2011 14:04:50 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jessica Zhang <jessica.zhang@intel.com>
References: <cover.1294126930.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294126930.git.jessica.zhang@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] single patch for new adt-installer feature
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
X-List-Received-Date: Wed, 05 Jan 2011 22:04:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2011 11:42 PM, Jessica Zhang wrote:
> This patch capture the adt-installer feature which includes a recipe file for generating adt-installer tar ball and all the script files and config files for adt-installer.
>
> Create this single patch to avoid the initial adt-install pull request messy situation for review.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jzhang/installer-feature
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/installer-feature
>
> Thanks,
>      Jessica Zhang<jessica.zhang@intel.com>
> ---
>
>
> Liping Ke (1):
>    adt-intaller feature implementation, including the bitbake recipe
>      file for creating the intaller tar file under /tmp/deploy/sdk, and
>      the adt-installer script files and config files
>
>   .../installer/adt-installer/adt_installer          |  363 ++++++++++++++++++++
>   .../installer/adt-installer/adt_installer.conf     |   29 ++
>   .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
>   .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
>   .../adt-installer/scripts/adt_installer_internal   |  207 +++++++++++
>   .../installer/adt-installer/scripts/data_define    |   35 ++
>   .../installer/adt-installer/scripts/extract_rootfs |   63 ++++
>   .../installer/adt-installer/scripts/util           |   99 ++++++
>   .../installer/adt-installer_1.0.bb                 |   61 ++++
Liping,

I notice that you have GPLv2 Headers in the scripts, but the .bb file 
refers to a MIT and the Poky main license, you should probably change 
these scripts to point use MIT Headers and copyright should be 2010-2011.

You should not be exposing internal intel host information in the .conf 
files, maybe you can use the autobuilder repos instead of an internal on 
since outside people will use this code also.

I am not sure I like the idea of /opt/poky being hardcoded, will this be 
addressed in the future?  I think that /opt/poky is still hard-coded in 
some of the tools, but I hope this will be changing in the future, so 
more of a heads up.

Sau!


>   9 files changed, 871 insertions(+), 0 deletions(-)
>   create mode 100755 meta/recipes-devtools/installer/adt-installer/adt_installer
>   create mode 100644 meta/recipes-devtools/installer/adt-installer/adt_installer.conf
>   create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
>   create mode 100644 meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
>   create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_internal
>   create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/data_define
>   create mode 100755 meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
>   create mode 100644 meta/recipes-devtools/installer/adt-installer/scripts/util
>   create mode 100644 meta/recipes-devtools/installer/adt-installer_1.0.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


