Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5304A4C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 17:31:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 15:31:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,239,1288594800"; d="scan'208";a="576487602"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 15:31:44 -0800
Date: Tue, 23 Nov 2010 06:29:46 +0800
From: Yu Ke <ke.yu@intel.com>
To: Mei Lei <lei.mei@intel.com>
Message-ID: <20101122222946.GA16273@kyu3-hedt>
References: <cover.1290443719.git.lei.mei@intel.com>
MIME-Version: 1.0
In-Reply-To: <cover.1290443719.git.lei.mei@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Update libxtrap lttng-control dpkg minicom Update four recipes license checksum information
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
X-List-Received-Date: Mon, 22 Nov 2010 23:31:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Meilei,

   I notice you use the same lmei3/chksum branch for the last 3 patch push, this will override the patch you send previous. Usually we use different branch names for different patch push, or rebase the branch to have all the patches in the one branch. So could you please rebase the lmei3/chksum?

Regards
Ke

On Nov 23, 00:35, Mei Lei wrote:
>         libxtrap
>         lttng-control
>         dpkg
>         minicom
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lmei3/chksum
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum
> 
> Thanks,
>     Mei Lei <lei.mei@intel.com>
> ---
> 
> 
> Mei Lei (1):
>   This patch contains four recipes license checksum information
> 
>  meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb      |    1 +
>  meta/recipes-extended/minicom/minicom_2.3.bb     |    1 +
>  meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb |    2 +-
>  meta/recipes-kernel/lttng/lttng-control_0.87.bb  |    2 +-
>  4 files changed, 4 insertions(+), 2 deletions(-)
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

