Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C8D84C80039
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 23:54:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 21:54:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="877096796"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 21:54:45 -0800
Message-ID: <4D2E93A4.2010503@intel.com>
Date: Wed, 12 Jan 2011 21:54:44 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jessica Zhang <jessica.zhang@intel.com>
References: <cover.1294788389.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294788389.git.jessica.zhang@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Consolidated pull request for ADT Installer work
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
X-List-Received-Date: Thu, 13 Jan 2011 05:54:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2011 03:26 PM, Jessica Zhang wrote:
> adt-intaller feature implementation, including the bitbake recipe file for creating the intaller tar file under /tmp/deploy/sdk, and the adt-installer script files and config files, set the reference to adt repo entry empty before it's setup
>
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
>      the adt-installer script files and config files, set the reference
>      to adt repo entry empty before it's setup
>
>   .../installer/adt-installer/adt_installer          |  367 ++++++++++++++++++++
>   .../installer/adt-installer/adt_installer.conf     |   52 +++
>   .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    7 +
>   .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    7 +
>   .../adt-installer/scripts/adt_installer_internal   |  209 +++++++++++
>   .../installer/adt-installer/scripts/data_define    |   40 +++
>   .../installer/adt-installer/scripts/extract_rootfs |   67 ++++
>   .../installer/adt-installer/scripts/util           |  104 ++++++
>   .../installer/adt-installer_1.0.bb                 |   84 +++++
>   9 files changed, 937 insertions(+), 0 deletions(-)
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
Pulled in to Master

Thanks
	Sau!


