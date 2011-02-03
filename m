Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 142204C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 10:29:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2011 08:29:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,420,1291622400"; d="scan'208";a="599163554"
Received: from doubt.jf.intel.com (HELO [10.7.199.153]) ([10.7.199.153])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 08:29:07 -0800
Message-ID: <4D4AD7D9.60407@linux.intel.com>
Date: Thu, 03 Feb 2011 08:29:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Akshat Saha <akshat.saha@spectracoretech.com>
References: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
In-Reply-To: <AANLkTikBFCb2kNE2ePDhNZ6+Up3HzuiqLgi9UTiyP0sP@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Feb 2011 16:29:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2011 03:54 AM, Akshat Saha wrote:
> Hi All,
>
> I want to meta/packages/psplash package to my rfs. I
> compiled poky-image-minimal-live, with the following command
>
> $ bitbake poky-image-minimal-live
>
> Can any one guide me, how...?

There are a few ways to go about this I'm sure. What I've done is either:

1) Create a layer with .bbappend for the image
2) Create your own image recipe

For example, the following recipes create a new image,
poky-image-dvhart (as well as a live version), and add dropbear, 
trace-cmd, and kernelshark to the list of packages installed.


$ cat poky-image-dvhart.bb
#
# Copyright (C) 2010 Intel Corporation.
#
require recipes-core/images/poky-image-minimal.bb
IMAGE_INSTALL += "dropbear trace-cmd kernelshark"
LICENSE = "MIT"



$ cat poky-image-dvhart-live.bb
DESCRIPTION = "Bootable Live Image"
require recipes-core/images/poky-image-live.inc
LABELS += "boot install"
ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-dvhart-${MACHINE}.ext3"
LICENSE = "MIT"
do_bootimg[depends] += "poky-image-dvhart:do_rootfs"


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

