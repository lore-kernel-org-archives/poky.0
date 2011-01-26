Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 923644C80BCF
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 08:17:52 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 34BE31660285; Wed, 26 Jan 2011 07:17:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D67A9166027C;
	Wed, 26 Jan 2011 07:17:50 -0700 (MST)
Message-ID: <4D402D0E.9060400@mlbassoc.com>
Date: Wed, 26 Jan 2011 07:17:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <4D40251F.5070906@mlbassoc.com>	<4D4026AC.1030706@mlbassoc.com>
	<AANLkTimteGhJd8rRdTYAnZAWP_a54_WuRpQ_P84pns8q@mail.gmail.com>
In-Reply-To: <AANLkTimteGhJd8rRdTYAnZAWP_a54_WuRpQ_P84pns8q@mail.gmail.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 14:17:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 06:58 AM, Bruce Ashfield wrote:
> On Wed, Jan 26, 2011 at 8:50 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 01/26/2011 06:43 AM, Gary Thomas wrote:
>>>
>>> I finally got Poky to build for a standard PC (actually atom-pc
>>> so I could build a live/bootable image). Sadly, that's all I
>>> have is an image as I can't get it to run anywhere :-(
>>>
>>> * On my laptop (the point of this exercise) which is an older
>>> Pentium-III machine, the kernel crashes almost immediately.
>>
>> Exact same failure on my [newer] AMD/2800 tower.
>
> I'll start some builds up here and see how things perform around
> here.  I've largely been building and booting the emulator for
> x86 and the non-x86 hardware targets. But this sounds like something
> worth taking for a spin.

Thanks.  FAOD, here's my build setup:
   OE Build Configuration:
   BB_VERSION        = "1.11.0"
   METADATA_BRANCH   = "local_master"
   METADATA_REVISION = "db9b8bc9a34f3f486d6ce948a073a1f042d9dbb7"
   TARGET_ARCH       = "i586"
   TARGET_OS         = "linux"
   MACHINE           = "atom-pc"
   DISTRO            = "poky"
   DISTRO_VERSION    = "0.9+snapshot-20110126"
   TARGET_FPU        = ""

Host CPU = Fedora-13/x86
Building poky-image-sato-live.

>>
>>>
>>> * On my brand new laptop (Core-i3), I couldn't get it to even
>>> try...
>>>
>>> * On a VirtualBox machine, it boots but then sits forever
>>> "waiting for removable media"...
>>>
>>> Oh well, back to my OMAP that at least boots :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

