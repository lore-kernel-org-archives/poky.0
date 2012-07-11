Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E6FE00344
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 07:57:23 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 11 Jul 2012 07:57:23 -0700
Received: by pbbro8 with SMTP id ro8so2214345pbb.25
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 07:57:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=G12YAZgBh2rftaApWcySrcVAQPWeOCndG1c1sZTi/CY=;
	b=fwIkJSXGl/tuFJlQr30CCu7GffaDeEv3f71v2QcyO3mn1YnDMZhJBFgRJrEGuUjQ/i
	pbLNvdSsSyieT9mTFX3SwelTFz+gBf4nu1rZ4wiBCMAFJHxLoJ3nNSG7DZR0FDHmGnx8
	rVhUaD9T+TlQhJW25ZGKOm6C+G8eA4sBu3govzbnKGeloFL3gwaPrpmfK+5LH2st61qk
	SAKDE1kkQa2USNCHzK4vjQu+SGtyqY1whtg7KrJVmOFSJI+XkNLxFVPJlrm9yw6EUL30
	VyFuZmUAgSlHKAozoK7wmBtH8sechwcq6wQ7O+byYtrhm06IVoKDPdfawjMJn/93gPwY
	QQsw==
Received: by 10.68.227.163 with SMTP id sb3mr80232974pbc.74.1342018642539;
	Wed, 11 Jul 2012 07:57:22 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id tt7sm1263066pbc.69.2012.07.11.07.57.20
	(version=SSLv3 cipher=OTHER); Wed, 11 Jul 2012 07:57:21 -0700 (PDT)
Message-ID: <4FFD944F.3050903@intel.com>
Date: Wed, 11 Jul 2012 07:57:19 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	"Zanussi, Tom" <tom.zanussi@intel.com>
References: <cover.1342017991.git.bruce.ashfield@windriver.com>
	<8eb56d8676650879a1551f532ace758bb0bf7939.1342017991.git.bruce.ashfield@windriver.com>
In-Reply-To: <8eb56d8676650879a1551f532ace758bb0bf7939.1342017991.git.bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQl30BQWuycPdN8TR5QzYozC8wCwBWwvh8rXrp/UeyJJArlZtWT+om03/dle19x2pl94XhWk
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] linux-yocto-3.0/meta-yocto: perf script fixes
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
X-List-Received-Date: Wed, 11 Jul 2012 14:57:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/11/2012 07:49 AM, Bruce Ashfield wrote:
> Updating the yocto reference boards to have the perf scripting fixes
> from 3.2/3.4:
>
>   cef17a1 perf: add sgidefs.h to for mips builds
>   3258da3 perf: change --root to --prefix for python install
>   1f9c25b perf: add 'libperl not found' warning
>   f2b1bf1 perf: use pkg-config instead of python-config
>   568e05f perf tools: Add support to install perf python extension
>   7e47f81 Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>   .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 +
>   2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> index fdd9f7d..274eb82 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> @@ -4,13 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>   COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>   KMACHINE_atom-pc = "atom-pc"
>   KBRANCH_atom-pc = "yocto/standard/preempt-rt/base"
> -SRCREV_machine_pn-linux-yocto-rt_atom-pc = "e67428d9966eecec4c081993dc64ceb5c0e64643"
> +SRCREV_machine_pn-linux-yocto-rt_atom-pc = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
>
>   # mpc8315e-rdb support
>   COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>   KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
>   KBRANCH_mpc8315e-rdb = "yocto/standard/preempt-rt/base"
> -SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "e67428d9966eecec4c081993dc64ceb5c0e64643"
> +SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "bbd5bfe49403fdcca294ca4b163d5f7195ea3a8e"
>
>   # beagleboard support - 3.0 support has not yet been completed, build failure
>   #COMPATIBLE_MACHINE_beagleboard = "beagleboard"
> @@ -22,4 +22,4 @@ SRCREV_machine_pn-linux-yocto-rt_mpc8315e-rdb = "e67428d9966eecec4c081993dc64ceb
>   COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>   KMACHINE_routerstationpro = "routerstationpro"
>   KBRANCH_routerstationpro = "yocto/standard/preempt-rt/routerstationpro"
> -SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "94b9545c58bf4dee8321b800b90958d10875fda8"
> +SRCREV_machine_pn-linux-yocto-rt_routerstationpro = "634ba79510753eecd27a39a315f690f1c9d46efe"
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 6de9def..fc1a7df 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -8,6 +8,7 @@ SRCREV_machine_routerstationpro ?= "af74f58ef6ffdc68cc77d314ad31bd6a322309d3"
>   SRCREV_machine_mpc8315e-rdb ?= "0c781e306559d5e9816e202a60aa2543f4eea39e"
>   SRCREV_machine_beagleboard ?= "567c989c90ce5f2c62f6ef788be763150b65a0fb"
>
> +
>   COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>   COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>   COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>
I see changes for atom-pc, mpc, and routerstation, but not the 
beagleboard, does it not need the change also?

Sau!




