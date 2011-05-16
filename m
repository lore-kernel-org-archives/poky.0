Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C2384C80334
	for <poky@yoctoproject.org>; Mon, 16 May 2011 12:47:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 May 2011 10:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,220,1304319600"; d="scan'208";a="436978079"
Received: from unknown (HELO [10.255.12.132]) ([10.255.12.132])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2011 10:46:44 -0700
Message-ID: <4DD16311.2040109@linux.intel.com>
Date: Mon, 16 May 2011 10:46:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305558153.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1305558153.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: V2 [PATCH 0/3] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Mon, 16 May 2011 17:47:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/16/2011 08:18 AM, Robert Yang wrote:
> Changes of V2:
>   * Add the definition of actions to the comment area in skeleton
>   * Implement try-restart and force-reload according to their definitions
>   * Replace start-stop-daemon with "exec $DAEMON ..." to make it more easier
>     to control the output message, so that we would not depend on the output
>     of start-stop-daemon


What was the motivation for this change? We don't want to veer to far
from what people are accustomed to using as this will increase the
amount of work to maintain the initscripts that we reuse from packages.


>   * Output simple and uniform messages


While I support this (and asked for it), if we have to rewrite more or
less standard infrastructure to do it, then we probably should just live
with it.

Thoughts?


>   * Move the function pidofproc () to ${sysconfdir}/init.d/functions and
>     declare that it can't get the pid of a script unless pidof supports "-x".
>   * Add /usr/sbin/skeleton-test to make /etc/init.d/skeleton can be run by
>     default.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: robert/init_scripts
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts


Thanks Robert, some more comments inline with the patches.

--
Darren

> 
> Thanks,
>     Robert Yang <liezhi.yang@windriver.com>
> ---
> 
> 
> Robert Yang (3):
>   Add the layer meta-skeleton
>   Add pidofproc to ${sysconfdir}/init.d/functions
>   Add a skeleton for init scripts
> 
>  meta-skeleton/conf/layer.conf                      |   10 +
>  .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
>  .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
>  .../service/service/skeleton_test.c                |   11 +
>  .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>  .../initscripts/initscripts-1.0/functions          |   32 +++-
>  6 files changed, 291 insertions(+), 2 deletions(-)
>  create mode 100644 meta-skeleton/conf/layer.conf
>  create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>  create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
>  create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
>  create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

