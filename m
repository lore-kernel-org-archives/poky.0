Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08B2D4C80F9A
	for <poky@yoctoproject.org>; Wed, 11 May 2011 16:26:57 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3C3E116601F1; Wed, 11 May 2011 15:26:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E85AC1660132;
	Wed, 11 May 2011 15:26:15 -0600 (MDT)
Message-ID: <4DCAFEF7.3040407@mlbassoc.com>
Date: Wed, 11 May 2011 15:26:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DCAD58D.3040501@mlbassoc.com>	
	<BANLkTimxcWskB6AQZZ-cN3kTpegt4vK2jg@mail.gmail.com>	
	<4DCAD7CF.6000807@mlbassoc.com> <1305141479.30391.471.camel@rex>
In-Reply-To: <1305141479.30391.471.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: qemuarm hangs
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
X-List-Received-Date: Wed, 11 May 2011 21:26:58 -0000
X-Groupsio-MsgNum: 6023
Content-Type: multipart/mixed; boundary="------------070006050808090106000905"

--------------070006050808090106000905
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2011 01:17 PM, Richard Purdie wrote:
> On Wed, 2011-05-11 at 12:39 -0600, Gary Thomas wrote:
>> On 05/11/2011 12:34 PM, Bruce Ashfield wrote:
>>> On Wed, May 11, 2011 at 2:29 PM, Gary Thomas<gary@mlbassoc.com>   wrote:
>>>> Building from master, updated earlier today.
>>>>
>>>> OE Build Configuration:
>>>> BB_VERSION        = "1.11.0"
>>>> METADATA_BRANCH   = "my_master"
>>>> METADATA_REVISION = "2e4518bf18d977e1249ef7e7cd384df66e7b4801"
>>>> TARGET_ARCH       = "arm"
>>>> TARGET_OS         = "linux-gnueabi"
>>>> MACHINE           = "qemuarm"
>>>> DISTRO            = "poky"
>>>> DISTRO_VERSION    = "1.0+snapshot-20110511"
>>>> TARGET_FPU        = "soft"
>>>>
>>>> When I runqemu on core-image-sato, it brings up the simulated
>>>> video screen and the Yocto splash shows.  The progress bar goes
>>>> to about 60% and then it just hangs there forever.
>>>>
>>>> core-image-minimal boots to a login prompt
>>>>
>>>> Ideas?  How can I figure out where it's bombing out?
>>>
>>> When I saw this go by:
>>>
>>> commit a2e232e2313ee267076bb8de32a1a604dbebc33b
>>> Author: Zhai Edwin<edwin.zhai@intel.com>
>>> Date:   Tue May 10 14:02:35 2011 +0800
>>>
>>>       qemu: Upgrade qemu git to the latest 0.14 branch
>>>
>>>       Also add missing patch to build qemu-git
>>>
>>>       [YOCTO #1013] got fixed
>>>
>>>       (From OE-Core rev: 9b80846152931bed018f33baaaf1ba253e756867)
>>>
>>>       Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>>>       Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>
>>> I wondered about compatibility. Have you tried with the older qemu ?
>>
>> I believe so.  I ran the same test a few days ago and it worked fine.
>> I'm trying qemux86 now with this latest tree.  After that, I could
>> try reverting the change you mention.
>>
>> Any clues how to get "under the covers" when booting a qemu image?
>> Once it brings up the video/splash screen, I'm in the dark as to
>> what's going on.
>
> Several ways:
>
> a) You can redirect the console as Bruce mentions
>
> b) there is an option you can add to the kernel commandline to disable
> psplash (psplash=false)
>
> c) you can switch the console as you normally would under Linux which
> triggers psplash to terminate (Something like Crtl+Alt+F2 then Ctrl+Alt
> +F1 again but I can't remember the exact combination off the top of my
> head)

Disabling the psplash screen, I see this error:
   Running postinst /etc/rpm-postinsts/gthumb.sh
   Failed to load file "/etc/gconf/gconf.xml.defaults/%gconf-tree-pl.xml": Error on line 363 char 9: Element 'dir' was closed, no element is currently open
I think this was a result of an incomplete [previous] startup, so I
tried with a fresh image.  This time, it made it all the way to X,
so I guess I was just too impatient (of course, it took almost 8 minutes
to get to X on a 2.4GHz Core-2 Duo!)

I'll continue with my experiment to see how this runs on qemux86

Sorry for the noise.  I do think a slight improvement in the runqemu
script can help with situations like this.  I had to edit the scripts
to add the 'psplash=false' kernel option.  With the attached patch,
you can do it directly:
   % SCRIPT_KERNEL_OPT='psplash=false ' runqemu qemuarm

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070006050808090106000905
Content-Type: text/plain;
 name="runeqmu.suggestion"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="runeqmu.suggestion"

ZGlmZiAtLWdpdCBhL3NjcmlwdHMvcnVucWVtdSBiL3NjcmlwdHMvcnVucWVtdQppbmRleCBhMDkz
NjJjLi4yYzNmNmY0IDEwMDc1NQotLS0gYS9zY3JpcHRzL3J1bnFlbXUKKysrIGIvc2NyaXB0cy9y
dW5xZW11CkBAIC01MSw3ICs1MSw3IEBAIFJPT1RGUz0iIgogTEFaWV9ST09URlM9IiIKIFNDUklQ
VF9RRU1VX09QVD0iIgogU0NSSVBUX1FFTVVfRVhUUkFfT1BUPSIiCi1TQ1JJUFRfS0VSTkVMX09Q
VD0iIgorU0NSSVBUX0tFUk5FTF9PUFQ9JHtTQ1JJUFRfS0VSTkVMX09QVDotIiJ9CiAKIFRNUERJ
Uj0iIgogCg==

--------------070006050808090106000905--
