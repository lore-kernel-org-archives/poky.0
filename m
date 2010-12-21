Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0641A4C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 21:24:18 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so4347318iwn.35
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 19:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=b1OKc5VLllc+d4Pt+5pribGRgdp9rlFVzQet+5uIMkE=;
	b=VduKBvHlQpmzZGcAYrmPbdolpSopqpoga/+bw3SjbQh6e+VKPwOr+P7tOhiIJKj1Ci
	7iI9+yPk363zG3tTj8TtR4dZLpsJwmAKtyH3VOMwzpsktNT45IEpeJrsfDT0x6nqFVvz
	scup9kUjIdYC2BbNmy3XS9twbE3mmJyD2KK+E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=OvdwvoD372nnL6eLuPnhLQV/1yJYL2LYM/EHLVG3oy35CcupNf+1sOF2TfYPSRbAm1
	6AoHf51xHfUODMCwIk7QfdCLoqTmvKALYxL6aDWqmEQPOeWTfwqLLY3xaf6cB9Nv+pIT
	fNhu0dNBX4jY/QZBPjAMOFUcfCrC5mbdIlRv4=
MIME-Version: 1.0
Received: by 10.231.31.139 with SMTP id y11mr4855177ibc.96.1292901858630; Mon,
	20 Dec 2010 19:24:18 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Mon, 20 Dec 2010 19:24:18 -0800 (PST)
In-Reply-To: <20101220211902.GB17904@gmail.com>
References: <4D07DAB8.3030504@linux.intel.com>
	<AANLkTikHHcSXRBu-z3dZHEHiQOnTZkJH9KtRHWpjsTiS@mail.gmail.com>
	<4D0F9D30.5040401@linux.intel.com>
	<20101220211902.GB17904@gmail.com>
Date: Mon, 20 Dec 2010 22:24:18 -0500
Message-ID: <AANLkTi=c=cqbA0+O8hYiUOssiOmCLvWMe1VbsgLoBCXo@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel type selection
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
X-List-Received-Date: Tue, 21 Dec 2010 03:24:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 20, 2010 at 4:19 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On (20/12/10 10:15), Darren Hart wrote:
>> On 12/19/2010 09:08 PM, Bruce Ashfield wrote:
>> >On Tue, Dec 14, 2010 at 3:59 PM, Darren Hart<dvhart@linux.intel.com> =
=A0wrote:
>> >>In developing new kernel recipes, I've run across some difficulty in
>> >>determining the ideal way to select one kernel recipe over another. Th=
e
>> >>machine configs specify the preferred provider. For the Linaro layer, =
I
>> >>setup new machine configs which specified the linux-linaro as the pref=
erred
>> >>kernel.
>> >
>> >kicking some life into this thread, I scanned it earlier, but was preoc=
cupied
>> >with getting .37 out and the SRCREV issues until now.
>> >
>> >I've had similar issues to this when working on the -stable versus -dev
>> >yocto trees. Since the preferred kernel is in the machine files, switch=
ing
>> >between -stable and -dev requires an update to the conf files, and if a
>> >machine prefers one kernel type, manually building one forces a wait
>> >through the preferred kernel first (not always what I wanted).
>> >
>> >>
>> >>As I'm working with preempt_rt, I'm running into this again. I could c=
reate
>> >>more machine configs, but this approach won't scale well (having to cr=
eate a
>> >>copy of all the supported machine configs just to change the preferred
>> >>kernel). I could set LINUX_KERNEL_TYPE=3D"preempt_rt" in my local.conf=
, but
>> >>that would reuse all the settings in the existing recipes (like
>> >>COMPATIBLE_MACHINES), all of which don't necessary apply to the new ke=
rnel
>> >>type.
>> >
>> >LINUX_KERNEL_TYPE_<machine>=3D"preempt_rt"
>> >
>> >Would be the way to put in your local conf and have it only impact
>> >a single machine. But now that I think of it, I haven't tried that in
>> >the local.conf, so someone can correct me if variable overrides don't
>> >work there.
>> >
>> >>
>> >>I've considered looking for a way to specify the kernel type in the ne=
w
>> >>image definitions (ie poky-image-rt) and creating new recipes for each
>> >>kernel type. I like the idea of one recipe per kernel type as this mak=
es
>> >>things more explicit and avoids contamination between the various kern=
el
>> >>types. This approach however seems to be at odds with the Poky way of =
doing
>> >>this which, as I understand it, would be to specify the provider in th=
e
>> >>machine config and any modifiers (like type) in the local.conf.
>> >
>> >I'd agree that cloning and adding more machine configs just to
>> >change kernel types will rapidly increase the count, and if we don't
>> >setup includes appropriately, could lead to errors.
>> >
>> >>
>> >>Can we get a discussion started here to determine some best practices?
>> >
>> >I'm not sure about best practices, but I had planned to tackle
>> >this in similar ways to what we've been using layers at Wind River to s=
olve this
>> >for the past several years.
>> >
>> >a) have a single recipe that switches the kernel type based on a
>> > =A0 =A0 variable being set. That's pretty much what you have above, bu=
t
>> > =A0 =A0 as we've discussed in the past, mux'ing through a single recip=
e
>> > =A0 =A0 that behaves differently based on configuration isn't always i=
n line
>> > =A0 =A0 with other recipes I've seen.
>> >b) make a -rt layer, that when included overrides the preferred kernel =
to
>> > =A0 =A0 preempt_rt. This is consistent with other layering schemes tha=
t trigger
>> > =A0 =A0 behaviour when you include a particular layer. The addition of=
 the layer
