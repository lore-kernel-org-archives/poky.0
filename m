Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF7494C800A6
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:53:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 09:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="614757051"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 09:53:51 -0700
Message-ID: <4D838E1E.2070604@linux.intel.com>
Date: Fri, 18 Mar 2011 09:53:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1300425643.git.edwin.zhai@intel.com>
	<1c56783be10e6d51a801ccbee9e9ec5ae2c5db32.1300425643.git.edwin.zhai@intel.com>
In-Reply-To: <1c56783be10e6d51a801ccbee9e9ec5ae2c5db32.1300425643.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: Warnings of qemu segfault caused by nVidia's libGL
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
X-List-Received-Date: Fri, 18 Mar 2011 16:53:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/17/2011 10:23 PM, Zhai Edwin wrote:
> From: Zhai Edwin<edwin.zhai@intel.com>
> 
> Proprietary nVidia driver introduce its own libGL that precede mesa's.
> qemu has segfault if linked with it. This fix give warnings and workaround
> to end user.
> 
> [YOCTO #649]
> [YOCTO #698]
> 
> 
> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> Signed-off-by: Mark Hatle<mark.hatle@windriver.com>
> ---
>   scripts/poky-qemu-internal |   14 +++++++++++++-
>   1 files changed, 13 insertions(+), 1 deletions(-)
> 
> diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
> index 3638a65..5f32447 100755
> --- a/scripts/poky-qemu-internal
> +++ b/scripts/poky-qemu-internal
> @@ -436,10 +436,22 @@ else
>       echo "Warning: distccd not present, no distcc support loaded."
>   fi
> 
> +# qemu got segfault if linked with nVidia's libgl
> +if ldd $QEMUBIN | grep -i nvidia&>  /dev/null
> +then
> +    echo "************** !!!Warning!!! **************
> +    nVidia's proprietary OpenGL libraries are known to have compatibility
> +    issues with qemu, resulting in a segfault. Please uninstall these
> +    drivers or ensure the mesa libGL libraries precede nvidia's via LD_PRELOAD.
> +    "

Please don't wrap lines with echo, it comes out like this:

************** !!!Warning!!! **************
    nVidia's proprietary OpenGL libraries are known to have compatibility
    issues with qemu, resulting in a segfault. Please uninstall these
    drivers or ensure the mesa libGL libraries precede nvidia's via LD_PRELOAD.
    
This is why my suggestion used

cat <<EOM
verbatim message
EOM

Also, this doesn't include the comment about the script trying to use LD_PRELOAD.
So this is not the patch I proposed, as such, please do not add my Signed-off-by.

Thanks,

Darren

> +fi
> +
>   echo "Running $QEMU..."
>   # -no-reboot is a mandatory option - see bug #100
>   echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> -$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
> +# If QEMU crashes, we need to run stty sane
> +$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || stty sane
> +
> 
>   cleanup
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

