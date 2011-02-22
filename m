Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4747D4C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 23:49:57 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1M5nrTo020253
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 21 Feb 2011 21:49:53 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.127) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 21 Feb 2011 21:49:53 -0800
Message-ID: <4D634E7E.3080700@windriver.com>
Date: Tue, 22 Feb 2011 00:49:50 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.14) Gecko/20110207 Thunderbird/3.1.8
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>	<AANLkTin8CLU7Ok4C8Gd2i=a52qMyBBaSYGCW-Ch=M2p7@mail.gmail.com>	<4D632F9E.1010404@intel.com>	<AANLkTim56_wFDy8mQu4nSNsz1gDkPrka7OEGqB+-6-9P@mail.gmail.com>
	<4D634C78.1000508@intel.com>
In-Reply-To: <4D634C78.1000508@intel.com>
X-Originating-IP: [128.224.20.127]
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
X-List-Received-Date: Tue, 22 Feb 2011 05:49:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-22 12:41 AM, Zhai, Edwin wrote:
>
>
> Bruce Ashfield wrote:
>>
>> On Mon, Feb 21, 2011 at 10:38 PM, Zhai, Edwin <edwin.zhai@intel.com>
>> wrote:
>> >
>> >
>> > Bruce Ashfield wrote:
>> >>
>> >> On Mon, Feb 21, 2011 at 9:06 PM, Zhai Edwin <edwin.zhai@intel.com>
>> wrote:
>> >> > From: Zhai Edwin <edwin.zhai@intel.com>
>> >> >
>> >> > On qemux86, export ac97 & es1370 emulated device to guest, and
>> enable
>> >> > host oss&alsa
>> >> > driver. So end user can get sound from qemux86 guest if the sound
>> card
>> >> > driver installed.
>> >>
>> >> I presume that you tested the sound, if you send me the working
>> .config
>> >> (or better a config fragement), I'll update the base configs for
>> the qemu*
>> >> platforms to at least build and make the modules available.
>> >>
>> >
>> > Bruce,
>> > I have tested a ubuntu disk image and heard the sound. What's the
>> simple way
>> > to change the kernel config for test?
>>
>> Aha. Maybe I misunderstood. Did you need to change our qemu target
>> kernel configuration to hear the sound ?
>>
>
> Yes, I mean qemux86/x86_64 target kernel config, so that target kernel
> can use emulated sound card device to make some noise on host:)

I just noticed the bugs that were assigned to me for this,
I'll update the bugzilla cases with the information on how
to modify the configuration.

>
> I know there is something tricky to change the qemu target config as
> some internal tools are used. Last time, I hacked to add one extra
> config file including all changed entries. But forget it now:(

Luckily it isn't all that tricky anymore. If you create any
file with ".cfg" as the extension that contains a series
of kernel configuration values and add it to the SRC_URI
in the same manner as any patch/defconfig, you've done most
of the work to modifying the kernel configuration.  The contents
of that .cfg file will be added to the end of the kernel
configuration and applied to the kernel build.

Those changes can then be sent for merging into the kernel
repository as default values for the BSP in question.

>
> What's your suggestion for our kernel user to hack the config?

See above. Start with a .cfg file, and then when you are happy
with the configuration changes, you can either modify the
'meta' branch directly or simply send the .cfg file to me in a
pull request and I'll apply it to the meta branch and merge it
into the repository as the default for the BSP in question.'

If you search the mailing list for email from TomZ about the
intel BSPs, you'll have some good examples on how to modify the
meta branch directly (if you are interested).

Let me know if you need more details and I'd be more than
happy to help out here! In particular if the documentation in
or kernel/BSP guides isn't sufficient to help here, we should
definitely improve it.

Cheers,

Bruce

>
>> If not, then this is a host side
>> configuration item and we don't need to change the BSP configuration
>> at all to enable sound!
>>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Thanks,
>> > edwin
>> >
>> >
>> >> Looks good BTW!
>> >>
>> >> Bruce
>> >>
>> >> >
>> >> > [BUGID #488] got fixed.
>> >> >
>> >> > Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
>> >> > ---
>> >> > meta/recipes-devtools/qemu/qemu.inc | 2 +-
>> >> > scripts/poky-qemu | 7 +++++++
>> >> > 2 files changed, 8 insertions(+), 1 deletions(-)
>> >> >
>> >> > diff --git a/meta/recipes-devtools/qemu/qemu.inc
>> >> > b/meta/recipes-devtools/qemu/qemu.inc
>> >> > index 33c2c71..2c6b114 100644
>> >> > --- a/meta/recipes-devtools/qemu/qemu.inc
>> >> > +++ b/meta/recipes-devtools/qemu/qemu.inc
>> >> > @@ -3,7 +3,7 @@ HOMEPAGE = "http://qemu.org"
>> >> > LICENSE = "GPLv2 & LGPLv2.1"
>> >> > DEPENDS = "zlib"
>> >> >
>> >> > -EXTRA_OECONF =
>> >> >
>> "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user
>>
>>
>> >> > --disable-werror --disable-vnc-tls --enable-kvm"
>> >>
>> >> > +EXTRA_OECONF =
>> >> >
>> "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user
>>
>>
>> >> > --disable-werror --disable-vnc-tls --enable-kvm
>> --audio-drv-list=oss,alsa
>> >> > --audio-card-list=ac97,es1370"
>> >>
>> >> > #EXTRA_OECONF += "--disable-sdl"
>> >> >
>> >> > inherit autotools
>> >> > diff --git a/scripts/poky-qemu b/scripts/poky-qemu
>> >> > index b19a89d..cb08f27 100755
>> >> > --- a/scripts/poky-qemu
>> >> > +++ b/scripts/poky-qemu
>> >> > @@ -129,6 +129,13 @@ while [ $i -le $# ]; do
>> >> > SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -serial stdio"
>> >> > SCRIPT_KERNEL_OPT="$SCRIPT_KERNEL_OPT console=ttyS0"
>> >> > ;;
>> >> > + "audio")
>> >> > + if [[ "x$MACHINE" == "xqemux86" || "x$MACHINE" ==
>> >> > "xqemux86-64" ]]; then
>> >> > + echo "Enable audio on qemu. Pls. install snd_intel8x0
>> >> > or snd_ens1370 driver in linux guest.";
>> >> > + QEMU_AUDIO_DRV="alsa"
>> >> > + SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -soundhw ac97,es1370"
>> >> > + fi
>> >> > + ;;
>> >> > "kvm")
>> >> > KVM_ENABLED="yes"
>> >> > KVM_CAPABLE=`grep 'vmx\|smx' /proc/cpuinfo`
>> >> > --
>> >> > 1.6.3.3
>> >> >
>> >> > _______________________________________________
>> >> > poky mailing list
>> >> > poky@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/poky
>> >> >
>> >>
>> >>
>> >>
>> >> --
>> >> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> >> thee at its end"
>> >>
>> >
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


