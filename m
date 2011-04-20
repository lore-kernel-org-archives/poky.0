Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2EDC4C804D4
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:25:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Apr 2011 08:25:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="736079749"
Received: from unknown (HELO [10.255.12.227]) ([10.255.12.227])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 08:25:34 -0700
Message-ID: <4DAEFAF2.3020507@linux.intel.com>
Date: Wed, 20 Apr 2011 08:25:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Gerard van den Bosch <gerard@de-haardt.com>
References: <4DA2CC29.7040301@de-haardt.com>
In-Reply-To: <4DA2CC29.7040301@de-haardt.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: load kernel module at startup
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
X-List-Received-Date: Wed, 20 Apr 2011 15:25:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/11/2011 02:38 AM, Gerard van den Bosch wrote:
> Hello,
> 
> I would like to modprobe my wireless driver kernel module at startup 
> automatically.
> 
> This works when I generate a rootfs and then boot up the first time so 
> the modules file gets generated and then I can manually add the kernel 
> module in that file and then reboot.
> 
> When I look in the manpage of update-modules it states that a config 
> file should be added in /etc/modutils but that directory is not in my 
> rootfs.
> 
> So I was wondering what I have to do to get /etc/modutils directory or 
> an other way to get the kernel module loaded at startup.
> 
> I am using the Poky 4.0 Laverne release.

I believe you can just add the name of the module to:

/etc/modules

Can you try that?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

