Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BEE14C80578
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 00:04:21 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Apr 2011 22:04:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="424868513"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by azsmga001.ch.intel.com with ESMTP; 24 Apr 2011 22:04:20 -0700
Message-ID: <4DB500D4.9000103@linux.intel.com>
Date: Sun, 24 Apr 2011 22:04:20 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1303303969.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303303969.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] [PULL] X apps/UX upgrade, edwin, Apr20, 2011
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
X-List-Received-Date: Mon, 25 Apr 2011 05:04:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/20/2011 05:58 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Saul,
> Some simple upgrade. Pls. pull.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/upgrade04
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade04
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (2):
>    gtkhtml2: Upgrade to svn r1161 (from r1144)
>    puzzles: Upgrade to svn r9151 (from r9084)
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    2 +-
>   .../puzzles/files/oh-puzzles-owl-menu.patch        |    5 +++++
>   .../puzzles/{puzzles_r9084.bb =>  puzzles_r9151.bb} |    2 +-
>   4 files changed, 8 insertions(+), 3 deletions(-)
>   rename meta/recipes-sato/puzzles/{puzzles_r9084.bb =>  puzzles_r9151.bb} (94%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into ie-core and poky/master

Thanks
	Sau!

