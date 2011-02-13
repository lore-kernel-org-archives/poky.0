Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A782B4C800BE
	for <poky@lists.pokylinux.org>; Sun, 13 Feb 2011 09:06:33 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5EFD71660283; Sun, 13 Feb 2011 08:06:33 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7A32D1660246;
	Sun, 13 Feb 2011 08:06:32 -0700 (MST)
Message-ID: <4D57F378.90406@mlbassoc.com>
Date: Sun, 13 Feb 2011 08:06:32 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4D569EC5.6040609@mlbassoc.com>	<44134B64-2531-4D6A-9C7C-C2FE68D18434@dominion.thruhere.net>	<4D57F169.8040705@mlbassoc.com>
	<59686AEF-1509-4F1B-B722-66D2465E274F@dominion.thruhere.net>
In-Reply-To: <59686AEF-1509-4F1B-B722-66D2465E274F@dominion.thruhere.net>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Sun, 13 Feb 2011 15:06:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/13/2011 08:00 AM, Koen Kooi wrote:
>
> Op 13 feb 2011, om 15:57 heeft Gary Thomas het volgende geschreven:
>
>> On 02/12/2011 08:01 AM, Koen Kooi wrote:
>>>
>>> Op 12 feb 2011, om 15:52 heeft Gary Thomas het volgende geschreven:
>>>
>>>> I have a BeagleBoard C3 (not the new xM).  Trying to run the
>>>> latest Poky ran into some problems:
>>>>
>>>> * The boot commands in README.hardware are no longer accurate
>>>>   for the 2.6.37 (linux-yocto) kernel.  At least you need to
>>>>   use ttyO2 for the serial console.
>>>> * There is no video?  /dev/fb0 is not being created.
>>>>
>>>> I know that the previous (Angstrom based) 2.6.32 kernel had
>>>> lots of additions which support video (DSS subsystem) and
>>>> also camera (ISP).  Has this support been ported forward
>>>> into the Yocto kernel?
>>>
>>> Even better, there is a proper BSP with beagleboard support: http://gitorious.org/angstrom/angstrom-layers/commits/master
>>
>> How is this used?  I tried just adding a pointer to that tree
>> in my conf/bblayers.conf.  I also tried moving that tree into
>> my poky sources at the same level as meta-emenlow, etc.  Both
>> attempts immediately yielded this error:
>>   ERROR: Unable to parse conf/bitbake.conf: Could not include required file conf/machine/include/omap3.inc
>>
>> Perhaps you can give some guidance for how to use this?
>
> http://thread.gmane.org/gmane.linux.distributions.angstrom.devel/4698/focus=4700

Obviously this is not what I'm looking for.

What I had wanted to test was your layering on top of my extant
Poky/Yocto environment.  I don't want to start over as I have my
own layers that work just fine with Poky.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

