Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 274444C8008C
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 18:06:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Feb 2011 16:06:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,448,1291622400"; d="scan'208";a="386614352"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by azsmga001.ch.intel.com with ESMTP; 09 Feb 2011 16:06:36 -0800
Message-ID: <4D532BF9.6080501@linux.intel.com>
Date: Wed, 09 Feb 2011 16:06:17 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
	<4D531D96.7060707@linux.intel.com> <4D532261.8090606@emcraft.com>
	<4D532562.9080403@linux.intel.com> <4D532693.9080908@emcraft.com>
In-Reply-To: <4D532693.9080908@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 10 Feb 2011 00:06:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 03:43 PM, Ilya Yanok wrote:
> Hi Darren,
>
> 10.02.2011 2:38, Darren Hart wrote:
>> Hrm, this appears to be a problem on my end - I sent email from a build
>> system which I thought was configured properly, the mail did make it to
>> me... but I don't see it on the archives either. Thanks for pointing
>> that out.
>>
>> The patches are the top two here:
>>
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/uboot
>
> Thanks! So the policy is "LIC_FILES_CHKSUM should be near SRC_URI", right?

Well, Gary and I agree on that, but I haven't heard an official 
statement regarding this. It certainly seems to me to be the only 
maintainable way to do it.

Richard, any thoughts?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

