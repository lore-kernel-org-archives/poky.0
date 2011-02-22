Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE51D4C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:51:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2011 07:51:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="392342838"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 07:51:03 -0800
Message-ID: <4D63DB66.4030401@intel.com>
Date: Tue, 22 Feb 2011 07:51:02 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Fix the emenlow build failures and add	optimizations
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
X-List-Received-Date: Tue, 22 Feb 2011 15:51:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/15/2011 09:12 PM, Mark Hatle wrote:
> We patch 1/4 fixes the emenlow build failure without adding any system optimizations.
>
> This rootfs generation takes approx 11m42 on my machine.
>
> Patch 2/4 adds a backport of head of tree RPM "nofsync" change.  This drops the
> overall rootfs generation time to approx 6m38.
>
> Patch 3/4 disables default shell debug logging during image creation.
>
> Patch 4/4 fixes a problem where the solverdb's could be generated multiple times.
> We now only generate the solvedb ONCE.  This drops the overall rootfs generation
> time to 6m16.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/emenlow-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/emenlow-fix
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (4):
>    rpm: Add the ability to use the platform file during install
>    rpm: Avoid fsync when writing files
>    image.bbclass: Disable shell debug messages
>    package_rpm: Fix solverdb generation
>
>   meta/classes/image.bbclass                       |    2 +-
>   meta/classes/package_rpm.bbclass                 |   47 +++++---
>   meta/classes/populate_sdk_rpm.bbclass            |    7 +-
>   meta/classes/rootfs_rpm.bbclass                  |    9 +-
>   meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch  |   34 ++++++
>   meta/recipes-devtools/rpm/rpm/rpm-platform.patch |  132 ++++++++++++++++++++++
>   meta/recipes-devtools/rpm/rpm/rpm-showrc.patch   |   23 ++++
>   meta/recipes-devtools/rpm/rpm_5.4.0.bb           |    9 +-
>   8 files changed, 234 insertions(+), 29 deletions(-)
>   create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
>   create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-platform.patch
>   create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch
>
Pulled into Master

Thanks
	Sau!


