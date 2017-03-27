Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A2DE00B01; Mon, 27 Mar 2017 16:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5528EE00A16
	for <poky@yoctoproject.org>; Mon, 27 Mar 2017 16:31:24 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id o123so13857449pga.1
	for <poky@yoctoproject.org>; Mon, 27 Mar 2017 16:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=jx9HWKnYWjzxyqBKs8pBPUfPkh41YP8tnslPzpCddrY=;
	b=BSSz6ChnTjFVggPBxhAGRBV03YQatfnrw+u/Bnu+BXNe3MByYzStnSBjlXIu3WEgqt
	1Br6NF2+RGGHqCiLRuAdbjcdORuKw2piBB4cfzRsKx7RQ5cUMaLhwEPxLL1c1REaZioW
	NIsl6kONGEqpopjePvqKqG60hyQwxHYLOA1oG0hNTNAP7mySOzITELdlLQVdpw1WMPi3
	I5OuBwJv1rD7v6S+qdRlUOyxUfBtNFJDDcVFZQkcHncaP+GxVhJKuJq6GlWpfI0Q3oZl
	2hSpmf9Qa2QhbD4/IRHAGXop7HdNK1/J+bUSSVSmtMgvVDck2QdefHnnVQcvNNPgT5t3
	YfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=jx9HWKnYWjzxyqBKs8pBPUfPkh41YP8tnslPzpCddrY=;
	b=IL0eCaGvC6947PT832JW8ji1cX6Z6wGg7B731CbNx+JZ9hYz4nYIHkVvFATa0Bpipe
	lkb7PjUzP6eAAkdE9IXSjYK2e/O0BaqLOEz6RTwEXeQFmDP7wBY9aVefjSxY9Eo8uV36
	Rn89gwXVLn/i/23ef78w4pcTMHl8h1r0QPC/wzofoEOz7I1HB/JhBGVh83xrKGL8pW9G
	a9RIi3fGE75Z8WTeoTZ+RoeN77dOWuYWauHQcr8L19xYrDN6Z6a9UqHMYhP/kKVDxq1x
	flX7EH9oOqjHOHaz2uI0oyJ9g/ALrPOVaEuAo7F5tXiTF9pNg3ccwq6O/s59afPgswTJ
	EMxQ==
X-Gm-Message-State: AFeK/H3Va9p6tL8Mzh0/fzgJleAgKURKSgZ6ZLVU27jTIDygoQw6aTNJAqXEBgTGbF6SvQ==
X-Received: by 10.99.121.77 with SMTP id u74mr27147974pgc.200.1490657483701;
	Mon, 27 Mar 2017 16:31:23 -0700 (PDT)
Received: from [192.168.0.46] (174-24-47-146.clsp.qwest.net. [174.24.47.146])
	by smtp.gmail.com with ESMTPSA id
	c75sm3184855pga.22.2017.03.27.16.31.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Mar 2017 16:31:23 -0700 (PDT)
To: leonardo.sandoval.gonzalez@linux.intel.com, poky@yoctoproject.org
References: <20170328061152.31318-1-leonardo.sandoval.gonzalez@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <3059aef6-0a8e-5e57-db11-8f7cd4be71ce@gmail.com>
Date: Mon, 27 Mar 2017 16:31:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170328061152.31318-1-leonardo.sandoval.gonzalez@linux.intel.com>
Subject: Re: [PATCH] [morty] recipes-kernel: Skip kernel version check on kernel templates
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
X-List-Received-Date: Mon, 27 Mar 2017 23:31:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Leonardo,

On 03/27/2017 11:11 PM, leonardo.sandoval.gonzalez@linux.intel.com wrote:
> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>
> Currently, SRCREV is set to AUTOREV, causing mismatch between PV and the kernel
> version shown in the makefile (see below to see the bitbake log). The solution
> is to skip this check, suggesting to remove it once SRCREV is locked.
>
> ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Package Version (4.10+gitAUTOINC+01f18cba44_53be19cad6) does not match of kernel being built (4.10.5). Please update the PV variable to match the kernel source or set KERNEL_VERSION_SANITY_SKIP="1" in your recipe.
> ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Function failed: do_kernel_version_sanity_check (log file is located at /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp/log.do_kernel_version_sanity_check.26904)
> ERROR: Logfile of failure stored in: /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp

These errors don't match the supported kernel versions in Morty. Are 
these being seen our 4.1, 4.4 or 4.8? I have not seen these errors.

- Armin
> /log.do_kernel_version_sanity_check.26904
> ERROR: Task (/home/lsandov1/poky2/meta/recipes-kernel/linux/linux-yocto_4.10.bb:do_kernel_version_sanity_check) failed with exit code '1
>
> [YOCTO #11064]
>
> Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> ---
>   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend       | 2 ++
>   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend       | 2 ++
>   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend       | 2 ++
>   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 +++-
>   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 2 ++
>   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend     | 2 ++
>   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
>   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
>   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
>   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
>   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
>   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
>   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
>   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
>   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
>   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
>   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
>   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
>   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
>   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
>   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
>   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
>   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
>   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
>   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 2 ++
>   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 2 ++
>   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend   | 2 ++
>   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend | 2 ++
>   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend | 2 ++
>   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend | 2 ++
>   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
>   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
>   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
>   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
>   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
>   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
>   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
>   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
>   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
>   42 files changed, 85 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 2d3d073..4e7d7cb 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -29,4 +29,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   # the appropriate changes committed to the upstream linux-yocto repo
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> -#LINUX_VERSION = "4.1"
> \ No newline at end of file
> +#LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index b88a06c..56e8ad3 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index 7c0df8b..59752a9 100644
> --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index aecdff0..5ed144b 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index dd4de31..ab644bd 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index 137d8fa..a535aea 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 1e99a04..4e7d7cb 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index b88a06c..56e8ad3 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index 7c0df8b..59752a9 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 01a046c..802e5f4 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index 57c90fa..dbb0fd5 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index accf9d5..c2eb40d 100644
> --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 1e99a04..4e7d7cb 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index b88a06c..56e8ad3 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index 7c0df8b..59752a9 100644
> --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 14ee16f..81392ce 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index e256e08..a73b1aa 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index c1635d6..7d40671 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index fce67b4..a9fd9ec 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index 4097932..cdee773 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index e8c3fc8..24c2880 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> index 0a47a4e..d15a178 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> index 815c77b..070bd87 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> index 5fb45d9..c391322 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
>   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> index 1e99a04..4e7d7cb 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.1"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> index b88a06c..56e8ad3 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.4"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> index 7c0df8b..59752a9 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
>   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
>   #LINUX_VERSION = "4.8"
> +#Remove the following line once AUTOREV is locked to a certain SRCREV
> +KERNEL_VERSION_SANITY_SKIP = "1"


