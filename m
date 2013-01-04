Return-Path: <anna.dushistova@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55C55E006F8
	for <poky@yoctoproject.org>; Fri,  4 Jan 2013 02:50:06 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id um15so9084485pbc.2
	for <poky@yoctoproject.org>; Fri, 04 Jan 2013 02:50:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fS9B5eb6ok2h/x7BJLIzG+4iamX8PVmSypDu+41RH8U=;
	b=VCiqqleoigKbjwpUaT35voa3zDUBFnGIqeyfHRjv8u9Xghi3L0xSYbf5qTve7fisw9
	2c10zAlc0hwWUcrVoFg2m5DQEW3aIMdsJ/bNarSkeK1pTnmpkBkdtAPVymLoTGbgfu6t
	osyEE14tH/sCM5zPLyJgnK603siX/iNff/k4BNnUc7fULBWRhF0rLlQMmpy4iLAOW3hH
	M2Lq/egVG3kQLmUgRgKLkcEYFARI9KyIGi8Yk9KNtubg0idq0H/vit/+3zs81rD1Hjch
	TFkE53gLRNkLOQerf0vWNR1JSryrVAWPS1yCDLmUZFg2R4dt7tWXdCLDt+ztuFVy+0Je
	hZfw==
MIME-Version: 1.0
Received: by 10.66.52.102 with SMTP id s6mr153532591pao.6.1357296605911; Fri,
	04 Jan 2013 02:50:05 -0800 (PST)
Received: by 10.68.42.230 with HTTP; Fri, 4 Jan 2013 02:50:05 -0800 (PST)
In-Reply-To: <53B11A2698485743AAA262E995E2C3F1915F0CEA@EU-MBX-01.mgc.mentorg.com>
References: <53B11A2698485743AAA262E995E2C3F1915F0C3C@EU-MBX-01.mgc.mentorg.com>
	<CAKL3bWXCnY63a0n5uqwpqrLgBwAwa-jSpHC2WxwdfRvrQc6yBA@mail.gmail.com>
	<53B11A2698485743AAA262E995E2C3F1915F0CEA@EU-MBX-01.mgc.mentorg.com>
Date: Fri, 4 Jan 2013 13:50:05 +0300
Message-ID: <CAKL3bWWUaTm51omkJqBgT30Pyo1vu2viMTVDrUOc84+8qwPoNw@mail.gmail.com>
From: Anna Dushistova <anna.dushistova@gmail.com>
To: "Ali, Nasir" <Nasir_Ali@mentor.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Pandaboard booting with Yocto with LTTng support
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
X-List-Received-Date: Fri, 04 Jan 2013 10:50:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Here is what I have in my local.conf(which is a little too much, but
seems to be working):
KERNEL_CONFIG_TRACEPOINTS="y"
KERNEL_CONFIG_HAVE_ARCH_TRACEHOOK="y"
KERNEL_CONFIG_TRACE_IRQFLAGS="y"
KERNEL_CONFIG_STACKTRACE="y"
KERNEL_CONFIG_FRAME_POINTER="y"
KERNEL_CONFIG_NOP_TRACER="y"
KERNEL_CONFIG_TRACER_MAX_TRACE="y"
KERNEL_CONFIG_EVENT_TRACING="y"
KERNEL_CONFIG_EVENT_POWER_TRACING_DEPRECATED="y"
KERNEL_CONFIG_CONTEXT_SWITCH_TRACER="y"
KERNEL_CONFIG_TRACING="y"
KERNEL_CONFIG_GENERIC_TRACER="y"
KERNEL_CONFIG_FTRACE="y"
KERNEL_CONFIG_FUNCTION_TRACER="y"
KERNEL_CONFIG_FUNCTION_GRAPH_TRACER="y"
KERNEL_CONFIG_IRQSOFF_TRACER="y"
KERNEL_CONFIG_PREEMPT_TRACER="y"
KERNEL_CONFIG_SCHED_TRACER="y"
KERNEL_CONFIG_FTRACE_SYSCALLS="y"
KERNEL_CONFIG_BRANCH_PROFILE_NONE="y"
KERNEL_CONFIG_STACK_TRACER="y"
KERNEL_CONFIG_BLK_DEV_IO_TRACE="y"
KERNEL_CONFIG_KPROBES="y"
KERNEL_CONFIG_KPROBE_EVENT="y"
KERNEL_CONFIG_DYNAMIC_FTRACE="y"
KERNEL_CONFIG_FUNCTION_PROFILER="y"
KERNEL_CONFIG_FTRACE_MCOUNT_RECORD="y"
KERNEL_CONFIG_FTRACE_SELFTEST="y"
KERNEL_CONFIG_FTRACE_STARTUP_TEST="y"
KERNEL_CONFIG_EVENT_TRACE_TEST_SYSCALLS="y"
KERNEL_CONFIG_RING_BUFFER_BENCHMARK="y"

