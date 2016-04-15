Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B43BEE00CED; Fri, 15 Apr 2016 11:19:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB4CE00527
	for <poky@yoctoproject.org>; Fri, 15 Apr 2016 11:19:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u3FIJPCV022735
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Apr 2016 11:19:25 -0700 (PDT)
Received: from server.local (147.11.119.164) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 15 Apr 2016 11:19:24 -0700
To: Francis Giraldeau <francis.giraldeau@gmail.com>, <poky@yoctoproject.org>
References: <CAC6yHM64yMhA-xvmVviqFu1H4zo5kpn659A5=gfgC_wPMsjdpg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <571130AC.7000608@windriver.com>
Date: Fri, 15 Apr 2016 14:19:24 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <CAC6yHM64yMhA-xvmVviqFu1H4zo5kpn659A5=gfgC_wPMsjdpg@mail.gmail.com>
Subject: Re: Status of preempt-rt on raspberrypi
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Apr 2016 18:19:28 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-15 1:44 PM, Francis Giraldeau wrote:
> I'd like to create an image with linux preempt-rt for the raspberry-pi.
>
> I merged the patches specific to the rpi on top of the linux 4.4
> preempt-rt branch [1]. Now, I'm trying to add the support in the
> meta-raspberrypi layer [2].
>
> However, I still have an issue setting the required config, such as
> CONFIG_PREEMPT_FULL=y for the kernel. I saw that there is already a
> preempt-rt branch and config by default in Yocto, but I haven't found
> the way to select in the local.conf file when building for the rpi. My
> local.conf file has this content:

The issue would be that the rpi machine is using a different kernel
repo, and that repository doesn't have -rt integrated.

>
> MACHINE ??= "raspberrypi2"
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi-rt"
>
> In fact, even with this local.conf:
> MACHINE ??= "qemuarm"
> KBRANCH ?= "standard/preempt-rt"
>
> The resulting kernel config does not include PREEMPT_FULL:
> $ grep PREEMPT
> ./tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/4.1.15+gitAUTOINC+46bb64d605_cf760f381c-r0/linux-qemuarm-standard-build/.config
> CONFIG_PREEMPT_RCU=y
> # CONFIG_PREEMPT_NONE is not set
> # CONFIG_PREEMPT_VOLUNTARY is not set
> CONFIG_PREEMPT=y
> CONFIG_PREEMPT_COUNT=y
> CONFIG_DEBUG_PREEMPT=y
> # CONFIG_PREEMPT_TRACER is not set

You need linux-yocto-rt to get the proper -rt configuration generated.

>
> And CONFIG_DEBUG_PREEMPT should be unset, because it is known to cause
> slowdowns.
>
> I followed the kernel dev manual and tried to add .cfg file, but it
> looks like the kernel .config is generated from within
> do_configure_prepend() in the meta-raspberrypi kernel recipe. That seems
> to overwrite other config done by bitbake.

The flexibility (and diversity) in BSPs means that not all kernel builds
behave the same. Getting consensus on elements of the config and build
(and deploy) isn't simple .. so there is core kernel build support in 
oe-core
and extensions for linux-yocto. Unless a recipe inherits kernel-yocto and
turns on that framework, then you need to look at the kernel you are 
building
and see how it is configured.

That's very likely why the .cfg isn't being applied on the end.

Cheers,

Bruce

>
> So, I'm a bit confused on how things should properly work. Any advice
> would be greatly appreciated.
>
> Thanks for the help,
>
> Francis
>
> [1] https://github.com/giraldeau/linux/tree/linux-4.4.y-rt-rebase-rpi
> [2]
> https://github.com/giraldeau/meta-raspberrypi/commit/56168d6b320c1b724d04b1e7f365255ffdb62e70
>
>
>


