Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1D044C80BCF
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 14:59:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 12:59:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,344,1288594800"; d="scan'208";a="583720421"
Received: from doubt.jf.intel.com (HELO [10.7.199.80]) ([10.7.199.80])
	by orsmga002.jf.intel.com with ESMTP; 14 Dec 2010 12:59:39 -0800
Message-ID: <4D07DAB8.3030504@linux.intel.com>
Date: Tue, 14 Dec 2010 12:59:36 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: kernel type selection
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
X-List-Received-Date: Tue, 14 Dec 2010 20:59:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In developing new kernel recipes, I've run across some difficulty in 
determining the ideal way to select one kernel recipe over another. The 
machine configs specify the preferred provider. For the Linaro layer, I 
setup new machine configs which specified the linux-linaro as the 
preferred kernel.

As I'm working with preempt_rt, I'm running into this again. I could 
create more machine configs, but this approach won't scale well (having 
to create a copy of all the supported machine configs just to change the 
preferred kernel). I could set LINUX_KERNEL_TYPE="preempt_rt" in my 
local.conf, but that would reuse all the settings in the existing 
recipes (like COMPATIBLE_MACHINES), all of which don't necessary apply 
to the new kernel type.

I've considered looking for a way to specify the kernel type in the new 
image definitions (ie poky-image-rt) and creating new recipes for each 
kernel type. I like the idea of one recipe per kernel type as this makes 
things more explicit and avoids contamination between the various kernel 
types. This approach however seems to be at odds with the Poky way of 
doing this which, as I understand it, would be to specify the provider 
in the machine config and any modifiers (like type) in the local.conf.

Can we get a discussion started here to determine some best practices?

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

