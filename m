Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDEC4E014D3
	for <poky@yoctoproject.org>; Fri, 29 Mar 2013 03:56:26 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2TB6IH7025022; Fri, 29 Mar 2013 11:06:18 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LHtgmAbhLKym; Fri, 29 Mar 2013 11:06:18 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2TB6CRc025011
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Fri, 29 Mar 2013 11:06:15 GMT
Message-ID: <1364554560.28471.188.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michel.thebeau@windriver.com
Date: Fri, 29 Mar 2013 10:56:00 +0000
In-Reply-To: <1364499172-28976-3-git-send-email-michel.thebeau@windriver.com>
References: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
	<1364499172-28976-3-git-send-email-michel.thebeau@windriver.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 2/2] kernel.bbclass: do_sizecheck: update path to build image and do not delete
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
X-List-Received-Date: Fri, 29 Mar 2013 10:56:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-03-28 at 15:32 -0400, michel.thebeau@windriver.com wrote:
> From: Michel Thebeau <michel.thebeau@windriver.com>
> 
> do_sizecheck has been around for a while but looks to have been unused.
> There are a few issues.
> 
> It breaks because KERNEL_OUTPUT is a path relative to ${B}, and
> resolves to a soft link to ${B}/${KERNEL_IMAGETYPE}.  When
> do_sizecheck runs it does not find the file (because the working
> directory is elsewhere) and does not fail.
> 
> Also, when do_sizecheck deletes the oversized kernel image it leaves
> the previously run do_compile task with inaccurate status.
> 
> So, do the following:
>  - keep the oversized image file so the status of do_compile is valid
>  - specify the full path with ${B} to break the dependency on working
>    directory
>  - test for the image file in two typical locations and print a
>    "not supported" warning when it is not found
>  - finally, print a note that the size check was run successfully
> 
> [YOCTO #3514]
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
> ---
>  meta/classes/kernel.bbclass |   25 +++++++++++++++++++++----
>  1 file changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 6f988e7..d25d98a 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -300,10 +300,27 @@ python split_kernel_packages () {
>  # with a fixed length or there is a limit in transferring the kernel to memory
>  do_sizecheck() {
>  	if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
> -		size=`ls -l ${KERNEL_OUTPUT} | awk '{ print $5}'`
> -		if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
> -			rm ${KERNEL_OUTPUT}
> -			die "This kernel (size=$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size of the kernel by making more of it modular."
> +		if [ -f ${B}/${KERNEL_OUTPUT} ]; then
> +			# vmlinux.bin is usually found here
> +			koutf="${B}/${KERNEL_OUTPUT}"
> +		elif [ -f ${B}/${KERNEL_IMAGETYPE} ]; then
> +			# vmlinux is usually found here
> +			koutf="${B}/${KERNEL_IMAGETYPE}"
> +		else
> +			# if we're lucky we'll catch some other image
> +			# types in the previous conditions; otherwise:
> +			koutf=""
> +		fi
> +
> +		if [ -z "$koutf" ]; then
> +			bbwarn "KERNEL_IMAGE_MAXSIZE enabled but" \
> +			       "${KERNEL_IMAGETYPE} not supported (or not found)"
> +		else
> +			size=`ls -l $koutf | awk '{ print $5}'`
> +			if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
> +				die "This kernel (size=$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size of the kernel by making more of it modular."
> +			fi
> +			bbnote "kernel image size check... done"
>  		fi
>  	fi
>  }

Sorry but this is a bit crazy. We should be pretty clear about which
file is the output kernel and this is the file that we should test
(resolving links if need be). If we don't know which file is the correct
kernel, we have bigger issues.

kernel_do_deploy says its KERNEL_OUTPUT:

"""
install -m 0644 ${KERNEL_OUTPUT} ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
"""

I'd note we have:

do_deploy[dirs] = "${DEPLOYDIR} ${B}"

so perhaps we need a:

do_sizecheck[dirs] = "${B}"

to ensure we run in the correct place?

Cheers,

Richard







