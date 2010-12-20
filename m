Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9A024C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:47:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2010 11:47:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689024465"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 11:47:43 -0800
Message-ID: <4D0FB2DE.8010302@linux.intel.com>
Date: Mon, 20 Dec 2010 11:47:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org, tom.zanussi@intel.com, bruce.ashfield@windriver.com
References: <cover.1292630935.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292630935.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 0/4] Initial Real-Time Linux recipes (DO NOT PULL)
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
X-List-Received-Date: Mon, 20 Dec 2010 19:47:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/17/2010 04:08 PM, Darren Hart wrote:
> RESEND: corrected Bruce's email address, apologies for the duplicate
>
> This patch provides an initial set of PREEMPT_RT kernel and related
> test and image recipes. The poky-image-minimal-rt image has been boot
> tested on qemux86-64, and that is currently the only "COMPATIBLE_MACHINE".
> More will be added as they are tested and confirmed working.
>
> To make use of the rt-tests pacakge included in the new images, you need
> to select linux-yocto-rt as the preferred kernel provider in your local.conf
> or in a supported machine config. qemu.inc has been updated to allow for
> the setting of the kernel provider in your local.conf.
>
> It was my intent to have the image specify the require kernel, but things
> don't really work that way. As such, it may be that having the images
> just to add rt-tests is overkill and unecessarily pollutes the images
> directory. I'm open to ideas on how to best go about building rt images.
>

I'll be redoing these as meta-rt layer and rebase them on fixes to the 
stable kernel recipe from Bruce. Please DO NOT PULL.

--
Darren Hart
Yocto Linux Kernel

