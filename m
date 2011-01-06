Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9C7A4C81146
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 11:49:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 09:49:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="644154785"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 09:49:02 -0800
Message-ID: <4D26008E.9040104@linux.intel.com>
Date: Thu, 06 Jan 2011 09:49:02 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Handful 'o recipe updates
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
X-List-Received-Date: Thu, 06 Jan 2011 17:49:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 10:00 AM, Scott Garman wrote:
> Hi Saul,
>
> This pull request includes all of the recipe upgrades Yu Ke recently
> gave me except icu, which I'm still working on. Most of them do not
> involve any upstream upgrades, but there were some recipe cleanups
> that were needed anyway.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/recipe-upgrades3
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/recipe-upgrades3
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (8):
>    pax-utils: upgrade to version 2.2.2
>    apmd: delete unused patch
>    apmd: added HOMEPAGE, minor formatting changes
>    blktool: minor formatting changes
>    libgdbus_git: metadata fixes and minor formatting changes
>    dbus-glib: delete unused patch
>    dbus-glib: upgrade to version 0.92
>    distro_tracking_fields.inc: update apmd, blktool, dbus-glib,
>      libgdbus, and pax-utils
>
>   .../conf/distro/include/distro_tracking_fields.inc |   45 ++++++++-------
>   .../apmd/apmd-3.2.2-14/workaround.patch            |   59 --------------------
>   meta/recipes-bsp/apmd/apmd_3.2.2-14.bb             |    9 ++-
>   .../dbus/dbus-glib-0.88/fix_asneeded.patch         |   17 ------
>   .../no-examples.patch                              |    0
>   meta/recipes-core/dbus/dbus-glib.inc               |   12 ++--
>   meta/recipes-core/dbus/dbus-glib_0.88.bb           |    6 --
>   meta/recipes-core/dbus/dbus-glib_0.92.bb           |    6 ++
>   meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |   19 ------
>   meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb |   21 +++++++
>   meta/recipes-extended/blktool/blktool_4-6.bb       |    9 ++-
>   meta/recipes-support/libgdbus/libgdbus_git.bb      |   22 +++++---
>   12 files changed, 83 insertions(+), 142 deletions(-)
>   delete mode 100644 meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch
>   delete mode 100644 meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
>   rename meta/recipes-core/dbus/{dbus-glib-0.88 =>  dbus-glib-0.92}/no-examples.patch (100%)
>   delete mode 100644 meta/recipes-core/dbus/dbus-glib_0.88.bb
>   create mode 100644 meta/recipes-core/dbus/dbus-glib_0.92.bb
>   delete mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
>   create mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Thanks,

Pulled into Master

Sau!



