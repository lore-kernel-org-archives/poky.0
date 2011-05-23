Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 425E64C803BA
	for <poky@yoctoproject.org>; Mon, 23 May 2011 18:20:05 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 May 2011 16:20:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,258,1304319600"; 
   d="scan'208";a="155112"
Received: from unknown (HELO [10.255.12.150]) ([10.255.12.150])
	by azsmga001.ch.intel.com with ESMTP; 23 May 2011 16:20:04 -0700
Message-ID: <4DDAEBA4.5090601@linux.intel.com>
Date: Mon, 23 May 2011 16:20:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Akshat Saha <akshat.embedded@gmail.com>
References: <BANLkTik3e_YZfJrwb7xkM264HhCbbHg5cg@mail.gmail.com>
In-Reply-To: <BANLkTik3e_YZfJrwb7xkM264HhCbbHg5cg@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: How to Enable OMAP3 SGX MODULES on BEAGLEBOARD
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
X-List-Received-Date: Mon, 23 May 2011 23:20:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/23/2011 05:15 AM, Akshat Saha wrote:
> Hi,
> 
> Can anyone guide me, how to enable powervr drivers on beagleboard. 

I am currently working on a Beagleboard refresh for the oe-core and
meta-yocto layers. I'm starting with u-boot, then the kernel, and will
see what follows from there. Until that is complete, the best bet for
full Beagleboard support is the angstrom layer.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

