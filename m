Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D4D14C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 23:11:46 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2392267iwr.35
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 21:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=BJwSEJIVtbBiVSvMCFa9cXxjQNbDa6Xl/uzFOVKXKoM=;
	b=dl7vM2Sd1zH4Q+/WimPNpGeAAcrjndF42J2QPHrqL0xkA6pxAKvkQO15iSJwDjOvmU
	BYuX2fqVt36rRh44r0dwJ7d4ghmJrVXyU4TyVzEek4CH7WOJh/AqE2qjy0VjiQGoLG5+
	VFB/JPtOWBBEt9l3Yx/msvUa9GgnWF+NciGKk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=kwjT9PzDSNoUG8WsZDlOT+USII7wzfXf4ptVgb4V6U6HLm8Q5bnrT7TP/IXi6lNOgN
	HOWV7kxnmDgY0X/cBiLs4D7VhDIQ3xFjOHGL7fXYVaEEidHoxYLi8ai82XFyWHwMWj8E
	pWLVOA9vKe7JWXaOamQksWS5rXVDxhYyhoMuA=
MIME-Version: 1.0
Received: by 10.231.39.76 with SMTP id f12mr1679315ibe.126.1298351505202; Mon,
	21 Feb 2011 21:11:45 -0800 (PST)
Received: by 10.231.160.79 with HTTP; Mon, 21 Feb 2011 21:11:45 -0800 (PST)
In-Reply-To: <4D632F9E.1010404@intel.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>
	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
	<AANLkTin8CLU7Ok4C8Gd2i=a52qMyBBaSYGCW-Ch=M2p7@mail.gmail.com>
	<4D632F9E.1010404@intel.com>
Date: Tue, 22 Feb 2011 00:11:45 -0500
Message-ID: <AANLkTim56_wFDy8mQu4nSNsz1gDkPrka7OEGqB+-6-9P@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 05:11:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 21, 2011 at 10:38 PM, Zhai, Edwin <edwin.zhai@intel.com> wrote:
>
>
> Bruce Ashfield wrote:
>>
>> On Mon, Feb 21, 2011 at 9:06 PM, Zhai Edwin <edwin.zhai@intel.com> wrote=
:
>> > From: Zhai Edwin <edwin.zhai@intel.com>
>> >
>> > On qemux86, export ac97 & es1370 emulated device to guest, and enable
>> > host oss&alsa
>> > driver. So end user can get sound from qemux86 guest if the sound card
>> > driver installed.
>>
>> I presume that you tested the sound, if you send me the working .config
>> (or better a config fragement), I'll update the base configs for the qem=
u*
>> platforms to at least build and make the modules available.
>>
>
> Bruce,
> I have tested a ubuntu disk image and heard the sound. What's the simple =
way
> to change the kernel config for test?

Aha. Maybe I misunderstood. Did you need to change our qemu target
kernel configuration to hear the sound ? If not, then this is a host side
configuration item and we don't need to change the BSP configuration
at all to enable sound!

Cheers,

Bruce

>
> Thanks,
> edwin
>
>
>> Looks good BTW!
>>
>> Bruce
>>
>> >
>> > [BUGID #488] got fixed.
>> >
>> > Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
>> > ---
>> > =A0meta/recipes-devtools/qemu/qemu.inc | =A0 =A02 +-
>> > =A0scripts/poky-qemu =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A07 ++=
+++++
>> > =A02 files changed, 8 insertions(+), 1 deletions(-)
>> >
>> > diff --git a/meta/recipes-devtools/qemu/qemu.inc
>> > b/meta/recipes-devtools/qemu/qemu.inc
>> > index 33c2c71..2c6b114 100644
>> > --- a/meta/recipes-devtools/qemu/qemu.inc
>> > +++ b/meta/recipes-devtools/qemu/qemu.inc
>> > @@ -3,7 +3,7 @@ HOMEPAGE =3D "http://qemu.org"
>> > =A0LICENSE =3D "GPLv2 & LGPLv2.1"
>> > =A0DEPENDS =3D "zlib"
>> >
>> > -EXTRA_OECONF =3D
>> > "--target-list=3Darm-linux-user,arm-softmmu,i386-linux-user,i386-softm=
mu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-=
user,ppc-softmmu,mipsel-linux-user
>> > --disable-werror --disable-vnc-tls --enable-kvm"
>>
>> > +EXTRA_OECONF =3D
>> > "--target-list=3Darm-linux-user,arm-softmmu,i386-linux-user,i386-softm=
mu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-=
user,ppc-softmmu,mipsel-linux-user
>> > --disable-werror --disable-vnc-tls --enable-kvm --audio-drv-list=3Doss=
,alsa
>> > --audio-card-list=3Dac97,es1370"
>>
>> > =A0#EXTRA_OECONF +=3D "--disable-sdl"
>> >
>> > =A0inherit autotools
>> > diff --git a/scripts/poky-qemu b/scripts/poky-qemu
>> > index b19a89d..cb08f27 100755
>> > --- a/scripts/poky-qemu
>> > +++ b/scripts/poky-qemu
>> > @@ -129,6 +129,13 @@ while [ $i -le $# ]; do
>> > =A0 =A0 =A0 =A0 =A0 =A0 SCRIPT_QEMU_OPT=3D"$SCRIPT_QEMU_OPT -serial st=
dio"
>> > =A0 =A0 =A0 =A0 =A0 =A0 SCRIPT_KERNEL_OPT=3D"$SCRIPT_KERNEL_OPT consol=
e=3DttyS0"
>> > =A0 =A0 =A0 =A0 =A0 =A0 ;;
>> > + =A0 =A0 =A0 =A0"audio")
>> > + =A0 =A0 =A0 =A0 =A0 =A0if [[ "x$MACHINE" =3D=3D "xqemux86" || "x$MAC=
HINE" =3D=3D
>> > "xqemux86-64" ]]; then
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "Enable audio on qemu. Pls. inst=
all snd_intel8x0
>> > or snd_ens1370 driver in linux guest.";
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0QEMU_AUDIO_DRV=3D"alsa"
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0SCRIPT_QEMU_OPT=3D"$SCRIPT_QEMU_OPT -=
soundhw ac97,es1370"
>> > + =A0 =A0 =A0 =A0 =A0 =A0fi
>> > + =A0 =A0 =A0 =A0 =A0 =A0;;
>> > =A0 =A0 =A0 =A0 "kvm")
>> > =A0 =A0 =A0 =A0 =A0 =A0 KVM_ENABLED=3D"yes"
>> > =A0 =A0 =A0 =A0 =A0 =A0 KVM_CAPABLE=3D`grep 'vmx\|smx' /proc/cpuinfo`
>> > --
>> > 1.6.3.3
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

