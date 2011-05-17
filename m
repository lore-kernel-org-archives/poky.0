Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32C304C804CC
	for <poky@yoctoproject.org>; Mon, 16 May 2011 21:12:57 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H2CusK018761
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 19:12:56 -0700 (PDT)
Received: from [128.224.163.140] (128.224.163.140) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 16 May 2011 19:12:55 -0700
Message-ID: <4DD1D9A5.7090805@windriver.com>
Date: Tue, 17 May 2011 10:12:53 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1305558153.git.liezhi.yang@windriver.com>
	<4DD16311.2040109@linux.intel.com>
In-Reply-To: <4DD16311.2040109@linux.intel.com>
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
X-List-Received-Date: Tue, 17 May 2011 02:12:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


On 05/17/2011 01:46 AM, Darren Hart wrote:
>
>
> On 05/16/2011 08:18 AM, Robert Yang wrote:
>> Changes of V2:
>>    * Add the definition of actions to the comment area in skeleton
>>    * Implement try-restart and force-reload according to their definitions
>>    * Replace start-stop-daemon with "exec $DAEMON ..." to make it more easier
>>      to control the output message, so that we would not depend on the output
>>      of start-stop-daemon
>
>
> What was the motivation for this change? We don't want to veer to far
> from what people are accustomed to using as this will increase the
> amount of work to maintain the initscripts that we reuse from packages.
>

Hi Darren,

Thank you for your detailed review, the disadvantages of use start-stop-daemon:
1) The different version of start-stop-daemon output different messages, for
    example, the output in yocto is different from Ubuntu 10.10.

2) Its output is not uniform, for example:
    - If the daemon is running and do_start:
      $DAEMON already running.
      $PID
    - If the daemon is running and do_stop:
      Stopped $NAME ($PID).
    - If the daemon is not running and do_stop:
      No $NAME found running; none killed.

    We can see that it uses either $DAEMON(e.g., /usr/sbin/skeleton) or
    $NAME(e.g., skeleton). If we want to use start-stop-daemon, we have two
    solutions:
    - Patch start_stop_daemon.c in busybox, but other programs may depend on
      the output of start-stop-daemon.
    - Use awk, sed and pipe(|) to format its output, but as Richard suggested
      that we should try to avoid the fork.

3) While I'm looking into start_stop_daemon.c, it ran "exec ( ... )"  and
    "kill ( ... )" when start and stop a daemon after some additional checks,
    not all these checks are needed by us for we are in embedded systems. So
    use "exec" and "kill" is faster than start-stop-daemon.

I think that a better solution is do much work on start_stop_daemon.c, so
that we can have our start-stop-daemon, maybe we can do it on another case?

Thanks
// Robert

>
>>    * Output simple and uniform messages
>
>
> While I support this (and asked for it), if we have to rewrite more or
> less standard infrastructure to do it, then we probably should just live
> with it.
>
> Thoughts?
>
>
>>    * Move the function pidofproc () to ${sysconfdir}/init.d/functions and
>>      declare that it can't get the pid of a script unless pidof supports "-x".
>>    * Add /usr/sbin/skeleton-test to make /etc/init.d/skeleton can be run by
>>      default.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: robert/init_scripts
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts
>
>
> Thanks Robert, some more comments inline with the patches.
>
> --
> Darren
>
>>
>> Thanks,
>>      Robert Yang<liezhi.yang@windriver.com>
>> ---
>>
>>
>> Robert Yang (3):
>>    Add the layer meta-skeleton
>>    Add pidofproc to ${sysconfdir}/init.d/functions
>>    Add a skeleton for init scripts
>>
>>   meta-skeleton/conf/layer.conf                      |   10 +
>>   .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
>>   .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
>>   .../service/service/skeleton_test.c                |   11 +
>>   .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
>>   .../initscripts/initscripts-1.0/functions          |   32 +++-
>>   6 files changed, 291 insertions(+), 2 deletions(-)
>>   create mode 100644 meta-skeleton/conf/layer.conf
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
>>   create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb
>>
>

