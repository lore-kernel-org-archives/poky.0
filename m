Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA968E004E9
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 08:04:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4D9A316601A1; Tue, 18 Oct 2011 09:04:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8EC8F1660197;
	Tue, 18 Oct 2011 09:04:26 -0600 (MDT)
Message-ID: <4E9D957A.8090301@mlbassoc.com>
Date: Tue, 18 Oct 2011 09:04:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4E9D90A9.6010303@mlbassoc.com>
	<20111018144905.GH20678@jama.jama.net>
	<4E9D93BC.8060707@mlbassoc.com>
	<20111018150057.GI20678@jama.jama.net>
In-Reply-To: <20111018150057.GI20678@jama.jama.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: gstreamer update
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
X-List-Received-Date: Tue, 18 Oct 2011 15:04:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-18 09:00, Martin Jansa wrote:
> On Tue, Oct 18, 2011 at 08:57:00AM -0600, Gary Thomas wrote:
>> On 2011-10-18 08:49, Martin Jansa wrote:
>>> On Tue, Oct 18, 2011 at 08:43:53AM -0600, Gary Thomas wrote:
>>>> Just wondering if anyone is looking at upgrading the gstreamer
>>>> support to a newer revision?  In particular, I'd like to use
>>>> gst-plugins-good/0.10.30 which requires newer gst-plugins-base.
>>>
>>> something like
>>> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-October/011287.html
>>> ?
>>
>> Thanks, except that I'm really only interested in what's going to happen
>> on Poky/Yocto, which is why I asked the question on the Poky list.
>
> Poky/Yocto aren't using oe-core?

Not directly as I understand.  Changes in oe-core are merged into the
Poky tree, it's not just a link.  I'd be happy to see that change, but
until it does, I'm interested in the official Poky tree only.

>
>>>> Maybe it makes sense to move all the way to the cutting edge?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

