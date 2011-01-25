Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E51604C81060
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 10:45:07 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 98CA416602A2; Tue, 25 Jan 2011 09:45:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5C9B9166029A;
	Tue, 25 Jan 2011 09:45:05 -0700 (MST)
Message-ID: <4D3EFE11.9010004@mlbassoc.com>
Date: Tue, 25 Jan 2011 09:45:05 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4D3D6AFC.8060300@mlbassoc.com>	<1295872759.14388.44775.camel@rex>	<4D3E0323.2080905@linux.intel.com>	<4D3EBD30.2070708@mlbassoc.com>	<AANLkTimCPy=tcgDqqgiT6Lzu7z=KZLvBA9839Y12=Gj8@mail.gmail.com>
	<4D3EFC34.5050503@mlbassoc.com> <4D3EFCFA.4060801@windriver.com>
In-Reply-To: <4D3EFCFA.4060801@windriver.com>
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
X-List-Received-Date: Tue, 25 Jan 2011 16:45:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 09:40 AM, Bruce Ashfield wrote:
> On 11-01-25 11:37 AM, Gary Thomas wrote:
>> On 01/25/2011 06:45 AM, Bruce Ashfield wrote:
>>> On Tue, Jan 25, 2011 at 7:08 AM, Gary Thomas<gary@mlbassoc.com> wrote:
>>>> On 01/24/2011 03:54 PM, Darren Hart wrote:
>>>>>
>>>>> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>>>>>>
>>>>>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>>>>>>
>>>>>>> I wanted to try Poky on a spare laptop, so I went looking
>>>>>>> for an appropriate configuration to build.
>>>>>>>
>>>>>>> From 'README.hardware' (last updated 2010-12-16), I read:
>>>>>>> Poky Boot CD (bootcdx86)
>>>>>>> ========================
>>>>>>>
>>>>>>> The Poky boot CD iso images are designed as a demonstration of the
>>>>>>> Poky
>>>>>>> environment and to show the versatile image formats Poky can
>>>>>>> generate.
>>>>>>> It will
>>>>>>> run on Pentium2 or greater PC style computers. The iso image can be
>>>>>>> burnt to CD and then booted from.
>>>>>>>
>>>>>>> When I tried it (it's also listed in the default local.conf),
>>>>>>> I got this error:
>>>>>>> Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO
>>>>>>> that does
>>>>>>> so.
>>>>>>> Please set a valid MACHINE in your local.conf
>>>>>>>
>>>>>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>>>>>
>>>>>>> What should I be using?
>>>>>>
>>>>>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>>>>>> qemux86 or atom-pc machines and building a -live image, dd that to
>>>>>> a usb
>>>>>> stick and boot that on the laptop. An iso format image is also
>>>>>> generated
>>>>>> that can be placed onto a CD.
>>>>>
>>>>> It will have to be atom-pc as qemu doesn't provide live images (last I
>>>>> checked, a few weeks back).
>>>>
>>>> Sadly, this doesn't build :-( Failed in compile_perf, log attached.
>>>
>>> Hmm. This one was worked around a while ago via:
>>>
>>> commit d38ad3271829b2d282c973e69edd265ef52174c8
>>> Author: Tom Zanussi<tom.zanussi@intel.com>
>>> Date: Fri Jan 14 16:33:05 2011 -0600
>>>
>>> linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON
>>>
>>> ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
>>> using it to compile perf, which results in a compilation error that
>>> started appearing just recently.
>>>
>>> This turns the code that makes use of ExtUtils::Embed off and simply
>>> hard-codes NO_LIBPERL.
>>>
>>> It does the same for LIBPYTHON while we're at it, since it probably
>>> suffers from a similar underlying problem and just by chance hasn't
>>> broken anything yet.
>>>
>>> This will be re-enabled after I familiarize myself with the perf
>>> recipe and am able to create a proper fix.
>>>
>>> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> :100644 100644 21023da... 7833f65... M
>>> meta/recipes-kernel/linux/linux-yocto_git.bb
>>>
>>> But the issue hadn't been showing up on the -stable .. until now. We
>>> can cherry
>>> pick this patch and commit to at least temporarily work around it.
>>>
>>> I would have expected the nightly builds to show this one, since not all
>>> supported targets have moved to 2.6.37.
>>
>> I just updated to the latest master and started from scratch.
>> It's still happening :-(
>>
>> OE Build Configuration:
>> BB_VERSION = "1.11.0"
>> METADATA_BRANCH = "master"
>> METADATA_REVISION = "beb9166b3adf83c5e864afcb56cf9ea24f55a7c3"
>> TARGET_ARCH = "i586"
>> TARGET_OS = "linux"
>> MACHINE = "atom-pc"
>> DISTRO = "poky"
>> DISTRO_VERSION = "0.9+snapshot-20110125"
>> TARGET_FPU = ""
>>
>> | CC util/scripting-engines/trace-event-perl.o
>> | cc1: warnings being treated as errors
>> | cc1: error: include location "/usr/local/include" is unsafe for
>> cross-compilation
>> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
>> | make: Leaving directory
>> `/home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/linux/tools/perf'
>>
>>
>> | FATAL: oe_runmake failed
>> | Function 'do_compile_perf' failed (see
>> /home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/temp/log.do_compile_perf.8191
>>
>> for further information)
>> | ERROR: Function 'do_compile_perf' failed (see
>> /home/local/pc_poky/tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1/temp/log.do_compile_perf.8191
>>
>> for further information)
>> NOTE: package
>> linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_0+35521a5a70316785a67aca1de1d39a7b84c49ccf-r1:
>> task do_compile_perf: Failed
>>
>> Maybe it has something to do with my build host (Fedora-13, x86)?
>
> In this case the host is fine. That commit was on the
> 2.6.37 kernel, and I used your report as a trigger and
> backported it to 2.6.34. I have a pull request out now,
> which should fixup the perf compilation issues once
> merged.

Thanks, I'll try it with your patch.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

