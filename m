Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C57BF4C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 15:26:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 13:26:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,209,1291622400"; d="scan'208";a="689466419"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 13:26:53 -0800
Message-ID: <4D111BA0.4070909@linux.intel.com>
Date: Tue, 21 Dec 2010 13:26:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
In-Reply-To: <cover.1292920700.git.raj.khem@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 21:26:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 01:27 AM, Khem Raj wrote:
> Hello,
>
> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc 4.5
> I have made sure that it builds poky-image-minimal for arm, ppc, x86, mips
> qemu and boots on all of them. It did not boot on ppc however poky-qemu
> did not boot any images for me even the ones built without these enhancements
> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
> which worked well. I need help in testing it out. So please test these patches rigourously
> with standard testing setup you use before you pull them
>
> If there are issues found let me know

Hi Khem,

So with this in place, we should be able to remove all the toolchain 
work from the meta-linaro layer - is that correct?

-- 
Darren Hart
Yocto Linux Kernel

