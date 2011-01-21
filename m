Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A17F54C8112E
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 17:29:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Jan 2011 15:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,360,1291622400"; d="scan'208";a="378219209"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2011 15:29:21 -0800
Message-ID: <4D3A16CC.9000701@linux.intel.com>
Date: Fri, 21 Jan 2011 15:29:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4D39E241.3010107@linux.intel.com>
	<FDF02432-7933-4D4B-BC65-DCB393BBD979@dominion.thruhere.net>
In-Reply-To: <FDF02432-7933-4D4B-BC65-DCB393BBD979@dominion.thruhere.net>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] linux-2.6-windriver: omap3: beaglexm: fix EHCI power up GPIO dir
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
X-List-Received-Date: Fri, 21 Jan 2011 23:29:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 02:31 PM, Koen Kooi wrote:
>
> Op 21 jan 2011, om 20:45 heeft Darren Hart het volgende geschreven:
>
>> The following patch from Koen's angstrom-linux repository fixes initialization
>> of the Beagleboard xM's on-board USB hub and makes it possible to use the
>> on-board network port.
>
> FWIW, that patch will be in 2.6.38rc1 :)

Thanks, it looked pretty straight forward, so I figured it was targeted 
for upstream. Going forward, are there any branches I should avoid 
pulling from - or any particular branch I should restrict my pulls to?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

