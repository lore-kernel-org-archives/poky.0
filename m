Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E21554C805AF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 14:04:30 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxl11 with SMTP id 11so3372049yxl.35
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 12:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=DHRaK6z2MeLUGLoiBe467k6EJikEKvwnWtZqsDfCrqI=;
	b=Wrl87P/gWHYpOTE7hm7a/SrjRcQIwsJEWzEbUq+OYtveDRS3bt4IZyW1n0QTsSd5Ik
	36tSXWnZzgKI15X09yK8mtGntHQLGNr0TsSzp8iMiVenhGHEAQblWjsbNk1UxdYGuKIU
	nQdOsUpqyc6EKQMIBkR8cS5m0gp9C9eAgbkKs=
MIME-Version: 1.0
Received: by 10.91.58.14 with SMTP id l14mr4775809agk.144.1311620670354; Mon,
	25 Jul 2011 12:04:30 -0700 (PDT)
Received: by 10.91.12.2 with HTTP; Mon, 25 Jul 2011 12:04:30 -0700 (PDT)
In-Reply-To: <4E2DBD1C.40206@mentor.com>
References: <cover.1311616990.git.bruce.ashfield@windriver.com>
	<4E2DB8FD.8020903@mentor.com>
	<CADkTA4N+5WpjvDp+apuCH=1G4oJD6vb49tJVv7+v7GtQ7-LsOA@mail.gmail.com>
	<4E2DBD1C.40206@mentor.com>
Date: Mon, 25 Jul 2011 15:04:30 -0400
Message-ID: <CADkTA4MwZgnPeymKQhCJ_G_ySsGE1bzFc98jjzkRuDSYDq6HPg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Rini <tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Mon, 25 Jul 2011 19:04:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 25, 2011 at 2:59 PM, Tom Rini <tom_rini@mentor.com> wrote:
> On 07/25/2011 11:50 AM, Bruce Ashfield wrote:
>> On Mon, Jul 25, 2011 at 2:42 PM, Tom Rini <tom_rini@mentor.com> wrote:
>>> On 07/25/2011 11:05 AM, Bruce Ashfield wrote:
>>>> Here's a similar change to the meta-yocto boards, as was done
>>>> to the qemu machines in oe-core. Since referencing yocto makes
>>>> more sense in this layer, I made the change in the poky.conf
>>>> distro default file.
>>>>
>>>> As the staging of linux-yocto-3.0 showed, we should explicitly
>>>> state our preferred version of linux-yocto. This prevents unvalidated
>>>> changes from being forced into machines. Layers and machines are free
>>>> to override this as they are updated.
>>>>
>>>> cc: Tom Zanussi <tom.zanussi@intel.com>
>>>>
>>>> The following changes since commit dfec64a66e66ad4ec94a06ad900307fb0d9=
32b98:
>>>>
>>>> =A0 machine/qemu: set preferred linux-yocto kernel version (2011-07-25=
 10:56:46 -0400)
>>>>
>>>> are available in the git repository at:
>>>> =A0 git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>>>> =A0 http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kerne=
l-yocto
>>>>
>>>> Bruce Ashfield (1):
>>>> =A0 poky.conf: explicitly referenced preferred linux-yocto version
>>>>
>>>> =A0meta-yocto/conf/distro/poky.conf | =A0 =A02 ++
>>>> =A01 files changed, 2 insertions(+), 0 deletions(-)
>>>
>>> I guess as an aside, the convention we have/had in oe.dev was
>>> DEFAULT_PREFERENCE =3D -1, D_P_testedmachine1 =3D 1, etc, etc, in the k=
ernel
>>> recipes.
>>
>> I've noticed that .. and it would work here as well. I'm hesitant to
>> maintain a set of tested machine overrides in the yocto layers, since
>> we are at a small number now, but that number isn't guaranteed to
>> stay small. I have enough of a pain updating SRCREVs constantly,
>> tweaking another set of vars isn't high on my 'fun' list.
>>
>> I prefer to have the machines opt-in, versus maintaining a list of known
>> good machines in a central file (I realize that the machines would/could
>> be the ones setting the default_preference back to 1 as wel, but it is
>> still another variable to manipulate). But am not religious about any of=
 this :)
>>
>> The flip to 3.0 is sort of a special case, and typically it is just a sw=
itch
>> I throw, since all machines are tested at once.
>>
>> Good comment and food for thought indeed!
>
> So, if you go down the D_P route, meta-$whatever has
> linux_testedVer.bbappend D_P =3D "1" in it for what it wants to opt into
> and the meta-yocto / oe-core recipes just stay having to track qemu
> machines, too.

Understood, that's what I tried to say (badly) when I mentioned that the
machines could set this variable in their own layer, versus a central
update.

The question that pops up for me, what's the pros and cons of this
versus the machine setting a version preference by machine specific
overrides (maybe they can't?) or setting their compatibility variables.
I can see that this is an explicit statement of tested versus not
tested, versus something more implicit. But are there others ?

Cheers,

Bruce

>
> --
> Tom Rini
> Mentor Graphics Corporation
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

