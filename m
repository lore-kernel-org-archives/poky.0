Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CF514C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:05:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2011 15:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,448,1291622400"; d="scan'208";a="705959927"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by orsmga001.jf.intel.com with ESMTP; 09 Feb 2011 15:05:13 -0800
Message-ID: <4D531D96.7060707@linux.intel.com>
Date: Wed, 09 Feb 2011 15:04:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
In-Reply-To: <4D531C1C.3020003@emcraft.com>
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
X-List-Received-Date: Wed, 09 Feb 2011 23:05:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 02:58 PM, Ilya Yanok wrote:
> Hi Darren,
>
> 09.02.2011 20:38, Darren Hart wrote:
>>> +LIC_FILES_CHKSUM =
>>> "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
>>> +
>>
>> From what I can tell u-boot.inc is only used by u-boot_git.bb which
>> already defines LIC_FILES_CHKSUM and the appropriate GPLv2+ LICENSE
>> variable.
>
> Well, that's true. Actually I'm adding my own U-Boot recipe but want to
> use u-boot.inc.


I figured, otherwise you would have hit a build failure with 
u-boot_git.bb (since it's CHKSUM was out of date and overwrote the one 
in .inc).


>> It seems to me the LICENSE and LIC_FILES_CHKSUM should be defined in the
>> same recipe as the SRC_URI. In this case, u-boot_git.bb. Is there a
>> motivating reason to add it to .inc? If so, we should also remove it
>
> My idea was that main COPYING file will be present in virtually any
> U-Boot version, so we want LIC_FILES_CHKSUM for this file to be in
> common include file.


True, but it may suffer from line-wrapping or other subtle changes which 
will break the CHKSUMs.


>> from u-boot_git.bb to avoid unnecessary duplication which leads to
>> confusion down the road.
>
> Yes, I think we should remove LIC_FILES_CHKSUM from u-boot_git.bb.
> Should I remove it and repost the patch?


I've sent a couple patches to address this and some other existing 
issues. You were CC'd and Richard has merged with master. This should 
get us to a state that works for all known usage, holler if they cause 
you any undue pain. :-)

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

