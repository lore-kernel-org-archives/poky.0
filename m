Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11BADE01222
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 20:45:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Sep 2011 20:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,453,1312182000"; d="scan'208";a="56419876"
Received: from unknown (HELO envy.home) ([10.255.14.211])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2011 20:45:35 -0700
Message-ID: <4E82985F.9080009@linux.intel.com>
Date: Tue, 27 Sep 2011 20:45:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4E808201.8080103@mlbassoc.com>
In-Reply-To: <4E808201.8080103@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: How to build a kernel using menuconfig
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
X-List-Received-Date: Wed, 28 Sep 2011 03:45:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/26/2011 06:45 AM, Gary Thomas wrote:
> I'm working with a recent Poky checkout:
>    meta-yocto        = "master:7a0cbe6b0e5185aebabedc515b427994bc2a15dc"
> 
> I used to be able to do this:
>    % bitbake <some-image>
> This step builds everything, including the kernel
>    % bitbake virtual/kernel -c menuconfig
> Adjust some settings
>    % bitbake virtual/kernel -c compile -f
>    % bitbake virtual/kernel
> Rebuild my image with the new kernel included
>    % bitbake <some-image>
> 
> In the past, this would let me adjust some kernel settings, e.g. add a new
> module, then rebuild it and later add this to an image.  Sadly, when I run
> through these steps with the current master, the new kernel gets compiled
> (because I used -f), but not packaged.
> 
> The only thing I've done differently, save updating master, is my build
> today includes
>    INHERIT += "rm_work"
> 
> Am I missing something?
> 
> How can I build the kernel and make these in-tree adjustments like I used to?
> I do this to figure out what kernel settings to set/save for my final packaging.


Yeah, this is standard kernel devel workflow. I typically use the kernel
recipe name directly, but otherwise my process is the same. What happens
now when you run "bitbake virtual/kernel" after the compile -f ?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

