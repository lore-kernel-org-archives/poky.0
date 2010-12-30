Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 923874C8110E
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 12:02:41 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 08F0C1660283; Thu, 30 Dec 2010 11:02:41 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 458BA166026F;
	Thu, 30 Dec 2010 11:02:40 -0700 (MST)
Message-ID: <4D1CC940.5080202@mlbassoc.com>
Date: Thu, 30 Dec 2010 11:02:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>	
	<1293097470.1588.567.camel@rex> <4D13401C.8080901@mlbassoc.com>
	<1293704461.17519.9998.camel@rex>
In-Reply-To: <1293704461.17519.9998.camel@rex>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about ${KERNEL_CC} and ${CC}
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
X-List-Received-Date: Thu, 30 Dec 2010 18:02:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 03:21 AM, Richard Purdie wrote:
> On Thu, 2010-12-23 at 05:27 -0700, Gary Thomas wrote:
>> On 12/23/2010 02:44 AM, Richard Purdie wrote:
>>> Perf should be compiled with the userspace toolchain, not the kernel
>>> one. I'd say this fix is therefore correct.
>>>
>>> Adding TOOLCHAIN_OPTIONS to KERNEL_CC would also probably be a good idea
>>> too.
>>
>> Perfect idea!  I added this and I'm now able to rebuild my
>> kernel package using a sstate-cache based toolchain.  This
>> should close bug #605
>>
>> Patch attached for review.
>
> There is no need to set TOOLCHAIN_OPTIONS and we need to alter both
> KERNEL_CC and KERNEL_LD which both have this problem or
> TOOLCHAIN_OPTIONS being missing. I've pushed a patch into master which
> does this.
>
> I've also pushed a patch to ensure the userspace compiler if used to
> build perf.
>
> Let me know if there are any more problems in this area.

Thanks, this all seems to be working well now.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

