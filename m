Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7F7E00307
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 07:23:35 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 44142F811F1; Fri, 13 Jan 2012 08:23:33 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 57F03F811ED;
	Fri, 13 Jan 2012 08:23:30 -0700 (MST)
Message-ID: <4F104C72.8010605@mlbassoc.com>
Date: Fri, 13 Jan 2012 08:23:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net>
	<4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
In-Reply-To: <CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Fri, 13 Jan 2012 15:23:37 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 14:12, Chris Larson wrote:
> On Thu, Jan 12, 2012 at 2:07 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 2012-01-12 10:23, McClintock Matthew-B29882 wrote:
>>>
>>> On Thu, Jan 12, 2012 at 11:06 AM, Gary Thomas<gary@mlbassoc.com>    wrote:
>>>>>
>>>>> DATE is not important, that is why we are explicitly telling the
>>>>> signature to ignore this variable.
>>>>
>>>>
>>>>
>>>> It seems that DATE needs to be ignored other places as well.  Digging
>>>> further, I find:
>>>>
>>>> $ bitbake-diffsigs
>>>>
>>>> p60_poky/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.216968eaca38198b88a7520be02e3fca
>>>>
>>>> p60_test_pass1/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.0ce7898e700de80ff8afcb0850ec4ed0
>>>> basehash changed from 4863b21531f8236184a7c3b16da3ea13 to
>>>> 7ee430d1251148b2509ef2aefb6e5443
>>>
>>>
>>> You might just try adding to BB_HASHBASE_WHITELIST in bitbake.conf
>>> which should ignore DATE in all recipes. I thought this was there, you
>>> can check the history to see...
>>
>>
>> I'm trying this now.  Of course, touching that variable invalidates
>> the sstate cache, so I won't know until tomorrow if it works.
>
> You can't just override DATE in local.conf? I don't see the point in
> holding off, unless your builds will take till tomorrow to finish?

Actually, I didn't think of that.  I also didn't see this message
until Friday (the next day) due to some network issues, so it's moot.

That notwithstanding, I tried it today (new DATE) and it behaved as
I would like.  The only problem was that dbus-1 is still being rebuilt.
I compared the siginfo files between the two builds and they are
identical, so I don't know why.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

