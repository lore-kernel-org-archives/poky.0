Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 175164C80050
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 13:17:41 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 514F716601C1; Mon, 21 Mar 2011 12:17:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B34D166019A;
	Mon, 21 Mar 2011 12:17:39 -0600 (MDT)
Message-ID: <4D879643.7000908@mlbassoc.com>
Date: Mon, 21 Mar 2011 12:17:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D876DD3.5070106@mlbassoc.com>	 <1300722848.30423.3751.camel@rex>
	<4D877E6B.9000007@mlbassoc.com> <1300730269.30423.3975.camel@rex>
In-Reply-To: <1300730269.30423.3975.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 18:17:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 11:57 AM, Richard Purdie wrote:
> On Mon, 2011-03-21 at 10:35 -0600, Gary Thomas wrote:
>> On 03/21/2011 09:54 AM, Richard Purdie wrote:
>>> On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
>>>> I'm trying to do some testing with Poky on an atom-PC.  I thought
>>>> I'd try with a minimal system and then add pieces I need.  Sadly,
>>>> I've run aground doing this.  I've built a couple of images with
>>>> varying results:
>>>>      poky-image-minimal-live - boots on my box
>>>>      poky-image-sato-live - boots, but fails to find X display, then hangs (*)
>>>>
>>>> There seem to be no RPM tools on the minimal image.  Did I miss something?
>>>> On my old, ipk based system, I'd build up a minimal image then use opkg
>>>> to install additional packages.
>>>
>>> Minimal images were never meant to ship with the package manager and now
>>> don't. You can obviously change the image definitions easily enough as
>>> needed.
>>>
>>>>     How do I do that with the RPM based images?
>>>
>>> The same switch turns on/off the package manager data for rpm and opkg.
>>
>> I tried adding this to local.conf, but nothing changed when I build minimal image:
>>     IMAGE_FEATURES += " package-management ssh-server-dropbear "
>
> There is also this:
>
> # remove not needed ipkg informations
> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
>
> in poky-image-minimal.bbclass which has been there for a long time and
> removes the package manager data files.

I guess I'm just used to my own minimal image which does have all these present.

>
>> BTW, where is this documented?  Not in the Poky handbook from what I can tell.
>>
>> Also, is there documentation on how to use zypper, how to set up repositories, etc?
>
> I think others have helped here. Please do send patches for the manual
> when people go to the trouble of finding information to help though!

I'll see what I can do to help with this.

>>>>    I've checked the documentation and there's basically nothing
>>>> about this, unless I looked in the wrong place.
>>>>
>>>> Any ideas or pointers gladly accepted.  Thanks
>>>>
>>>> (*) I had success with this in the past when I booted with MACHINE=emenlow
>>>> but that hardware isn't in the primary list.
>>>
>>> I'm not sure why this isn't working or what the problem might be...
>>
>> It complains it can't find /dev/fb0.  See the boot log at http://www.mlbassoc.com/poky/boot_2011-03-21.log
>
> Does your board have Intel graphics or PVR/SGX? emenlow has PVR/SGX
> which might explain this...

I'm not familiar with the details - it's an older Atom with the Poulsbo chipset.
The details (cpuinfo, lspci) are at http://www.mlbassoc.com/poky/cpu_2011-03-21.info
The kernel is also not finding my SATA controller - should I expect that to work?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

