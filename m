Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C71734C811BE
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:02:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jan 2011 17:02:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377696920"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 17:02:50 -0800
Message-ID: <4D38DB3A.8080400@intel.com>
Date: Thu, 20 Jan 2011 17:02:50 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295393078.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] meta-rt: create a real-time (PREEMPT_RT) layer
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
X-List-Received-Date: Fri, 21 Jan 2011 01:02:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 03:25 PM, Darren Hart wrote:
> Add a real-time layer to build the linux-yocto preempt_rt kernel type for
> specific machines. It also adds the rt-tests test suite. This series
> adds qemux86-64 support as well as atom-pc. Both have been boot tested.
>
> There has been much discussion surrounding where real-time support should be
> in the repositories. Most recently we discussed including it as part of the
> main poky repository. I think this makes the most sense as the rt kernels are
> built from the same kernel repositories as the other linux-yocto kernels.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/meta-rt
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/meta-rt
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (5):
>    meta-rt: Initial PREEMPT_RT layer and kernel recipes
>    meta-rt/rt-tests: add the PREEMPT_RT rt-tests testsuite and
>      recipes-tests directory
>    meta-rt/poky-image-*rt: Add initial PREEMPT_RT image recipes
>    machine/qemu: Allow for users to override the preferred kernel
>      version
>    meta-rt: atom-pc support
>
>   meta-rt/conf/layer.conf                            |   23 +++++++++++
>   meta-rt/images/poky-image-minimal-rt-directdisk.bb |   15 +++++++
>   meta-rt/images/poky-image-minimal-rt-live.bb       |   15 +++++++
>   meta-rt/images/poky-image-minimal-rt.bb            |   12 ++++++
>   meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |   40 ++++++++++++++++++++
>   meta-rt/recipes-tests/rt-tests_git.bb              |   22 +++++++++++
>   meta/conf/machine/include/qemu.inc                 |    2 +-
>   7 files changed, 128 insertions(+), 1 deletions(-)
>   create mode 100644 meta-rt/conf/layer.conf
>   create mode 100644 meta-rt/images/poky-image-minimal-rt-directdisk.bb
>   create mode 100644 meta-rt/images/poky-image-minimal-rt-live.bb
>   create mode 100644 meta-rt/images/poky-image-minimal-rt.bb
>   create mode 100644 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
>   create mode 100644 meta-rt/recipes-tests/rt-tests_git.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


