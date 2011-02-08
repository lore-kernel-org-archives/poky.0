Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 743754C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 15:41:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Feb 2011 13:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="655767939"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2011 13:41:10 -0800
Message-ID: <4D51B86E.7060709@linux.intel.com>
Date: Tue, 08 Feb 2011 13:41:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: History and intentions of linux.inc ?
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
X-List-Received-Date: Tue, 08 Feb 2011 21:41:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I've stumbled over a couple of interesting bits in the existing
recipes-kernel/linux/linux.inc, for example (but not limited to):

> do_install_prepend() {
>         if test -e arch/${ARCH}/boot/Image ; then
>              ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
>         fi

On a recent kernel, the above will overwrite a valid uImage with Image,
resulting in a non-bootable set of files in deploy/images.

> 
>         if test -e arch/${ARCH}/boot/images/uImage ; then
>              ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
>         fi

The arch/arm/boot/images directory does not exist on a current kernel
(2.6.35-linaro anyway).


Does anyone know the historical significance and/or intent of this code?
Are there architectures for which this does something sane? After
reading through linux.inc, I'm inclined to avoid using it for the
meta-linaro kernel, and then going after it with chainsaw.

Anyone have anything to add before I start cutting?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

