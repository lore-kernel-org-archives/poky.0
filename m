Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A8704C8057C
	for <poky@pokylinux.org>; Sun,  8 May 2011 10:29:37 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QJ5vM-0004Ec-0T
	for poky@pokylinux.org; Sun, 08 May 2011 17:29:36 +0200
Received: from ppp079166103232.dsl.hol.gr ([79.166.103.232])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sun, 08 May 2011 17:29:36 +0200
Received: from gmane by ppp079166103232.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sun, 08 May 2011 17:29:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 08 May 2011 18:29:22 +0300
Organization: Reliable Embedded Systems
Message-ID: <iq6csj$3f8$1@dough.gmane.org>
References: <iq04eq$4qb$1@dough.gmane.org>
	<4DC42B45.7080504@linux.intel.com>	<iq47ab$t58$1@dough.gmane.org>
	<BANLkTinxTG4ZwOOoAbbTcQU-FYRUJu4_WQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166103232.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <BANLkTinxTG4ZwOOoAbbTcQU-FYRUJu4_WQ@mail.gmail.com>
Subject: Re: Third party toolchain, kernel, bootloader
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 08 May 2011 15:29:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 05/08/2011 01:10 AM, Xianghua Xiao wrote:
> why not try Angstrom directly? Yocto, while it builds for Beagleboard
> xM somehow, is still very much a x86/ATOM distribution.

As far as I'm concerned yocto is fine for the Beagle-XM as long as you
don't care about graphics and video and according to TI Mr. Angstrom
himself (hi Koen) is working on yocto as well.

Well I'm __NOT__ working on any x86/Atom project or board for various
reasons, but with MIPS big and little endian, ARM and PPC (which could
be covered by yocto) and also with SH and more exotic things. So I'm
trying to find a solution, which can be used for all of the projects I'm
working on (and as you see I have some funny ideas which i would like to
be covered)
Yocto is still young and open (it's not just x86/Atom) and has lots of
potential.

> 
> At this moment, Angstrom is the best for ARM, the second choice will
> be TI's Arago, Arago has yet to be ported to the new OE framework.

I played with Angstrom and will play for the graphics/video stuff with
Arago, but think that Linaro, which is folded into yocto is the way to
go for ARM. The vendors and board manufacturers need to understand that
it's too much effort to maintain vendor trees and will need to push
their stuff upstream towards mainline.

> 
> I use both Angstrom and Arago for product devel on ARM. If I use
> x86/ATOM I will likely choose Yocto though.

As I said, I did not use x86/Atom for embedded projects so far and don't
think this will happen in the near future - unless Intel donates some
boards for me to play with;)

Regards,

Robert

> 
> Xianghua
> 
> On Sat, May 7, 2011 at 2:42 PM, Robert Berger
> <gmane@reliableembeddedsystems.com> wrote:
>> Hi,
>>
>> On 05/06/2011 08:09 PM, Darren Hart wrote:
>>>
>>>
>>> On 05/05/2011 11:28 PM, Robert Berger wrote:
>>>> Hi,
>>>>
>>>> I'm working on a couple of projects trying to use yocto and it boils
>>>> down to the fact, that the packages and the package management (with a
>>>> few tweaks) are very valuable.
>>>>
>>>> On the other hand "just to give it a try" it's a major effort to add
>>>> kernel and bootloader to poky and moreover the gcc which comes with poky
>>>> is not always what I need in terms of stability but also features (need
>>>> e.g. Cortex-A8 support). So I would also need to cook gcc to compile a
>>>> vendor provided kernel and bootloader.
>>>
>>>
>>> We build for Beagleboard xM, which is a Cortex-A8. Are you missing a
>>> specific feature? Hitting a particular bug?
>>
>> I'm hitting a problem regarding some compiler options, but dont't have
>> access to my test system at the moment.
>>
>>>
>>>
>>>> What I'm after is to add some packages from poky to some 3rd party
>>>> rootfs. One major problem I have is the dependency on libc6 (>= 2.12)
>>>> Usually I have some older versions of libc6: e.g. libc-2.8.so.
>>>>
>>>> For the projects I'm currently working on kernel and bootloader are
>>>> already compiling/running and tested and I would like to add packages
>>>> like qt-embedded to the various rootfs.
>>>
>>>
>>> Is the third party rootfs built using an older version of poky or oe?
>>
>> No.
>>
>>>
>>>
>>>> To achieve this I would need a mechanism to use a 3rd party toolchain
>>>> with poky (and maybe to skip the build steps for kernel and boot loader).
>>>>
>>>> Is this something yocto/poky was made for, or am I totally off?
>>>> Am I the only one who has such kind of problems?
>>>> How are others tackling these kind of problems?
>>>
>>>
>>> From the above I'm getting the impressions you're trying to build
>>> package with a recent yocto for a much older image that might have even
>>> been built with something other than yocto (or poky).
>>
>> Your guess is absolutely right. I have no idea with what the roofs were
>> built with.
>>
>>>
>>> I wouldn't expect that to work. The package names, dependency names,
>>> distribution policy, libc version (as you noticed) will fight you the
>>> whole way.
>>>
>>> Please elaborate if I'm misinterpreting what you are trying to do.
>>
>> I am actually trying to solve 2 problems here:
>>
>> Problem 1)
>> I want to get a sato rootfs on the TechNexion twister TAM-3517.
>> Bootloader and custom kernel are provided by TechnNexion based on some
>> BSP by TI. Rootfs will be provided by poky. I'll tell you more details
>> about my issues as soon as I'll have access to my test system.
>>
>> Problem 2)
>> I want to get webkit with or without QT on top of directfb on various
>> set-top boxes - toolchains and rootfs are by third parties - I have no
>> idea how these development environments were built.
>> Kernel and boot loader and rootfs are running, tested and happy.
>> Here is my "naive" way of thinking:
>> In order to add webkit I will either need to build all packages and
>> dependencies needed (and that's a lot) from scratch or tell poky to use
>> a certain toolchain+libs and reuse poky/oe recipes to build the packages
>> I need (with some tweaks I guess).
>>
>> Regards,
>>
>> Robert
>>
>>
>>
>>>
>>> --
>>> Darren
>>>
>>>>
>>>> Please advise,
>>>>
>>>> Regards,
>>>>
>>>> Robert
>>>>
>>>>
>>>> ..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
>>>> only): Don't do it yet." - M.A. Jackson (not the singer)
>>>>
>>>> My public pgp key is available at:
>>>> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>>>>
>>>>
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>

..."Beware of bugs in the above code; I have only proved it correct, not
tried it." - Donald Knuth, in a memo to Peter Van Emde Boas titled
"Notes on the van Emde Boas construction of priority deques: An
instructive use of recursion"

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



