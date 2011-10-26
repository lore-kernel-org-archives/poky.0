Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D603E006B4
	for <poky@yoctoproject.org>; Wed, 26 Oct 2011 09:57:48 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B955816608E6; Wed, 26 Oct 2011 10:57:45 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F06B716608B4;
	Wed, 26 Oct 2011 10:57:44 -0600 (MDT)
Message-ID: <4EA83C08.5010002@mlbassoc.com>
Date: Wed, 26 Oct 2011 10:57:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4EA8186C.9060906@mlbassoc.com>
	<CAEsOVNejiifxREadD5-Lh6_MazhH1Qh1dgWg-nAw_e1yA8kTXA@mail.gmail.com>
In-Reply-To: <CAEsOVNejiifxREadD5-Lh6_MazhH1Qh1dgWg-nAw_e1yA8kTXA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange ext filesystem error
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
X-List-Received-Date: Wed, 26 Oct 2011 16:57:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-26 10:44, McClintock Matthew-B29882 wrote:
> On Wed, Oct 26, 2011 at 9:25 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> I've noticed this behaviour on my Poky/Yocto based systems.
>> First, I format some device, in this case an MMC card, as ext3
>> (yes, my kernel supports ext3)
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

>>   # mkfs.ext3 /dev/mmcblk0p1
>> Then, when I go to mount it, I get this error:
>>   # mount /dev/mmcblk0p1 /tmp/disk
>>   EXT2-fs (mmcblk0p1): warning: mounting ext3 filesystem as ext2
>>
>> Any ideas why?  How can I get ext3 file system working?
>
> Does your kernel support ext3? Otherwise you can try:

See above :-)

>
> $ mount -t ext3 /dev/mmcblk0p1 /tmp/disk

This does work although forcing the file system type should not
be necessary, but I'll live with it.  This warning/error must have
something to do with the mount program (part of busybox).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

