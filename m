Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FEFA4C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:09:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jan 2011 17:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380985048"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 17:09:54 -0800
Message-ID: <4D421761.5010404@linux.intel.com>
Date: Thu, 27 Jan 2011 17:09:53 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org,
	aleksandr.koltsoff@ebts.fi
Subject: Re: [PATCH 0/5] improvements for util-linux, v2
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
X-List-Received-Date: Fri, 28 Jan 2011 01:09:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 02:40 AM, Qing He wrote:
> change from v1:
>   - merges the change introduced by Paul Eggleton
>   - fix lscpu packaging (which is under GPLv3)
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He
> ---
>
>
> Paul Eggleton (2):
>    gst-plugins-base: add util-linux to DEPENDS
>    nfs-utils, e2fsprogs, mtd-utils, libsm: bump PR
>
> Qing He (3):
>    util-linux: separately packaging blkid and uuid
>    util-linux: fix dangling symlinks
>    util-linux: fix lscpu packaging
>
>   .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
>   meta/recipes-core/util-linux/util-linux.inc        |   30 ++++++++++++++++----
>   meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
>   .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
>   meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
>   meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
>   .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 +-
>   7 files changed, 31 insertions(+), 13 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

