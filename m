Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60614E0097C; Thu, 17 Oct 2019 13:28:10 -0700 (PDT)
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
	*      [209.85.167.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6A5E0097C
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 13:28:09 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id r22so2945001lfm.1
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 13:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6rYb0GoTvs1eoxB475DmTEFFVACvnwhPH4cUJELWACo=;
	b=nodvD0369VwbC7axJ+poW8/HP+caLlnKG6Vpf1RJ4Ehu2UzxgdF/MTShdOv4H/kaaJ
	RRqs1DF9sFrvbJ15RlN1IT7zho69BJUchakvIQDAGUqYKGNQUm7QF4sti8RyB6GRSuCV
	/JJHR6Q9t2bnBofHNpIeUInDg9WHtbIUF20FPdi0eLZFJw2wt20E78lBWKvS9K97Vvyd
	JdLhpOTGhTsTsGdzWE8F77NjQy0EeLhf5aYlhaXyQwdANNyjAEVecF2ZhB5cfa9Jz0wr
	Wuq7lcoyEWyu1u1xF61YYDX5Q9N+hSAIGvVuR8uHCw91pE45FIdYvCwBdvAQ49nWPt+k
	EHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6rYb0GoTvs1eoxB475DmTEFFVACvnwhPH4cUJELWACo=;
	b=sAQ2nvu4rUKZ4hQzh5eMU/MWfdbv1YfSPYaNnCOfnNLnxr4M7KVjVOskjMnItaEImm
	F8Qn/Ri46tOzBoxdtd8sKFfiLWI3UR2wfJaAmF85s6xK0SHbs92FwSj8VQ4fWQEznRWd
	nDmtlUmNshLry7GMxCuxuBPE81p3W6qJfAff/c8wgfDzVIcKUjJRN0AW8SN/zEAAGxkS
	NaZl0okLTAKOCBlOdS3WvtZ03TiSBKoTUyTl0R/oAsO1B5W/rdXovPM7BD7fLkwi7l1t
	CsasMOJpzsxwxzZR4TJ7+R/xWtCelA0Z36Cs7qvJrox46WqVDy3bncuPWkheFL1EA+tZ
	pWkg==
X-Gm-Message-State: APjAAAV5YmlocyRPCy+12WeO889Gsf4s8c5M8leTYH//ES/dH8FWLrZE
	fcEMYh6Wbadqs+6XOviZMh+OFmXg8EZGwNNNZPZLwED/o1Oxpw==
X-Google-Smtp-Source: APXvYqzzYUTdfc0JOW64Jv/i7Ih+JY4gB4y0QBbmYPFd4uW8lS1/cCTfArYRiAHkBXqfonfDylRyIAmxQ6dT2DhqCA0=
X-Received: by 2002:a19:ac04:: with SMTP id g4mr3601829lfc.63.1571344088180;
	Thu, 17 Oct 2019 13:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAWbAE3sO=mNCsELBcBf7PKi8YAZfAtKbuX2JAD_KSO3Sg@mail.gmail.com>
In-Reply-To: <CAOe0dAWbAE3sO=mNCsELBcBf7PKi8YAZfAtKbuX2JAD_KSO3Sg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 17 Oct 2019 16:27:57 -0400
Message-ID: <CADkTA4MF_Gf2hXL2nxj5z2UEudoJi+Pcwa0TEC1ziTXpY4LiKA@mail.gmail.com>
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
X-List-Received-Date: Thu, 17 Oct 2019 20:28:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 17, 2019 at 1:00 PM AshishKumar Mishra
<ashish.emailaddress@gmail.com> wrote:
>
> Hi Team ,
>
> (1) I am trying to understand yocto BSP creation for which i create an
>      machine.conf ( used qemux86.conf )
> PROMPT : ls conf/machine/armour-whiplash.conf
> conf/machine/armour-whiplash.conf
>
> (2) I made the changes in linux recipe file on lines of qemux86
> PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep armour*
> KBRANCH_armour-whiplash  ?= "v5.0/standard/base"
> SRCREV_machine_armour-whiplash ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
> COMPATIBLE_MACHINE = "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
> KERNEL_FEATURES_append_armour-whiplash=" cfg/sound.scc cfg/paravirt_kvm.scc"
>
> PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep qemux86
> KBRANCH_qemux86  ?= "v5.0/standard/base"
> SRCREV_machine_qemux86 ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
> COMPATIBLE_MACHINE = "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
> KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
>
>
> (3) When i compile the core-image i am getting below mentioned error
> ERROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0 do_kernel_metadata: Could not locate BSP definition for armour-whiplash/standard and no defconfig was provided
>

You need to have a BSP definition file, which tells the kernel meta
data and configuration phases how to actually configure the board from
the collection of fragments.

That error is telling you that you don't have a BSP definition file
that can be located by the tools.

If you want to have your own machine name, but otherwise re-use the
qemux86 configuration, you can put: KMACHINE_armour-whiplash =
"qemux86", and the tools will use that as the starting point for
configuration.

If you need to define your own BSP definition file, search for the
recent thread with this subject: "[yocto] Kernel patches pulled from
BSP definition file are not applied", and you'll see an example of how
to define one in your own layer.

Bruce

> Can team please provide any pointers on same as i checked that my layer has machine.conf (armour-whiplash.conf)
> but not sure why yocto gives error of no BSP
>
> Thanks
> Ashish
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

