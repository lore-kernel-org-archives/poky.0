Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A29BB4C8026D
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 09:10:41 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 50B9A16602D2; Mon, 18 Apr 2011 08:10:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CC4B516602A4;
	Mon, 18 Apr 2011 08:10:40 -0600 (MDT)
Message-ID: <4DAC4660.5050005@mlbassoc.com>
Date: Mon, 18 Apr 2011 08:10:40 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D9F2423.7060900@mlbassoc.com> <4DAC417D.8070601@mlbassoc.com>
	<1303135490.5518.124.camel@rex>
In-Reply-To: <1303135490.5518.124.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Control over when package init scripts are run
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
X-List-Received-Date: Mon, 18 Apr 2011 14:10:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/18/2011 08:04 AM, Richard Purdie wrote:
> On Mon, 2011-04-18 at 07:49 -0600, Gary Thomas wrote:
>> On 04/08/2011 09:05 AM, Gary Thomas wrote:
>>> The script /etc/rcS.d/S98configure is run on the first boot only
>>> to process any postponed package post-install scripts. The default
>>> position of this (98 == last) can be wrong, so let the distribution
>>> set this (just a matter of ?= assignment). This patch also removes
>>> some slugos stuff and extends the flexibility to systems which use
>>> RPM packaging as well.
>>>
>>> Tested on my PowerPC router, running as S00configure - works a treat.
>>>
>>
>> What about this patch?  It's been 10 days - no discussion.
>
> Sorry, many of us were travelling for Collab/ELC and it was the Yocto
> 1.0 launch there. I'm trying to get through my backlog now :)

I knew that, so I was just bringing it back to the surface :-)  [Would have been
at ELC myself, but I have horses to feed...]

>
>> Note: the patch has no effect on normal operation, it just lets a user
>> or distribution control when the package init scripts are run (and then
>> this is only on the initial boot)
>>
>> Note 2: this is a case where I can't override this behaviour in my local
>> layers, so a core change is required.
>
> I'm ok with the patch but could you rename the variable to something
> generic like POSTINSTALL_INITPOSITION please?

Sure - I was just following the opkg version as a guide.  I'll set both
modes (opkg/rpm) to use the same variable name.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