>> > =A0 =A0 is the indication that you want a specific configuration to ha=
ppen.
>> >c) put the preferred kernel in an include file, and make that include
>> > =A0 =A0 conditional on something that is set in the local environment.=
 This is
>> > =A0 =A0 pretty much what we'd do with the kernel type being set, so th=
ere's
>> > =A0 =A0 really not much different here.
>>
>> Taking a step back and thinking about this from a user's perspective.
>>
>> a.1) Edit local.conf
>> =A0 =A0 =A0 LINUX_KERNEL_TYPE_atom-pc=3D"preempt_rt"
>> =A0 =A0A tad arcane, but any habitual bitbake user shouldn't complain to=
o
>> =A0 =A0much. This assumes the only thing that needs to change for PREEMP=
T_RT
>> =A0 =A0is the kernel type, when, in fact, things like COMPATIBLE_MACHINE=
S
>> =A0 =A0should also change or the user is likely to run into strange erro=
rs
>> =A0 =A0if they try to build on an untested machine.
>>
>> a.2) Edit local.conf
>> =A0 =A0PREFERRED_PROVIDER_vitual/kernel_atom-pc-"linux-yocto-rt"
>> =A0 =A0Other than being slightly more arcane, this addresses the issues =
of
>> =A0 =A0the kernel type solution.
>>
>> b) Edit bblayers.conf
>> =A0 =A0/path/to/poky/meta-rt
>> =A0 =A0Fairly intuitive user-action. The machine.conf appends should lik=
ely
>> =A0 =A0follow a.2.
>>
>> c) pretty much the same as a)
>>
>> I still find the tying of PREEMPT_RT to the machine to be
>> non-intuitive, and the setting in the build conf to be too broad. It
>> applies to every image built for those machines. This makes adding rt
>> specific images a bit irregular since you could build them without
>> a preempt_rt kernel (or perhaps an RDEPENDS would prevent build) and
>> if the other settings are in place, selecting a non-rt image will result
>> in that image with a PREEMPT_RT kernel.
>>
>> In my opinion, the ideal user experience would be:
>>
>> $ bitbake poky-image-rt
>>
>> Which then reports:
>>
>> Error: $MACHINE does not have linux-yocto-rt support.
>>
>> or it successfully builds.
>>
>> The problem with this approach as I understand it, is the image
>> recipe is too far along in the bitbake process to be able to
>> influence the
>> kernel selected for the image.
>>
>> So we can either opt for b) which I see as the least of all evils, or we
>> can look into ways to enhance image recipes to be able to influence
>> PREFERRED_PROVIDER_virtual/kernel.
>>
>> Thoughts?
>
> How about making preemt_rt part of MACHINE_FEATURE or DISTRO_FEATURE
> and when chosen it uses the right kernel.

Hi Khem,

This would work as well, but takes us to the same place we are with
other options (and that's the sticky point), in that we need dedicated
machine conf files to specify the different kernel type.

We've got a variable that is specific to the yocto kernel recipes that
serves the purpose for now, and triggering it by the inclusion of a
meta-rt layer makes the selection the cleanest we've come up with
so far.

Again, this is a good idea, and if the recipe specific variable were to
be changed in the future, we could definitely use this to indicate the
kernel type to the recipes and make a decision based these variables.

And you never know, we may decide on some combination of all
the options! Thanks for adding more to the conversation.

Cheers,

Bruce

>
>>
>> --
>> Darren Hart
>> Yocto Linux Kernel
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

