Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BF83E00DB6; Fri, 18 Oct 2019 06:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F7FE00DAA
	for <poky@yoctoproject.org>; Fri, 18 Oct 2019 06:32:09 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id w6so4749701lfl.2
	for <poky@yoctoproject.org>; Fri, 18 Oct 2019 06:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=95d3x6kuWncdgqDzQDSOa/qwN7GSBMHoNeWWOSgbqgE=;
	b=r5OY+R/e4bpTDKrZb4BH4rQnh9MfB3YHjEMohnfLRnSxafgQentA9Qz5c+dbJ/HR2j
	Q+PxB+areuZ6o8evyMO5RtzXgAjAmOje64UKIHaGZ4EXtc9ue/DvXi6gkVnUPHfRPaJv
	xgCpuZq6wrGCUpZ9LC/C1uUfKJ4hFtBv9d6zkYX8lvYjpSegraTyjmnLNxB8NrN8WKxZ
	2KOvTQWVgVcc5EoEDeQLnQYy0QEKMMHlck9L17oji+ek2Ii/mwR605lFRf/knd9TLvMw
	LmRHUqq9ircx7F/dGJ6/rZFSTR2OIFyvKjjB4UhTJVfRMlv+dqZ8jjxN5aToet63fy5U
	JDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=95d3x6kuWncdgqDzQDSOa/qwN7GSBMHoNeWWOSgbqgE=;
	b=Of43u/jeX5e+RuvLXjyA7K78ZvCHiW2iXWMSD8hr9aubZq1/eCBQzRlM8kgMsXoJCN
	+dMrfdPdYJQimv1+HsFgDEXOhXO4Fl4eMqhjmZHdRDSMsuBZ772j+ivotcE9YK/EP3z3
	bqEfVZ6tJpZdwObI8hXmdkT0jqf15WojSGuq/wtVTPHuTbKrqlVte1ddoqoj0UMOons8
	tsvAiFwAKeVtX7lsgHXVVDuDE02StlyfuQsb87ifXn5X5vqWyLE/fgr6ABWtzQBQ+0iq
	vjNYMUktHOupOJ5w83iHlidBQdtshL8HcGvS2p+lS8teZ22BhFaYHjktlhJ8mj5Tj4Nh
	6Irw==
X-Gm-Message-State: APjAAAV63DPjNsYotxjWbBoq+V5BegATsBmo6ZdFBizRM2ja83Cj/CWT
	vTJ4kcrQWq6VRK0HvvbbYvHakpdC8ykjYv7ReWQ=
X-Google-Smtp-Source: APXvYqyl5vNestKQCrTuB8Ly3zl3sDACYjLCnQ4mb3X5Pbpy0ToIw9pNFqbErAO9YX+OkDrWd2pJ+maOnV+UVlPBZYY=
X-Received: by 2002:a19:4f0e:: with SMTP id d14mr6007877lfb.177.1571405528000; 
	Fri, 18 Oct 2019 06:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAWbAE3sO=mNCsELBcBf7PKi8YAZfAtKbuX2JAD_KSO3Sg@mail.gmail.com>
	<CADkTA4MF_Gf2hXL2nxj5z2UEudoJi+Pcwa0TEC1ziTXpY4LiKA@mail.gmail.com>
	<CAOe0dAXr187LUXECZZYANtex2d=ecAa1uBTLZ33gSTHZxwOy4A@mail.gmail.com>
In-Reply-To: <CAOe0dAXr187LUXECZZYANtex2d=ecAa1uBTLZ33gSTHZxwOy4A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 18 Oct 2019 09:31:56 -0400
Message-ID: <CADkTA4MPomQiHx13uH53Op_HjMWociFVdJAeG_6hCe_tK+CB_Q@mail.gmail.com>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [ Error ] Could not locate BSP definition witch custom machine.conf
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
X-List-Received-Date: Fri, 18 Oct 2019 13:33:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 18, 2019 at 3:06 AM AshishKumar Mishra
<ashish.emailaddress@gmail.com> wrote:
>
> Hi Bruce ,
>
> Can you please let me know which all file's you meant by  " BSP definition file"

It is the kernel's meta data that I'm talking about (the .scc and .cfg
files that make up how to patch and configure the BSP).
You can find details about the components in the Yocto mega manual (it
does a better job that I can do here).

Unless you've provided a .scc file that matches for the machine you
are building, the kernel configuration has no where to start when
looking for the standard set of configuration fragments.

Cheers,

Bruce

> I think i am missing some standard aspect here.
> I was considering  machine.conf file as BSP definition file .
>
> Going through the thread you asked , seems like i have to read a few times
> to get clear understanding of discussion there due my limited knowledge as of now.
>
> Thanks a lot for your valuable input , error seems to be resolved .
>
> Thanks
> Ashish
>
>
>
>
>
>
> On Fri, Oct 18, 2019 at 1:58 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>
>> On Thu, Oct 17, 2019 at 1:00 PM AshishKumar Mishra
>> <ashish.emailaddress@gmail.com> wrote:
>> >
>> > Hi Team ,
>> >
>> > (1) I am trying to understand yocto BSP creation for which i create an
>> >      machine.conf ( used qemux86.conf )
>> > PROMPT : ls conf/machine/armour-whiplash.conf
>> > conf/machine/armour-whiplash.conf
>> >
>> > (2) I made the changes in linux recipe file on lines of qemux86
>> > PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep armour*
>> > KBRANCH_armour-whiplash  ?= "v5.0/standard/base"
>> > SRCREV_machine_armour-whiplash ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
>> > COMPATIBLE_MACHINE = "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
>> > KERNEL_FEATURES_append_armour-whiplash=" cfg/sound.scc cfg/paravirt_kvm.scc"
>> >
>> > PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep qemux86
>> > KBRANCH_qemux86  ?= "v5.0/standard/base"
>> > SRCREV_machine_qemux86 ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
>> > COMPATIBLE_MACHINE = "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
>> > KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
>> >
>> >
>> > (3) When i compile the core-image i am getting below mentioned error
>> > ERROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0 do_kernel_metadata: Could not locate BSP definition for armour-whiplash/standard and no defconfig was provided
>> >
>>
>> You need to have a BSP definition file, which tells the kernel meta
>> data and configuration phases how to actually configure the board from
>> the collection of fragments.
>>
>> That error is telling you that you don't have a BSP definition file
>> that can be located by the tools.
>>
>> If you want to have your own machine name, but otherwise re-use the
>> qemux86 configuration, you can put: KMACHINE_armour-whiplash =
>> "qemux86", and the tools will use that as the starting point for
>> configuration.
>>
>> If you need to define your own BSP definition file, search for the
>> recent thread with this subject: "[yocto] Kernel patches pulled from
>> BSP definition file are not applied", and you'll see an example of how
>> to define one in your own layer.
>>
>> Bruce
>>
>> > Can team please provide any pointers on same as i checked that my layer has machine.conf (armour-whiplash.conf)
>> > but not sure why yocto gives error of no BSP
>> >
>> > Thanks
>> > Ashish
>> >
>> > --
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

