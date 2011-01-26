Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEA564C81118
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 19:37:14 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5BB6B16603B3; Tue, 25 Jan 2011 18:37:14 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B02B1660395;
	Tue, 25 Jan 2011 18:37:12 -0700 (MST)
Message-ID: <4D3F7AC8.4030102@mlbassoc.com>
Date: Tue, 25 Jan 2011 18:37:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D3D6AFC.8060300@mlbassoc.com>	
	<1295872759.14388.44775.camel@rex>	<4D3E0323.2080905@linux.intel.com>
	<1295995942.27814.248.camel@rex> <4D3F6B17.60501@linux.intel.com>
In-Reply-To: <4D3F6B17.60501@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 01:37:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 05:30 PM, Darren Hart wrote:
> On 01/25/2011 02:52 PM, Richard Purdie wrote:
>> On Mon, 2011-01-24 at 14:54 -0800, Darren Hart wrote:
>>> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>>>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>>>> I wanted to try Poky on a spare laptop, so I went looking
>>>>> for an appropriate configuration to build.
>>>>>
>>>>> From 'README.hardware' (last updated 2010-12-16), I read:
>>>>> Poky Boot CD (bootcdx86)
>>>>> ========================
>>>>>
>>>>> The Poky boot CD iso images are designed as a demonstration of the Poky
>>>>> environment and to show the versatile image formats Poky can generate. It will
>>>>> run on Pentium2 or greater PC style computers. The iso image can be
>>>>> burnt to CD and then booted from.
>>>>>
>>>>> When I tried it (it's also listed in the default local.conf),
>>>>> I got this error:
>>>>> Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that does so.
>>>>> Please set a valid MACHINE in your local.conf
>>>>>
>>>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>>>
>>>>> What should I be using?
>>>>
>>>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>>>> qemux86 or atom-pc machines and building a -live image, dd that to a usb
>>>> stick and boot that on the laptop. An iso format image is also generated
>>>> that can be placed onto a CD.
>>>
>>> It will have to be atom-pc as qemu doesn't provide live images (last I
>>> checked, a few weeks back).
>>
>> I don't see why the qemu machine wouldn't work for the live image
>> variants, even if we don't build them by default on the autobuilder?
>
> When I run:
>
> $ MACHINE="qemux86" bitbake poky-image-minimal-live
>
> it results it:
>
> ERROR: '/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb' failed
> ERROR: Function 'build_boot_bin' failed (see /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 for further information)
> ERROR: Logfile of failure stored in: /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423
> Log data follows:
> | install: cannot stat `/vol/1/dvhart/poky.git/build/tmp/sysroots/qemux86-poky-linux/kernel/bzImage': No such file or directory
> | Function 'build_boot_bin' failed (see /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 for further information)
> | ERROR: Function 'build_boot_bin' failed (see /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.18423 for further information)
> NOTE: package poky-image-minimal-live-1.0-r0: task build_boot_bin: Failed
> ERROR: Task 9 (/home/dvhart/data/poky.git/meta/recipes-core/images/poky-image-minimal-live.bb, do_bootimg) failed with exit code '1'

This worked for me.  Are you sure your repo is up to date?
I think the fix was in
   commit bc9d2fbfd4eaad0df5647dd5d07dfb9fcff80ff3
   Author: Dongxiao Xu <dongxiao.xu@intel.com>
   Date:   Tue Jan 18 16:17:58 2011 +0800

     staging: Use relative path in sysroot-destdir for target recipes


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

