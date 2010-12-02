Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D4804C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:03:51 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 10:03:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="863671579"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 10:03:51 -0800
Message-ID: <4CF7DF86.3030201@intel.com>
Date: Thu, 02 Dec 2010 10:03:50 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/15] update license information of several packages
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
X-List-Received-Date: Thu, 02 Dec 2010 18:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2010 01:41 AM, Qing He wrote:
> This patch set adds LIC_FILES_CHKSUM for several packages
>
> Thanks,
> Qing
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
> Qing He (15):
>    aspell: update license
>    diffutils: update license
>    fakechroot: update license info
>    hdparm: update license info
>    ncurses: update license info
>    parted: update license info
>    resolvconf: update license info
>    setserial: update license info
>    tiff: update license info
>    tinylogin: update license info
>    v86d: update license info
>    zaurusd: update license info
>    yaffs2-utils: update license info
>    ubootchart: update license info
>    u-boot-mkimage: update license info
>
>   meta/recipes-bsp/setserial/setserial_2.17.bb       |    3 +++
>   meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb   |    3 ++-
>   meta/recipes-bsp/v86d/v86d_0.1.9.bb                |    2 ++
>   meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    3 ++-
>   .../resolvconf/resolvconf_1.43.bb                  |    3 ++-
>   meta/recipes-core/ncurses/ncurses.inc              |    1 +
>   meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    3 ++-
>   meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |    3 ++-
>   meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    1 +
>   meta/recipes-devtools/yaffs2/yaffs2-utils.inc      |    1 +
>   meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    6 ++++--
>   meta/recipes-extended/hdparm/hdparm_6.3.bb         |    1 +
>   meta/recipes-extended/parted/parted_1.9.0.bb       |    3 ++-
>   meta/recipes-multimedia/libtiff/tiff_3.8.2.bb      |    1 +
>   meta/recipes-support/aspell/aspell_0.60.6.bb       |    3 ++-
>   15 files changed, 28 insertions(+), 9 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pull into Master

Thanks
    Sau!


