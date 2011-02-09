Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 073204C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:25:21 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1PnJPU-000834-9P; Thu, 10 Feb 2011 02:25:20 +0300
Message-ID: <4D532261.8090606@emcraft.com>
Date: Thu, 10 Feb 2011 02:25:21 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; ru;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D531C1C.3020003@emcraft.com>
	<4D531D96.7060707@linux.intel.com>
In-Reply-To: <4D531D96.7060707@linux.intel.com>
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
X-List-Received-Date: Wed, 09 Feb 2011 23:25:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Darren,

10.02.2011 2:04, Darren Hart wrote:
>> My idea was that main COPYING file will be present in virtually any
>> U-Boot version, so we want LIC_FILES_CHKSUM for this file to be in
>> common include file.
>
>
> True, but it may suffer from line-wrapping or other subtle changes which
> will break the CHKSUMs.

Agreed, this can be an issue.

>>> from u-boot_git.bb to avoid unnecessary duplication which leads to
>>> confusion down the road.
>>
>> Yes, I think we should remove LIC_FILES_CHKSUM from u-boot_git.bb.
>> Should I remove it and repost the patch?
>
>
> I've sent a couple patches to address this and some other existing
> issues. You were CC'd and Richard has merged with master. This should
> get us to a state that works for all known usage, holler if they cause
> you any undue pain. :-)

Uh.. Somehow I can find these patches neither in my mailbox nor in the 
list archive... Could you please give me some link?

Regards, Ilya.

