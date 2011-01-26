Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DA824C8085F
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 16:07:46 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id F3E731660346; Wed, 26 Jan 2011 15:07:44 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 16113166033B;
	Wed, 26 Jan 2011 15:07:44 -0700 (MST)
Message-ID: <4D409B30.9070000@mlbassoc.com>
Date: Wed, 26 Jan 2011 15:07:44 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D40251F.5070906@mlbassoc.com> <4D40919E.6010802@linux.intel.com>
In-Reply-To: <4D40919E.6010802@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 22:07:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 02:26 PM, Darren Hart wrote:
> On 01/26/2011 05:43 AM, Gary Thomas wrote:
>> I finally got Poky to build for a standard PC (actually atom-pc
>> so I could build a live/bootable image). Sadly, that's all I
>> have is an image as I can't get it to run anywhere :-(
>>
>> * On my laptop (the point of this exercise) which is an older
>> Pentium-III machine, the kernel crashes almost immediately.
>
> Can you capture the output and provide some details on the hardware?

Hard to do - I took pictures of the screen with my camera, the results
may help, but won't win me a Pulitzer :-)

On the AMD/2800+
   http://www.mlbassoc.com/poky/BootFailures/P1000630.JPG
On the old Pentium-III laptop
   http://www.mlbassoc.com/poky/BootFailures/P1000631.JPG
   http://www.mlbassoc.com/poky/BootFailures/P1000632.JPG
>
>>
>> * On my brand new laptop (Core-i3), I couldn't get it to even
>> try...
>
> What happened? Some bios are very particular about usb layout, see
> README.hardware under atom-pc. Some (including my netbook) require
> that it be in USB-ZIP format, so you can't just dd the image to
> the stick in some cases (unfortunately).

My boot medium is a CD-RW with the ISO image.
Not sure why it didn't want to boot before, but when I just retried
it, it hung in yet a different way.
   http://www.mlbassoc.com/poky/BootFailures/P1000629.JPG

>
>>
>> * On a VirtualBox machine, it boots but then sits forever
>> "waiting for removable media"...
>
> Can you share the messages leading up to this? Is it trying to mount ram0?
>
   http://www.mlbassoc.com/poky/BootFailures/poky-hangs.png

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

