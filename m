Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B4E34C8010D
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 13:04:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Feb 2011 11:04:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,427,1291622400"; d="scan'208";a="384310709"
Received: from unknown (HELO [10.255.14.171]) ([10.255.14.171])
	by azsmga001.ch.intel.com with ESMTP; 04 Feb 2011 11:04:49 -0800
Message-ID: <4D4C4DD2.1060204@linux.intel.com>
Date: Fri, 04 Feb 2011 11:04:50 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Akshat Saha <akshat.saha@spectracoretech.com>
References: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
	<4D4AD7D9.60407@linux.intel.com>
	<AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
In-Reply-To: <AANLkTikDN5ZBRR0Hv93nZK-CMBO0xdrepbtppvGiVmwT@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Adding Packages
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
X-List-Received-Date: Fri, 04 Feb 2011 19:04:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 02:25 AM, Akshat Saha wrote:
> Hi Darren,
>
> Thanks a lot for your help.
> Till now, I was working with poky-green(3.3.1) but I am shifting to
> laverne(4.0) now.
> Will let you know if it works with it also.
>
> Can you also help me how to add patches.
> I have put he .patch file in files folder of the psplash package
>
> and in SRC_URI  Added    file://psplash-poky-img.patch:patch=1 \

That should work provided the directory is named either files of 
${PN}-{PV}, the latter being preferred.

--
Darren

>
>
> On Thu, Feb 3, 2011 at 9:59 PM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
>
>     On 02/03/2011 03:54 AM, Akshat Saha wrote:
>
>         Hi All,
>
>         I want to meta/packages/psplash package to my rfs. I
>         compiled poky-image-minimal-live, with the following command
>
>         $ bitbake poky-image-minimal-live
>
>         Can any one guide me, how...?
>
>
>     There are a few ways to go about this I'm sure. What I've done is
>     either:
>
>     1) Create a layer with .bbappend for the image
>     2) Create your own image recipe
>
>     For example, the following recipes create a new image,
>     poky-image-dvhart (as well as a live version), and add dropbear,
>     trace-cmd, and kernelshark to the list of packages installed.
>
>
>     $ cat poky-image-dvhart.bb <http://poky-image-dvhart.bb>
>     #
>     # Copyright (C) 2010 Intel Corporation.
>     #
>     require recipes-core/images/poky-image-minimal.bb
>     <http://poky-image-minimal.bb>
>     IMAGE_INSTALL += "dropbear trace-cmd kernelshark"
>     LICENSE = "MIT"
>
>
>
>     $ cat poky-image-dvhart-live.bb <http://poky-image-dvhart-live.bb>
>     DESCRIPTION = "Bootable Live Image"
>     require recipes-core/images/poky-image-live.inc
>     LABELS += "boot install"
>     ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.ext3"
>     LICENSE = "MIT"
>     do_bootimg[depends] += "poky-image-dvhart:do_rootfs"
>
>
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
>
>
>
>
> --
> Thanks and Regards,
>
> Akshat Saha
>


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

