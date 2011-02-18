Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11BCD4C800A8
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 11:53:24 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Feb 2011 09:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="888981023"
Received: from unknown (HELO [10.255.12.60]) ([10.255.12.60])
	by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2011 09:53:00 -0800
Message-ID: <4D5EB1FB.9030704@linux.intel.com>
Date: Fri, 18 Feb 2011 09:52:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Minimal images: kernel config
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
X-List-Received-Date: Fri, 18 Feb 2011 17:53:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've been getting more and more questions regarding flash footprint, 
memory footprint, and boot time. All of these fall under the "minimal 
image" heading in my head.

Currently, poky-image-minimal is a simple subset of poky-image-sato. It 
uses busybox, but is still dynamically linked and uses the same 
somewhat-generic kernel build. By somewhat-generic I mean we have named 
features that often cover more drivers than are stricly necessary for a 
given board (usb-net comes to mind). I'd like to see minimal become a 
truly minimal image from both the userspace and kernel side point of view.

Here's my take on this. From userspace this means uclibc and a staticly 
linked busybox. From the kernel this means a static build (no modules) 
with nothing more than is required for the board's built-in peripherals 
to function, with the possible exception of something like usb-storage. 
I'd like to see a < 10M flash size and a <8M memory footprint.

Thoughts on this direction?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

