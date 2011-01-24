Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 481194C811AB
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:58:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jan 2011 20:58:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="880272229"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2011 20:58:31 -0800
Message-ID: <4D3D06F6.1020806@intel.com>
Date: Sun, 23 Jan 2011 20:58:30 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/7] recipe upgrades for base, Jan 20. 2011
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
X-List-Received-Date: Mon, 24 Jan 2011 04:58:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 01:24 AM, Qing He wrote:
> Also includes some distro tracking fields update
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (7):
>    distro-tracking: update some tracking fields
>    coreutils: upgrade to version 8.9
>    libnfsidmap: upgrade to version 0.24
>    shared-mime-info: upgrade to version 0.90
Dropped due to build failure
>    dbus: upgrade to version 1.4.1
>    zaurusd: upgrade to svn revision 426
>    resolvconf: upgrade to version 1.48
>
Rest are now pulled into Master

Thanks
	Sau!


>   .../conf/distro/include/distro_tracking_fields.inc |  159 +++++--------------
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    2 +-
>   .../nfs-utils/files/fix-ac-prereq.patch            |   13 ++
>   .../{libnfsidmap_0.23.bb =>  libnfsidmap_0.24.bb}   |    8 +-
>   .../{resolvconf_1.43.bb =>  resolvconf_1.48.bb}     |    7 +-
>   .../{coreutils_8.5.bb =>  coreutils_8.9.bb}         |    9 +-
>   .../dbus/{dbus-1.4.0 =>  dbus-1.4.1}/dbus-1.init    |    0
>   .../dbus/{dbus-1.4.0 =>  dbus-1.4.1}/tmpdir.patch   |    0
>   meta/recipes-core/dbus/dbus_1.4.0.bb               |    6 -
>   meta/recipes-core/dbus/dbus_1.4.1.bb               |    6 +
>   .../shared-mime-info/fix-parallel-build.patch      |   21 +++
>   .../shared-mime-info/shared-mime-info_0.80.bb      |    5 -
>   .../shared-mime-info/shared-mime-info_0.90.bb      |    7 +
>   14 files changed, 105 insertions(+), 140 deletions(-)
>   create mode 100644 meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch
>   rename meta/recipes-connectivity/nfs-utils/{libnfsidmap_0.23.bb =>  libnfsidmap_0.24.bb} (60%)
>   rename meta/recipes-connectivity/resolvconf/{resolvconf_1.43.bb =>  resolvconf_1.48.bb} (87%)
>   rename meta/recipes-core/coreutils/{coreutils_8.5.bb =>  coreutils_8.9.bb} (90%)
>   rename meta/recipes-core/dbus/{dbus-1.4.0 =>  dbus-1.4.1}/dbus-1.init (100%)
>   rename meta/recipes-core/dbus/{dbus-1.4.0 =>  dbus-1.4.1}/tmpdir.patch (100%)
>   delete mode 100644 meta/recipes-core/dbus/dbus_1.4.0.bb
>   create mode 100644 meta/recipes-core/dbus/dbus_1.4.1.bb
>   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
>   delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
>   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


