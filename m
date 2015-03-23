Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DD47E0094C; Mon, 23 Mar 2015 05:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC150E00757
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 05:09:11 -0700 (PDT)
Received: by lbcmq2 with SMTP id mq2so6462998lbc.0
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 05:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xM1eTXQADoMaACFtE5GBW+WKhEMq/TOZgtRo8kt8V8o=;
	b=wDUNOKNZSMuJEKlF6is5XIkSonq5HLHnaGyWtIDoXqWtZ269R3PnrWqIqL8aBqHdVn
	pMjflEmvPtlXDTExAospsuvEuD8LxUJ/rTgZQqACVx3UVeBf2vggYTr9X3EG2uhqY8OU
	Or0PrNMI10YceSk95MqFCqndEcZPj9IhPFrflxzX4Q+pqKwtJ6kLFOck6l4ZP/rD4pO4
	GByl3/y21XMvhDA0GrHZVpRIZJLnaBFMiQLnDSuKS0EOvAfM+gu+riKLo1GeYtji8b55
	ccZvMrs2kksj3tOE0VgaimS66JBpeYfFRdw887pzopELMzEFukfBv/A+MY90SmQravuY
	HHfg==
MIME-Version: 1.0
X-Received: by 10.112.239.1 with SMTP id vo1mr83803297lbc.110.1427112549859;
	Mon, 23 Mar 2015 05:09:09 -0700 (PDT)
Received: by 10.112.170.70 with HTTP; Mon, 23 Mar 2015 05:09:09 -0700 (PDT)
In-Reply-To: <CAMKF1sopHXanf5QruVzE1YuPJJ_nGFZrAMhXhWQZs90+yeYi4Q@mail.gmail.com>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
	<550FA1F7.2070708@gmail.com>
	<CAMKF1sopHXanf5QruVzE1YuPJJ_nGFZrAMhXhWQZs90+yeYi4Q@mail.gmail.com>
Date: Mon, 23 Mar 2015 08:09:09 -0400
Message-ID: <CADkTA4OuSzJjh9J-gCtD4=NoXbfaCRdZBg8kztc-HU9YapiPbA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Mon, 23 Mar 2015 12:09:17 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 23, 2015 at 1:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sun, Mar 22, 2015 at 10:17 PM, akuster808 <akuster808@gmail.com> wrote:
>> On 3/22/15 9:24 PM, Tom Zanussi wrote:
>>> This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
>>> 3.10 and 3.17 support).
>>
>> Isn't 3.18 the new LTS  so why 3.19?
>
> thats right.

LTSI, not LTS.

3.14 is the latest LTSI, and 3.19 is the latest kernel. Those are the two + dev
that we are using for the upcoming release.

Cheers,

Bruce

>
>>
>> or replacing 3.17 with 3.19 would make sense.
>
> Well one latest release is reasonable so 3.19 falls into that but I
> would think 3.18 should be there
> even if it means 3.14 is dropped
>
>>
>>
>> - Armin
>>
>>
>>>
>>> BSPs were generated and build and boot-tested using core-image-sato
>>> for all the qemu targets, and BSPs were generated and build-tested
>>> using core-image-sato for all the non-qemu targets as well.
>>>
>>> Important variants such as using old branches, older kernels and
>>> custom kernels were also build and boot-tested.
>>>
>>> The following changes since commit 0308f3101b93035ebf564a33acb00adaac108033:
>>>
>>>   bitbake: knotty.py: fix indent (2015-03-19 14:20:14 +0000)
>>>
>>> are available in the git repository at:
>>>
>>>   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-1.8-updates
>>>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-1.8-updates
>>>
>>> Tom Zanussi (1):
>>>   yocto-bsp: Update templates to 3.19 kernel
>>>
>>>  .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>>  .../target/arch/i386/conf/machine/machine.conf     |  4 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  8 +--
>>>  .../linux/linux-yocto_3.19.bbappend}               |  8 +--
>>>  .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  .../linux/linux-yocto_3.19.bbappend}               |  4 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 62 ----------------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 62 ----------------------
>>>  ...3.4.bbappend => linux-yocto-tiny_3.14.bbappend} |  2 +-
>>>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 62 ----------------------
>>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>>>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>>>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>>>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>>>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>>>  48 files changed, 114 insertions(+), 894 deletions(-)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/{powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend => mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend} (89%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>>>  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/{mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend => powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend} (94%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.4.bbappend => linux-yocto-tiny_3.14.bbappend} (99%)
>>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (99%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (98%)
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>>>  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>>>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>>>  rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>>>
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

