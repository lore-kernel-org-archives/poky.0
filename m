Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A532A4C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 10:03:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2HF35ct027255
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Mar 2011 08:03:07 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 17 Mar 2011 08:03:04 -0700
Message-ID: <4D8222A7.8000409@windriver.com>
Date: Thu, 17 Mar 2011 10:03:03 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1300352186.git.edwin.zhai@intel.com>
	<f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
In-Reply-To: <f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
X-Originating-IP: [172.25.36.231]
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
X-List-Received-Date: Thu, 17 Mar 2011 15:03:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

I reworked the patch slightly.. It's available on poky-contrib
mhatle/qemu-workaround.

Specifically I changed:
- the warning message to make clarify it a bit.
- Changed the preload to be "libGL.so", so the rt-linker will now search for it
(/usr/lib/libGL.so may be wrong on some systems where /usr/lib64 is the default
library path)
- Added a second check to see if the workaround worked or not, if it didn't add
a second warning message
- To the QEMU run line, add "stty sane" in the case of a failure.  Otherwise
QEMU leaves the terminal/console in a confused state.

Can you please verify that this still works on the Ubuntu systems and that I
didn't miss anything/break anything else?  If so I think this is the version we
should go with.

--Mark

On 3/17/11 7:22 AM, Zhai Edwin wrote:
> From: Zhai Edwin <edwin.zhai@intel.com>
> 
> Proprietary nVidia driver introduce its own libGL that precede mesa's.
> qemu has segfault if linked with it. This fix try to use mesa's libGL
> if ldd find qemu linked with nVidia libGL.
> 
> [YOCTO #649]
> [YOCTO #698]
> 
> 
> Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
> ---
>  scripts/poky-qemu-internal |   16 +++++++++++++++-
>  1 files changed, 15 insertions(+), 1 deletions(-)
> 
> diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
> index 3638a65..1f09fe7 100755
> --- a/scripts/poky-qemu-internal
> +++ b/scripts/poky-qemu-internal
> @@ -436,10 +436,24 @@ else
>      echo "Warning: distccd not present, no distcc support loaded."
>  fi
>  
> +# qemu got segfault if linked with nVidia's libgl
> +GL_LD_PRELOAD=$LD_PRELOAD
> +
> +if ldd $QEMUBIN | grep -i nvidia &> /dev/null
> +then
> +    echo "************** !!!Warning!!! **************
> +    You installed nVidia's libGL.so that probably lead qemu segfault!
> +    Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
> +
> +    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's instead
> +    echo "Skip nVidia's libGL!"
> +    GL_LD_PRELOAD="/usr/lib/libGL.so $LD_PRELOAD"
> +fi
> +
>  echo "Running $QEMU..."
>  # -no-reboot is a mandatory option - see bug #100
>  echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> -$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
> +LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
>  
>  cleanup
>  


