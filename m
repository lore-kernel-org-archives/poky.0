Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DFE34C800A3
	for <poky@yoctoproject.org>; Mon,  2 May 2011 07:57:46 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 792AE16600A3; Mon,  2 May 2011 06:57:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4A2611660086;
	Mon,  2 May 2011 06:57:17 -0600 (MDT)
Message-ID: <4DBEAA2C.1020601@mlbassoc.com>
Date: Mon, 02 May 2011 06:57:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4DB99F31.4000308@mlbassoc.com>
	<BANLkTikaf3MHYrnbvHDno3dSv_LhsLyFVg@mail.gmail.com>
	<BANLkTi=G-4UfXNdnJSy7qF3gb0-xLr6+4Q@mail.gmail.com>
In-Reply-To: <BANLkTi=G-4UfXNdnJSy7qF3gb0-xLr6+4Q@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: GCC 4.6.0 on ARM?
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
X-List-Received-Date: Mon, 02 May 2011 12:57:46 -0000
Content-Type: text/plain; charset=windows-1250; format=flowed
Content-Transfer-Encoding: 7bit

On 04/30/2011 04:10 PM, Khem Raj wrote:
> On Thu, Apr 28, 2011 at 11:23 AM, Khem Raj<raj.khem@gmail.com>  wrote:
>> On Thu, Apr 28, 2011 at 10:09 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>> I got my OMAP target to build with GCC-4.6.0 using the latest
>>> Poky tree after a fresh rebuild.  Sadly, the Linux kernel (2.6.37.3)
>>> does not run correctly when built with this compiler.  It
>>> fails when enumerating the USB bus :-(
>>>
>>> Are there known issues with the Linux kernel on ARM and GCC-4.6?
>>>
>>
>> There has been fixes on top of 4.6.0 the one we have right now is vanilla
>> 4.6.0 release. I plan to add second set of patches but you have to dig a bit
>> more to identify the problem
>>
>
> I have some updates for gcc 4.6.0
> they are staged in
>
> http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=kraj/gcc-4.6
>
> (top 3 patches)
>
> Please test them out and if you are lucky
> your problem might be fixed too.
>
> All, please try these patches and provide any feedback

I was able to build my kernel (ARM OMAP/3530 based) using this, but
the USB still doesn't work, so no improvement, sorry.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

