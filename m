Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58D9F4C804C2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 08:53:54 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 May 2011 06:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,225,1304319600"; 
   d="scan'208";a="2780461"
Received: from unknown (HELO [10.255.12.172]) ([10.255.12.172])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 06:53:53 -0700
Message-ID: <4DD27E04.9060402@linux.intel.com>
Date: Tue, 17 May 2011 06:54:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305612543.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1305612543.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: V4 [PATCH 0/4] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Tue, 17 May 2011 13:53:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/16/2011 11:17 PM, Robert Yang wrote:
> Changes of V4:
> * Fix the indent in ${sysconfdir}/init.d/functions
> * Fix the coding style in skeleton_test.c
> 
> Thanks for Darren's detailed review, and he is happy now.

Indeed,

Acked-by: Darren Hart <dvhart@linux.intel.com>

For the entire series.

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
>  .../service/service/skeleton_test.c                |   12 ++
>  .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>  .../initscripts/initscripts-1.0/functions          |   39 ++++-
>  6 files changed, 296 insertions(+), 5 deletions(-)
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

