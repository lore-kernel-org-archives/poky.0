Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EBDF4C811A5
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 15:27:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 13:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="881295334"
Received: from unknown (HELO [10.255.14.182]) ([10.255.14.182])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 13:27:06 -0800
Message-ID: <4D40919E.6010802@linux.intel.com>
Date: Wed, 26 Jan 2011 13:26:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D40251F.5070906@mlbassoc.com>
In-Reply-To: <4D40251F.5070906@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 21:27:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 05:43 AM, Gary Thomas wrote:
> I finally got Poky to build for a standard PC (actually atom-pc
> so I could build a live/bootable image). Sadly, that's all I
> have is an image as I can't get it to run anywhere :-(
>
> * On my laptop (the point of this exercise) which is an older
> Pentium-III machine, the kernel crashes almost immediately.

Can you capture the output and provide some details on the hardware?

>
> * On my brand new laptop (Core-i3), I couldn't get it to even
> try...

What happened? Some bios are very particular about usb layout, see
README.hardware under atom-pc. Some (including my netbook) require
that it be in USB-ZIP format, so you can't just dd the image to
the stick in some cases (unfortunately).

>
> * On a VirtualBox machine, it boots but then sits forever
> "waiting for removable media"...

Can you share the messages leading up to this? Is it trying to mount ram0?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

