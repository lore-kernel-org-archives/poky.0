Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 366794C8043A
	for <poky@yoctoproject.org>; Thu, 19 May 2011 09:26:17 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A412116603B4; Thu, 19 May 2011 08:26:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8520116603A5;
	Thu, 19 May 2011 08:26:14 -0600 (MDT)
Message-ID: <4DD52886.80003@mlbassoc.com>
Date: Thu, 19 May 2011 08:26:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4DD5239A.30404@mlbassoc.com> <4DD52666.6050003@windriver.com>
In-Reply-To: <4DD52666.6050003@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Thu, 19 May 2011 14:26:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/19/2011 08:17 AM, Mark Hatle wrote:
> On 5/19/11 9:05 AM, Gary Thomas wrote:
>> Building Poky for various targets, I see some striking differences
>> based on the packaging.  I'm building for the beagleboard (RPM)
>> and my own OMAP/3530 (IPK), so everything is the same for these
>> packages (same compiler, architecture, etc), only the package
>> method differs.  This was built on an otherwise idle box
>> 4-way (Intel(R) Core(TM)2 Quad CPU    Q6600  @ 2.40GHz), with
>>     BB_NUMBER_THREADS ?= "4"
>>     PARALLEL_MAKE ?= "-j 4"
>>
>> Each of these tests are a complete build of the package, with
>> all dependencies already built.  For example, I use this sequence:
>>     % bitbake perl
>>     % bitbake perl -c clean
>>     % rm sstate-cache/sstate-perl-arm*
>>     % time bitbake perl
>>
>> perl -      RPM                         IPK
>>          real    12m15.520s          real    9m43.228s
>>          user    5m42.988s           user    4m40.692s
>>          sys     3m56.636s           sys     2m19.860s
>>
>> eglibc     RPM                          IPK
>>          real    32m19.984s          real    23m52.124s
>>          user    15m32.732s          user    20m48.214s
>>          sys     17m28.087s          sys     9m3.936s
>>
>> Bottom line - it seems to take 20-30% longer to package via RPM.
>>
>> I know there are reasons and tradeoffs for different packaging
>> methods, but 30% extra?
>>
>
> This matches my expectations for the most part.  RPM creates and processes a lot
> more metadata then IPK.  IPK is well optimized for small systems, and certainly
> I would advise someone generating a small system to use IPK.
>
> For medium and (especially) large systems, RPM starts to give more abilities
> that IPK due to the additional meta data.  This includes individual file type
> information, file checksum generation and evaluation on install, sparse file
> support, conflict detection and resolution [for multilib systems], ACID style
> upgrade, repackaging abilities for rollback, etc..  (Some of the items for RPM
> are not yet enabled in oe-core, but could be by individual developers.)
>
> (I also wouldn't be surprised if we've got integration optimizations in the RPM
> backend in oe-core that could help with those numbers.  The numbers seem to be
> much worse on packages with large numbers of files, vs the typical package with
> only a few to a hundred or so files.)
>
> Downside of RPM for small systems is the Berkley DB and the amount of meta data.
>   If you will be doing on-device upgrades the space required to handle the
> berkley DB and related items is quite large..  Also many of the advanced
> features available in RPM simple are not needed in small systems.

Fair enough.  Perhaps the packaging type should be chosen based on
the target, e.g. the BeagleBoard probably would be best served by IPK.

Certainly, these data/tradeoffs should be made clear somewhere in the documentation.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

