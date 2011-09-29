Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98337E00502
	for <poky@yoctoproject.org>; Thu, 29 Sep 2011 09:40:14 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 774991660A1D; Thu, 29 Sep 2011 10:40:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C194516601C4;
	Thu, 29 Sep 2011 10:40:12 -0600 (MDT)
Message-ID: <4E849F6C.409@mlbassoc.com>
Date: Thu, 29 Sep 2011 10:40:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E8498FA.3000206@mlbassoc.com> <1317313171.12332.104.camel@ted>
In-Reply-To: <1317313171.12332.104.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build for qemuppc
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
X-List-Received-Date: Thu, 29 Sep 2011 16:40:14 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-29 10:19, Richard Purdie wrote:
> On Thu, 2011-09-29 at 10:12 -0600, Gary Thomas wrote:
>> This used to work:
>>
>> $ bitbake core-image-sato
>> Loading cache: 100% |####################################################################################| ETA:  00:00:00
>> Loaded 1034 entries from dependency cache.
>>
>> OE Build Configuration:
>> BB_VERSION        = "1.13.3"
>> TARGET_ARCH       = "powerpc"
>> TARGET_OS         = "linux"
>> MACHINE           = "qemuppc"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.0+snapshot-20110929"
>> TUNE_FEATURES     = "m32 fpu-hard ppc603e"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto        = "master:e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4"
>>
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing PROVIDES 'syslinux'
>> ERROR: syslinux was skipped: incompatible with host powerpc-poky-linux
>> ERROR: Required build target 'core-image-sato' has no buildable providers.
>> Missing or unbuildable dependency chain was: ['core-image-sato', 'syslinux']
>>
>>
>> What am I doing wrong?  How do I build an image to test with qemuppc,
>> in particular I want to test 'web-webkit'?
>
> I just checked here and this starts building fine. Something is pulling
> "syslinux" into your build and that makes no sense as its x86 specific.
> You need to figure out where that is coming from and I suspect your
> local config or customisations.

That was it, thanks.  I had touched meta/conf/machine/include/qemu.inc
when I was trying to figure out the boot from CDROM stuff (bug #686)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

