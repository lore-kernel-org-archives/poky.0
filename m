Return-Path: <raj.khem@gmail.com>
Received: from mail-gw0-f43.google.com (mail-gw0-f43.google.com [74.125.83.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 017CF4C80050
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 03:26:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwb17 with SMTP id 17so6286038gwb.2
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 01:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type;
	bh=Xzi37ZabYvqXaTQW8e1TxAAk8YYBaHJKJ2hrXp8bIkA=;
	b=x4z0JfD/7bSmhYoZrrPpMAcsi/pfwfxQi7QII8oOccv/49YNv0+NzTXKNWHjFie2ZE
	jHCXmaDHjWt8YLfrjvE5m2K0HUtsSR7XkYToS2NIhkGHF3+tkocqe3pQXb9Ibqa7nzaL
	v/MDGpBBdr+z9mpYUL9xDg4xXavLvStmpdM3U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=DId703N3I8IOOvirZOtHRolDbmtEEj5YOHnwZq+t46kLBrn1buznY6IuWsNg0IDD4R
	fEmSCwU05NR+9eO5svjWJ1dDBi+FY2H0fR61H2IqD3QdObrAPgM0RKSMAVVr8XZOR4ML
	VhcVNjU7BPhGdVvh6EJ+YSXjBode3tOGq861A=
Received: by 10.90.10.21 with SMTP id 21mr8485545agj.112.1293787606686; Fri,
	31 Dec 2010 01:26:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Fri, 31 Dec 2010 01:26:26 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D64C3178E@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1DC19AA448@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314E4@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C3178E@shsmsx502.ccr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Dec 2010 01:26:26 -0800
Message-ID: <AANLkTintF_OTytOB0LNPRaaUeXXQNoaUgTW4SkFHVmip@mail.gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Fri, 31 Dec 2010 09:26:50 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 31, 2010 at 12:52 AM, Tian, Kevin <kevin.tian@intel.com> wrote:
>>From: Tian, Kevin
>>Sent: Thursday, December 30, 2010 7:23 PM
>>>From: Lu, Lianhao
>>>Sent: Thursday, December 30, 2010 5:43 PM
>>>>>>
>>>>>> I really don't think its this simple.
>>>>>>
>>>>>> Looking at the gcc code, I propose we patch cppdefault.c so instead
>>>>>> of
>>>>>>
>>>>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
>>>>>>
>>>>>> is says
>>>>>>
>>>>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0
>>>>>>
>>>>>> and then we only ever specify:
>>>>>>
>>>>>> --with-gxx-include-dir=${includedir}/c++/ to build the compiler.
>>>>>>
>>>>>> Since we set always set --sysroot for the compiler correctly, this
>>>>>> should then fix all the problems in a clean and simple way.
>>>>>>
>>>>>> Why? Changing the 0 -> 1 above will cause c++ to add the sysroot to
>>>>>> GPLUSPLUS_INCLUDE_DIR and in turn this means it should start to
>>>>>> behave sanely.
>>>>>>
>>>>>> I don't like patching gcc like this but in this case I believe the
>>>>>> standard settings are just plain wrong and with that simple change,
>>>>>> things will just work as they should...
>>>>>>
>>>>>> Of course I've not tested this so I'd appreciate feedback but I
>>>>>> think it will solve the problem in the simplest way :)
>>>>>>
>>>>>
>>>>> That's a good and simple idea! I'll try it, but the test may take
>>>>> time... :-)
>>>>>
>>>>
>>>> I've at least verified this change working in one of my sstate build,
>>>> where c++ include dir could be searched successfully relative to sysroot.
>>>>
>>>> Lianhao is helping me test SDK multiple sysroot scenario, and I'm
>>>> testing more archs to ensure it not breaking normal build.
>>>
>>>The simple helloworld CPP can be built successfully by Kevin's new cross-candian-gcc now.
>>>But another complex CPP project Sudoku still have the building problems, complaining
>>about
>>>not finding c++ header "#include <algorithm>". The strace output shows that the failure
>>>is caused by not finding the algorithm.gch on the target.
>>>
>>>> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=tk/cplusplu s
>>>>
>>>
>>
>>where is that algorithm.gch supposed to stay? I searched my standard c++ include
>>dir (usr/include/c++) with below finding:
>>
>>usr/include/c++/ext/algorithm
>>usr/include/c++/algorithm
>>
>>is above "algorithm" the one you mentioned as "algorithm.gch"?
>>
>
> This turns out related to collect2. Actually the compilation already reached the last step,
> where all generated .o are linked together as one executable. This step collect2 is invoked
> implicitly to handle constructor functions. Not sure the reason yet, I saw that collect2
> wants to recompile workset.o for whatever reasons. Unfortunately this recompilation is
> invoked w/o "--sysroot" option, and thus no c++ header files could be located.
>
> I'm still investigating why this recompilation is triggered, and how collect2 constructs
> the build flags implicitly...

the project is using precompiled headers and the build system
of the package should regenerate them if they are not found. Its
nothing that gcc can do about. You can either fix the build system
of package in question or stop generating precompiled headers.

