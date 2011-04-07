Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B7BA4C80579
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 15:02:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Apr 2011 13:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,318,1299484800"; d="scan'208";a="676507278"
Received: from unknown (HELO [10.255.13.32]) ([10.255.13.32])
	by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2011 13:02:10 -0700
Message-ID: <4D9E1645.4050500@linux.intel.com>
Date: Thu, 07 Apr 2011 12:53:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Salvatore Fassi <salvatore.fassi@gmail.com>
References: <BANLkTikROqhGtMmbFA4ZJs+dwDaVpzaKxw@mail.gmail.com>
In-Reply-To: <BANLkTikROqhGtMmbFA4ZJs+dwDaVpzaKxw@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Poky issues with tune-cortexa8 and a custom machine
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
X-List-Received-Date: Thu, 07 Apr 2011 20:02:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/06/2011 08:53 AM, Salvatore Fassi wrote:
> Hi all,
> 
> I've created a custom machine to match my hardware.
> This hw is arm based with cortexa8 architecture, so my machine file
> (myarm.conf) uses:
> 
> require conf/machine/include/tune-cortexa8.inc
> 
> For the image I use:
> 
> bitbake poky-image-minimal
> 
> This compiles everything fine but when it starts composing the rootfs by
> installing ipk's I get errors about some missing packages.

Does this also happen if you use rpms instead of ipks? (Set in
local.conf). Can you post the error you receive?

> I've found that the error is due to the fact that poky is compiling two
> work trees:
> 
> build/tmp/work/myarm-poky-linux-gnueabi
> 
> and
> 
> build/tmp/work/armv7a-poky-linux-gnueabi

This is normal, there are machine packages and architecture packages,
and shouldn't cause a problem with installation.

--
Darren

> 
> And the missing ipk's are in the armv7a tree!
> 
> I've also noticed that the armv7a "target" definition is inside
> tune-cortexa8.inc...
> So...what am I doing wrong?
> 
> Thank you.
> 
> best regards
> 
> Salvo
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

