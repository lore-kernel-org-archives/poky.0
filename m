Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 826344C8008C
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:38:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Feb 2011 15:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,448,1291622400"; d="scan'208";a="886031472"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2011 15:38:28 -0800
Message-ID: <4D532562.9080403@linux.intel.com>
Date: Wed, 09 Feb 2011 15:38:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
	<4D531D96.7060707@linux.intel.com> <4D532261.8090606@emcraft.com>
In-Reply-To: <4D532261.8090606@emcraft.com>
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
X-List-Received-Date: Wed, 09 Feb 2011 23:38:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 03:25 PM, Ilya Yanok wrote:
> Hi Darren,
>
> 10.02.2011 2:04, Darren Hart wrote:
>>> My idea was that main COPYING file will be present in virtually any
>>> U-Boot version, so we want LIC_FILES_CHKSUM for this file to be in
>>> common include file.
>>
>>
>> True, but it may suffer from line-wrapping or other subtle changes which
>> will break the CHKSUMs.
>
> Agreed, this can be an issue.
>
>>>> from u-boot_git.bb to avoid unnecessary duplication which leads to
>>>> confusion down the road.
>>>
>>> Yes, I think we should remove LIC_FILES_CHKSUM from u-boot_git.bb.
>>> Should I remove it and repost the patch?
>>
>>
>> I've sent a couple patches to address this and some other existing
>> issues. You were CC'd and Richard has merged with master. This should
>> get us to a state that works for all known usage, holler if they cause
>> you any undue pain. :-)
>
> Uh.. Somehow I can find these patches neither in my mailbox nor in the
> list archive... Could you please give me some link?
>

Hrm, this appears to be a problem on my end - I sent email from a build 
system which I thought was configured properly, the mail did make it to 
me... but I don't see it on the archives either. Thanks for pointing 
that out.

The patches are the top two here:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/uboot


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

