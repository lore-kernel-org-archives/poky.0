Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3BC9E00952; Sun, 22 Mar 2015 22:24:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 590FBE00949
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:24:06 -0700 (PDT)
Received: by ieclw3 with SMTP id lw3so27992257iec.2
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OoPeO88JMPoyTRro5KiJqetZgJcJkxjSEwIbA6nIgsg=;
	b=iSH8mgryaTXguiYQ5kqNvksZv2f3JrYlRwulmLKA19f8MCVAC9Sb4rrT3qqCpKpYvJ
	UmfZ77kM9lvQ4mnr46bF/f+4a2tvRQ07hG3y0Gj2L0W1PPD0kRBMYkXwGLUnp9DDiFfe
	ogx2vlfmDtR+tAFbRkNFvprrVTLpXUKbdXBqjSkkdyduQXrOMdSrGi6ChAIX3WBhAqmw
	Kuz4Fsflm4PVY2ouZKkIP3FTaAYq4WKD7GnhBLfSr9qJz4kSVprbSSHOb2Nrj2i//SXE
	x1SDypkrRqb3IBkrLRSFfKpn2K3ACL9wgvZquFrP/NmewyHNSiW1ps955ylC3TFNYqwu
	GgiQ==
X-Received: by 10.107.11.226 with SMTP id 95mr66149232iol.5.1427088245661;
	Sun, 22 Mar 2015 22:24:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Sun, 22 Mar 2015 22:23:35 -0700 (PDT)
In-Reply-To: <550FA1F7.2070708@gmail.com>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
	<550FA1F7.2070708@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 22 Mar 2015 22:23:35 -0700
Message-ID: <CAMKF1sopHXanf5QruVzE1YuPJJ_nGFZrAMhXhWQZs90+yeYi4Q@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Mar 2015 05:24:10 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 22, 2015 at 10:17 PM, akuster808 <akuster808@gmail.com> wrote:
> On 3/22/15 9:24 PM, Tom Zanussi wrote:
>> This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
>> 3.10 and 3.17 support).
>
> Isn't 3.18 the new LTS  so why 3.19?

thats right.

>
> or replacing 3.17 with 3.19 would make sense.

Well one latest release is reasonable so 3.19 falls into that but I
would think 3.18 should be there
even if it means 3.14 is dropped

>
>
> - Armin
>
>
>>
>> BSPs were generated and build and boot-tested using core-image-sato
>> for all the qemu targets, and BSPs were generated and build-tested
>> using core-image-sato for all the non-qemu targets as well.
>>
>> Important variants such as using old branches, older kernels and
>> custom kernels were also build and boot-tested.
>>
>> The following changes since commit 0308f3101b93035ebf564a33acb00adaac108033:
>>
>>   bitbake: knotty.py: fix indent (2015-03-19 14:20:14 +0000)
>>
>> are available in the git repository at:
>>
>>   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-1.8-updates
>>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-1.8-updates
>>
>> Tom Zanussi (1):
>>   yocto-bsp: Update templates to 3.19 kernel
>>
>>  .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>  .../target/arch/i386/conf/machine/machine.conf     |  4 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  8 +--
>>  .../linux/linux-yocto_3.19.bbappend}               |  8 +--
>>  .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  .../linux/linux-yocto_3.19.bbappend}               |  4 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 62 ----------------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 62 ----------------------
>>  ...3.4.bbappend => linux-yocto-tiny_3.14.bbappend} |  2 +-
>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 62 ----------------------
>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>  48 files changed, 114 insertions(+), 894 deletions(-)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/{powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend => mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend} (89%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>>  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/{mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend => powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend} (94%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.4.bbappend => linux-yocto-tiny_3.14.bbappend} (99%)
>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (99%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (98%)
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>>  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>  rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

