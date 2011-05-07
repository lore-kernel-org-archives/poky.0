Return-Path: <xiaoxianghua@gmail.com>
Received: from mail-fx0-f43.google.com (mail-fx0-f43.google.com
	[209.85.161.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68F1C4C8024E
	for <poky@pokylinux.org>; Sat,  7 May 2011 17:10:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm3 with SMTP id 3so4129123fxm.2
	for <poky@pokylinux.org>; Sat, 07 May 2011 15:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=2LW7xRBicIKqkC5GbK+jczOl8ShDLtY+fd0leXAs3mY=;
	b=rvdzte+nOGox7XTjQcM59GGDsvXseBmh0sTvLiFcOiVe9zCCe4AIAB92jHtRmToubO
	jvxF2Z1DqFnBpkOkD35FK9pK8auVC29lCXCq8bJsfR6JQqzyCPQNF5+4/wQ2nTmqjG16
	ltW9DWuig74WjGl+A7RKn6woNjPU9VTjVhXRY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=EZospubEFKxZbIX/uOITyclL47p3Pf9/C7PCn0cDRfqQmXccext/l9ZlBqpy4mU9GJ
	GYUrlA25xo9ESF0nyOUe4coTcPs5k0AgdHQSeSK1fWAh8608HbuAlisML4Hzd1cNWpUI
	WhjzgnmGXzkkSm+otc3oxnZwb1wkpQ5MjJ6RA=
MIME-Version: 1.0
Received: by 10.223.86.197 with SMTP id t5mr321803fal.38.1304806257161; Sat,
	07 May 2011 15:10:57 -0700 (PDT)
Received: by 10.223.103.70 with HTTP; Sat, 7 May 2011 15:10:57 -0700 (PDT)
In-Reply-To: <iq47ab$t58$1@dough.gmane.org>
References: <iq04eq$4qb$1@dough.gmane.org> <4DC42B45.7080504@linux.intel.com>
	<iq47ab$t58$1@dough.gmane.org>
Date: Sat, 7 May 2011 17:10:57 -0500
Message-ID: <BANLkTinxTG4ZwOOoAbbTcQU-FYRUJu4_WQ@mail.gmail.com>
From: Xianghua Xiao <xiaoxianghua@gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
Subject: Re: Third party toolchain, kernel, bootloader
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
X-List-Received-Date: Sat, 07 May 2011 22:10:58 -0000
Content-Type: text/plain; charset=UTF-8

why not try Angstrom directly? Yocto, while it builds for Beagleboard
xM somehow, is still very much a x86/ATOM distribution.

At this moment, Angstrom is the best for ARM, the second choice will
be TI's Arago, Arago has yet to be ported to the new OE framework.

I use both Angstrom and Arago for product devel on ARM. If I use
x86/ATOM I will likely choose Yocto though.

Xianghua

On Sat, May 7, 2011 at 2:42 PM, Robert Berger
<gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> On 05/06/2011 08:09 PM, Darren Hart wrote:
>>
>>
>> On 05/05/2011 11:28 PM, Robert Berger wrote:
>>> Hi,
>>>
>>> I'm working on a couple of projects trying to use yocto and it boils
>>> down to the fact, that the packages and the package management (with a
>>> few tweaks) are very valuable.
>>>
>>> On the other hand "just to give it a try" it's a major effort to add
>>> kernel and bootloader to poky and moreover the gcc which comes with poky
>>> is not always what I need in terms of stability but also features (need
>>> e.g. Cortex-A8 support). So I would also need to cook gcc to compile a
>>> vendor provided kernel and bootloader.
>>
>>
>> We build for Beagleboard xM, which is a Cortex-A8. Are you missing a
>> specific feature? Hitting a particular bug?
>
> I'm hitting a problem regarding some compiler options, but dont't have
> access to my test system at the moment.
>
>>
>>
>>> What I'm after is to add some packages from poky to some 3rd party
>>> rootfs. One major problem I have is the dependency on libc6 (>= 2.12)
>>> Usually I have some older versions of libc6: e.g. libc-2.8.so.
>>>
>>> For the projects I'm currently working on kernel and bootloader are
>>> already compiling/running and tested and I would like to add packages
>>> like qt-embedded to the various rootfs.
>>
>>
>> Is the third party rootfs built using an older version of poky or oe?
>
> No.
>
>>
>>
>>> To achieve this I would need a mechanism to use a 3rd party toolchain
>>> with poky (and maybe to skip the build steps for kernel and boot loader).
>>>
>>> Is this something yocto/poky was made for, or am I totally off?
>>> Am I the only one who has such kind of problems?
>>> How are others tackling these kind of problems?
>>
>>
>> From the above I'm getting the impressions you're trying to build
>> package with a recent yocto for a much older image that might have even
>> been built with something other than yocto (or poky).
>
> Your guess is absolutely right. I have no idea with what the roofs were
> built with.
>
>>
>> I wouldn't expect that to work. The package names, dependency names,
>> distribution policy, libc version (as you noticed) will fight you the
>> whole way.
>>
>> Please elaborate if I'm misinterpreting what you are trying to do.
>
> I am actually trying to solve 2 problems here:
>
> Problem 1)
> I want to get a sato rootfs on the TechNexion twister TAM-3517.
> Bootloader and custom kernel are provided by TechnNexion based on some
> BSP by TI. Rootfs will be provided by poky. I'll tell you more details
> about my issues as soon as I'll have access to my test system.
>
> Problem 2)
> I want to get webkit with or without QT on top of directfb on various
> set-top boxes - toolchains and rootfs are by third parties - I have no
> idea how these development environments were built.
> Kernel and boot loader and rootfs are running, tested and happy.
> Here is my "naive" way of thinking:
> In order to add webkit I will either need to build all packages and
> dependencies needed (and that's a lot) from scratch or tell poky to use
> a certain toolchain+libs and reuse poky/oe recipes to build the packages
> I need (with some tweaks I guess).
>
> Regards,
>
> Robert
>
>
>
>>
>> --
>> Darren
>>
>>>
>>> Please advise,
>>>
>>> Regards,
>>>
>>> Robert
>>>
>>>
>>> ..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
>>> only): Don't do it yet." - M.A. Jackson (not the singer)
>>>
>>> My public pgp key is available at:
>>> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>>>
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

