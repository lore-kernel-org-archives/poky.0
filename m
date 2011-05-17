Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0A224C804C2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 00:34:14 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2011 22:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,223,1304319600"; d="scan'208";a="643620578"
Received: from unknown (HELO [10.255.12.172]) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 16 May 2011 22:34:14 -0700
Message-ID: <4DD208E6.6030105@linux.intel.com>
Date: Mon, 16 May 2011 22:34:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305599686.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1305599686.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: V3 [PATCH 0/4] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Tue, 17 May 2011 05:34:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Robert,

I think we're just about there. I added my final comments to the
following patches. If you'll resubmit with those addressed, I believe we
are ready to push.

Thank you for your patience, I think it is particularly important for
our canonical example be precise in both form and function.

--
Darren

On 05/16/2011 07:39 PM, Robert Yang wrote:
> Changes of V3:
>   * Correct the typos
>   * Cleanup the whitespace in ${sysconfdir}/init.d/functions
>   * Don't indent in the cases of case, e.g.:
>     case $? in
>     0)
>         do_yes
>         ;;
>     1)
>         do_no
>         ;;
>     esac
>   * Try to remove the "<cmd> || status=$?", I just remove one of them,
>     fo other cases I had to save "$?" and return it at the end of the
>     function.
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: robert/init_scripts
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts
> 
> Thanks,
>     Robert Yang <liezhi.yang@windriver.com>
> ---
> 
> 
> Robert Yang (4):
>   Add the layer meta-skeleton
>   Cleanup the whitespace in functions
>   Add pidofproc to ${sysconfdir}/init.d/functions
>   Add a skeleton for init scripts
> 
>  meta-skeleton/conf/layer.conf                      |   10 +
>  .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
>  .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
>  .../service/service/skeleton_test.c                |   11 +
>  .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>  .../initscripts/initscripts-1.0/functions          |   39 ++++-
>  6 files changed, 295 insertions(+), 5 deletions(-)
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

