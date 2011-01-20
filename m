Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB9874C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:22:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jan 2011 15:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377653530"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 15:22:31 -0800
Message-ID: <4D38C3B7.9080905@intel.com>
Date: Thu, 20 Jan 2011 15:22:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1295421399.git.qing.he@intel.com>
In-Reply-To: <cover.1295421399.git.qing.he@intel.com>
Cc: poky@yoctoproject.org, aleksandr.koltsoff@ebts.fi
Subject: Re: [PATCH 0/2] improvement for util-linux
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
X-List-Received-Date: Thu, 20 Jan 2011 23:22:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 11:22 PM, Qing He wrote:
> this patch set adjusts the packaging policy of util-linux,
> separating out shared libraries for flexibility, it also fixes
> the dangling symlink exists in the recipe.
>
Qing,

Please refer to Paul's email about the pacage naming and bumping PR
in other recipes.

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He
> ---
>
>
> Qing He (2):
>    util-linux: separately packaging blkid and uuid
>    util-linux: fix dangling symlinks
>
>   meta/recipes-core/util-linux/util-linux.inc       |   27 ++++++++++++++++----
>   meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
>   2 files changed, 22 insertions(+), 7 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


