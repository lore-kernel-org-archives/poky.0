Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F32B1E004D1
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 15:43:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9DC8916600C6; Fri, 30 Sep 2011 16:43:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B41091660069;
	Fri, 30 Sep 2011 16:42:59 -0600 (MDT)
Message-ID: <4E8645F3.5070908@mlbassoc.com>
Date: Fri, 30 Sep 2011 16:42:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20110930175612.667D21208F1C@gemini.denx.de>
	<1317417965.12332.234.camel@ted>
	<4E8634D7.6050207@mlbassoc.com> <1317421103.4454.3.camel@ted>
In-Reply-To: <1317421103.4454.3.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: debian.o-hand.com unreachable ?
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
X-List-Received-Date: Fri, 30 Sep 2011 22:43:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-30 16:18, Richard Purdie wrote:
> On Fri, 2011-09-30 at 15:29 -0600, Gary Thomas wrote:
>> On 2011-09-30 15:25, Richard Purdie wrote:
>>> On Fri, 2011-09-30 at 19:56 +0200, Wolfgang Denk wrote:
>>>> Hello,
>>>>
>>>> there are several parts of the Poky Handbok that refer to the
>>>> OpenedHand repository at http://debian.o-hand.com/
>>>>
>>>> However, this site seems to be down, and has been unreachable for some
>>>> time.
>>>>
>>>> Is there some alternative address for example for the Debian packages
>>>> poky-depends and poky-scripts ?
>>>
>>> The packages that were in there were ancient and not likely of any use
>>> on modern distros having not been maintained for a long time.
>>>
>>> If we had replacements and someone to maintain it we could reinstate
>>> this but I'm not aware of having anything at this point. I thought the
>>> references had been removed from the manual?
>>
>> There are still a number of SRC_URI references to o-hand.com in master
>> Is that site dead [in genera[]?
>
> Pieces of o-hand are being relocated to new homes over time. Existing
> references should still work.

At least the matchbox references are being redirected to matchbox-project.org
Perhaps the SRC_URI should be updated to reflect this, before it's too late?
I could go through them and propose a patch.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