Also, see if your lttng modules got into your rootfs. It seems like
they are not present.
Or located somewhere lttng cannot find them. I would try to install
them manually(insmod or modprobe)
just to make sure.

Anna.

On Fri, Jan 4, 2013 at 9:17 AM, Ali, Nasir <Nasir_Ali@mentor.com> wrote:
> Hi Anna,
>
> I have enabled the following in defconfig file. Apart from these I don't know what other configuration I need to enable for kernel tracing.
>
> CONFIG_MODULES=y
> CONFIG_KALLSYMS=y
> CONFIG_HIGH_RES_TIMERS=y
> CONFIG_FTRACE=y
> CONFIG_TRACEPOINTS=y
> CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
> CONFIG_HAVE_PERF_EVENTS=y
> CONFIG_EVENT_TRACING=y
> CONFIG_KPROBES=y
> CONFIG_KRETPROBES=y
>
> Best Regards,
> Nasir
> ________________________________________
> From: Anna Dushistova [anna.dushistova@gmail.com]
> Sent: Thursday, January 03, 2013 9:20 PM
> To: Ali, Nasir
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Pandaboard booting with Yocto with LTTng support
>
> Hello,
>
> Does your kernel image have tracing enabled?
>
> Anna.
>
> On Thu, Jan 3, 2013 at 4:06 PM, Ali, Nasir <Nasir_Ali@mentor.com> wrote:
>> Hi,
>>
>> I need to have LTTng kernel tracer support in Panda-board. I have
>> successfully built Yocto with LTTng support for Pandaboard and also
>> successfully booted with these images but LTTng kernel tracer doesn't work
>> for me. I have built with the following steps:
>>
>> Pull the Yocto sources from git: git clone --branch <release_name>
>> git://git.yoctoproject.org/poky
>> Pull meta-ti layer from git:git clone --branch <release_name>
>> git://git.yoctoproject.org/meta-ti
>> Run the environment setup script (oe-init-build-env)
>> Add the machine name (MACHINE ?= "pandaboard") in local.conf file
>> Add a line (BBMASK = "meta-ti/recipes-misc") at the end in local.conf file
>> for resolving meta-ti dependencies
>> Add a line (IMAGE_INSTALL_append = " dropbear") at the end in local.conf
>> file for 'ssh' support if it required.
>> Add a line (CORE_IMAGE_EXTRA_INSTALL = "lttng2-ust lttng-modules
>> lttng-tools") at the end in local.conf file for LTTng2.
>> Add meta-ti layer path in 'bblayers.conf' file
>> Start building with bitbake core-image-minimal
>>
>>
>> Then booted successfully but LTTng kernel tracer doesn't work.
>>
>>
>> root@pandaboard:~# lttng list -k
>> Spawning a session daemon
>> FATAL: Module lttng-tracer not found.
>> Error: Unable to load module lttng-tracer
>> Error: Unable to remove module lttng-tracer
>> Warning: No kernel tracer available
>> FATAL: Module lttng-tracer not found.
>> Error: Unable to load module lttng-tracer
>> Error: Unable to remove module lttng-tracer
>> Warning: No kernel tracer available
>> Error: Unable to list kernel events
>>
>> Could you please anybody guide me about this issue.
>>
>> Best Regards,
>> Nasir
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>

