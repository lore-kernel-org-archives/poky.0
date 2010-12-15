Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 330FF4C80B71
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 20:29:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Dec 2010 18:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,345,1288594800"; d="scan'208";a="361805261"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 14 Dec 2010 18:29:08 -0800
Received: from [10.255.13.70] (10.255.13.70) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 14 Dec 2010 19:29:07 -0700
Message-ID: <4D0827F2.70704@intel.com>
Date: Tue, 14 Dec 2010 18:29:06 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1292436546.git.liping.ke@intel.com>
	<62d9aefe8c7beb8763ab7788bc99f5e4fdec1651.1292436546.git.liping.ke@intel.com>
In-Reply-To: <62d9aefe8c7beb8763ab7788bc99f5e4fdec1651.1292436546.git.liping.ke@intel.com>
Subject: Re: [PATCH 1/1] Add extra parameters options for poky-qemu scripts
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
X-List-Received-Date: Wed, 15 Dec 2010 02:29:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/2010 09:45 AM, Liping Ke wrote:
> In order to support user's extra requirement for adding extra options for qemu,
> we add extra parameter options, user can add extra parameters such as
> "<-m 256>" in poky-qemu script command.
>
> Signed-off-by: Liping ke<liping.ke@intel.com>

Acked-by: Scott Garman <scott.a.garman@intel.com>

> ---
>   scripts/poky-qemu          |   14 ++++++++++++++
>   scripts/poky-qemu-internal |   22 ++++++++++++++++++++--
>   2 files changed, 34 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/poky-qemu b/scripts/poky-qemu
> index bfeefc7..cd99e0e 100755
> --- a/scripts/poky-qemu
> +++ b/scripts/poky-qemu
> @@ -29,11 +29,14 @@ usage() {
>       echo "  Additional QEMU command-line options can be passed with:"
>       echo "    nographic - disables video console"
>       echo "    serial - enables a serial console on /dev/ttyS0"
> +    echo "    kvm - enables kvm"
> +    echo "    \"<extra-qemu-options>\" - enables extra qemu options, excluding serial and kvm"
>       echo ""
>       echo "Examples:"
>       echo "  $MYNAME qemuarm"
>       echo "  $MYNAME qemux86-64 poky-image-sato ext3"
>       echo "  $MYNAME path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
> +    echo "  $MYNAME qemux86 \"<-m 256>\""
>       exit 1
>   }
>
> @@ -47,6 +50,7 @@ FSTYPE=""
>   ROOTFS=""
>   LAZY_ROOTFS=""
>   SCRIPT_QEMU_OPT=""
> +SCRIPT_QEMU_EXTRA_OPT=""
>   SCRIPT_KERNEL_OPT=""
>
>   TMPDIR=""
> @@ -129,6 +133,16 @@ while [ $i -le $# ]; do
>               KVM_ENABLED="yes"
>               KVM_CAPABLE=`grep 'vmx\|smx' /proc/cpuinfo`
>               ;;
> +        \<*\>)
> +            SCRIPT_QEMU_EXTRA_OPT=$arg
> +            serial_option=`expr "$SCRIPT_QEMU_EXTRA_OPT" : '.*\(-serial\)'`
> +            kvm_option=`expr "$SCRIPT_QEMU_EXTRA_OPT" : '.*\(-enable-kvm\)'`
> +            echo "$kvm_option"
> +            if [[ ! -z "$serial_option" || ! -z "$kvm_option" ]]; then
> +                echo "Error: Please use serial or kvm params instead!"
> +                usage
> +            fi
> +            ;;
>           *)
>               # A directory name is an nfs rootfs
>               if [ -d "$arg" ]; then
> diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
> index ca2511a..5e74169 100755
> --- a/scripts/poky-qemu-internal
> +++ b/scripts/poky-qemu-internal
> @@ -29,6 +29,23 @@
>   #   ROOTFS - the disk image file to use
>   #
>
> +
> +mem_size=-1
> +
> +#Get rid of<>  and get the contents of extra qemu running params
> +SCRIPT_QEMU_EXTRA_OPT=`echo $SCRIPT_QEMU_EXTRA_OPT | sed -e 's/<//' -e 's/>//'`
> +#if user set qemu memory, eg: -m 256 in qemu extra params, we need to do some
> +# validation check
> +mem_set=`expr "$SCRIPT_QEMU_EXTRA_OPT" : '.*\(-m[[:space:]] *[0-9]*\)'`
> +if [ ! -z "$mem_set" ] ; then
> +#Get memory setting size from user input
> +  mem_size=`echo $mem_set | sed 's/-m[[:space:]] *//'`
> +fi
> +
> +if [ $mem_size -gt 0 ]; then
> +  QEMU_MEMORY="$mem_size"M
> +fi
> +
>   if [ -z "$QEMU_MEMORY" ]; then
>       case "$MACHINE" in
>           "qemux86")
> @@ -60,6 +77,7 @@ if [ "$MACHINE" = "qemuarm" ]; then
>           echo "WARNING: qemuarm does not support>  128M of RAM."
>           echo "*** Changing QEMU_MEMORY to default of 128M ***"
>           QEMU_MEMORY="128M"
> +        SCRIPT_QEMU_EXTRA_OPT=`echo $SCRIPT_QEMU_EXTRA_OPT | sed -e "s/$mem_set/-m 128/" `
>       fi
>   fi
>
> @@ -427,8 +445,8 @@ fi
>
>   echo "Running $QEMU..."
>   # -no-reboot is a mandatory option - see bug #100
> -echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_CMDLINE_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> -$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
> +echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> +$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
>
>   cleanup
>


-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

