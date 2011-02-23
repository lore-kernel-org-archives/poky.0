Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FE1E4C808E5
	for <poky@lists.pokylinux.org>; Wed, 23 Feb 2011 09:20:54 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0B00A166030D; Wed, 23 Feb 2011 08:20:39 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id ACF1C16602C5;
	Wed, 23 Feb 2011 08:20:17 -0700 (MST)
Message-ID: <4D6525B1.6080101@mlbassoc.com>
Date: Wed, 23 Feb 2011 08:20:17 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D628A56.6020002@mlbassoc.com>	 <1298310097.11289.3185.camel@rex>
	<4D62AF6E.4020304@mlbassoc.com> <1298330194.11289.3243.camel@rex>
In-Reply-To: <1298330194.11289.3243.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: kernel versions
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
X-List-Received-Date: Wed, 23 Feb 2011 15:20:54 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/21/2011 04:16 PM, Richard Purdie wrote:
> On Mon, 2011-02-21 at 11:31 -0700, Gary Thomas wrote:
>> On 02/21/2011 10:41 AM, Richard Purdie wrote:
>>> On Mon, 2011-02-21 at 08:52 -0700, Gary Thomas wrote:
>>>> I have my own kernel recipes (historical reasons...) which I
>>>> now have 2 versions of.  Some platforms have not yet been
>>>> ported to the latest version and I need to keep using the
>>>> older one for those platforms until the porting is complete.
>>>>
>>>> Sadly, I can't get this to work.
>>>>
>>>> Here's what I have
>>>>      $ tree meta-amltd/packages/linux/
>>>>        meta-amltd/packages/linux/
>>>>        ├── linux-am_2.6.32.bb
>>>>        ├── linux-am_2.6.37.bb
>>>>
>>>>      $ tree meta-cobra3530p60/packages/linux/
>>>>        meta-cobra3530p60/packages/linux/
>>>>        ├── linux-am-2.6.32
>>>>        │   └── cobra3530p60
>>>>        │       ├── cobra3530p60.patch
>>>>        │       └── defconfig
>>>>        ├── linux-am_2.6.32.bbappend
>>>>
>>>> I tried these settings in my machine/cobra3530p60
>>>>      PREFERRED_PROVIDER_virtual/kernel = "linux-am"
>>>>      PREFERRED_VERSION_virtual/kernel = "2.6.32"
>>>>
>>>> However, it still wants to build version 2.6.37
>>>>
>>>> What am I missing?  How can I force it to use the 2.6.32 version
>>>> for this machine?
>>>
>>> PREFERRED_VERSION_linux-am = "2.6.32"
>>
>> That does seem to work, but only if I put it in the<MACHINE>.conf
>> file, not local.conf.
>>
>> Why specify it one way (PREFERRED_PROVIDER_virtual/kernel) for the provider
>> (recipe basis) and then a different way (PREFERRED_VERSION_linux-am) for
>> the actual version?
>
> Each recipe has a list of things it provides. This is usually PN but in
> the kernel case each recipe provides "virtual/kernel" so we can group
> them and make a selection with PREFERRED_PROVIDER.
>
> Bitbake first determines the provider. Once it has this it looks up the
> version. It looks this up using PN and not using what could be an
> arbitrary list of items in PROVIDES.
>
> Summary, you always use PN with PREFERRED_VERSION as that is what makes
> sense in the general case.

Understood.  Thanks for the explanation.

> It should however work to put this in local.conf unless you're setting
> it with an = and not a ?= somewhere else?

I'm not sure what happened there - this was the real crux of my question
as earlier I had tried an override with PREFERRED_VERSION_linux-am in
local.conf and it ignored me.  I can't duplicate that problem now.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

