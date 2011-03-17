Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 953664C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 10:17:49 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2011 08:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,199,1299484800"; d="scan'208";a="721215973"
Received: from doubt.jf.intel.com (HELO [10.7.199.54]) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2011 08:17:38 -0700
Message-ID: <4D822612.2050604@linux.intel.com>
Date: Thu, 17 Mar 2011 08:17:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1300352186.git.edwin.zhai@intel.com>
	<f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
In-Reply-To: <f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: Use mesa's libGL rather than nVidia's to	avoid segfault of qemu
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
X-List-Received-Date: Thu, 17 Mar 2011 15:17:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/17/2011 05:22 AM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
>
> Proprietary nVidia driver introduce its own libGL that precede mesa's.
> qemu has segfault if linked with it. This fix try to use mesa's libGL
> if ldd find qemu linked with nVidia libGL.
>
> [YOCTO #649]
> [YOCTO #698]
>

Looks like the right approach, my only concern is the wording of the 
error messages. They are ambiguous with respect to what the script WILL 
DO and what it is telling the user THEY SHOULD DO. Also, avoiding the 
"you did this, bad user" sort of language wold be good.

Consider the following:

>
> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> ---
>   scripts/poky-qemu-internal |   16 +++++++++++++++-
>   1 files changed, 15 insertions(+), 1 deletions(-)
>
> diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
> index 3638a65..1f09fe7 100755
> --- a/scripts/poky-qemu-internal
> +++ b/scripts/poky-qemu-internal
> @@ -436,10 +436,24 @@ else
>       echo "Warning: distccd not present, no distcc support loaded."
>   fi
>
> +# qemu got segfault if linked with nVidia's libgl
> +GL_LD_PRELOAD=$LD_PRELOAD
> +
> +if ldd $QEMUBIN | grep -i nvidia&>  /dev/null
> +then
> +    echo "************** !!!Warning!!! **************
> +    You installed nVidia's libGL.so that probably lead qemu segfault!
> +    Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
> +
> +    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's instead
> +    echo "Skip nVidia's libGL!"

No need for two separate messages here, consider:

cat <<EOM
************** !!! Warning !!! **************
nVidia's proprietary OpenGL libraries are known to have compatibility 
issues with qemu, resulting in a segfault. Please uninstall these 
drivers or ensure the mesa libGL libraries precede nvidia's.

Attempting to use mesa's libGL.so via GL_LD_PRELOAD."
EOM

--
Darren

> +    GL_LD_PRELOAD="/usr/lib/libGL.so $LD_PRELOAD"
> +fi
> +
>   echo "Running $QEMU..."
>   # -no-reboot is a mandatory option - see bug #100
>   echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> -$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
> +LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
>
>   cleanup
>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

