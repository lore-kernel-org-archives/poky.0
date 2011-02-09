Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0A944C8009E
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 16:58:40 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1PnIzb-0007j6-3k; Thu, 10 Feb 2011 01:58:35 +0300
Message-ID: <4D531C1C.3020003@emcraft.com>
Date: Thu, 10 Feb 2011 01:58:36 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; ru;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com>
In-Reply-To: <4D52D11C.50904@linux.intel.com>
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
X-List-Received-Date: Wed, 09 Feb 2011 22:58:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

09.02.2011 20:38, Darren Hart wrote:
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb"
>> +
>
>  From what I can tell u-boot.inc is only used by u-boot_git.bb which
> already defines LIC_FILES_CHKSUM and the appropriate GPLv2+ LICENSE
> variable.

Well, that's true. Actually I'm adding my own U-Boot recipe but want to 
use u-boot.inc.

> It seems to me the LICENSE and LIC_FILES_CHKSUM should be defined in the
> same recipe as the SRC_URI. In this case, u-boot_git.bb. Is there a
> motivating reason to add it to .inc? If so, we should also remove it

My idea was that main COPYING file will be present in virtually any 
U-Boot version, so we want LIC_FILES_CHKSUM for this file to be in 
common include file.

> from u-boot_git.bb to avoid unnecessary duplication which leads to
> confusion down the road.

Yes, I think we should remove LIC_FILES_CHKSUM from u-boot_git.bb. 
Should I remove it and repost the patch?

Regards, Ilya.


