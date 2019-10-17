Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D3C6E00BE2; Thu, 17 Oct 2019 09:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC35E0098A
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 09:59:36 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id t5so2718483ilh.10
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 09:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v5cr7vqKlt6sQXCqCQ0Vsrc9HnwbSwoeFOh/t9asej8=;
	b=FYNYI420LE/zPGkcK452PVP4BP75PDAeNSDS6nuavoWUaU3ogwQmNA2S8/o8o3o/hQ
	NV8tgPuYyhi0lDWvMd/QrzgrT1waw4ZhbiFzd0bHuCUWZueYLv9UXgqyNwlCqsYeiC/N
	yzD3DGCzWtO1+qvU1VcdtqBgE4nOdeU1yzcmujdQQz0VcUUyU57kJbblvcz/lBsq3Iot
	cMmyjGjSOPQdkEVRLDCZ4ql9mZUWs/sI648T3Gkr1T36azZx8qaFUgEgtzRjHNXv7MHy
	5kyWH220PcFAeE4cyQV+q8dYrmpHO9OSmzXGADzjqWr5oQaGmNLFINZjEgVO18Ae/YkQ
	godg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v5cr7vqKlt6sQXCqCQ0Vsrc9HnwbSwoeFOh/t9asej8=;
	b=Mouv+0F79lzRpXGrIJPOeUXfVYnPnYf7qdX159Qlrix49qAFP2jKCX2oQ/x3xq0zBj
	2HTWRj97HeKo/1Y3dmIXIJePfX9vcdxndSeFsvX6mvX75eC41UFfH8xfuHNkh5sM5CWw
	wB8LCTro3GAIaXtjVXzdnBzCHYGqm6nW1BpkzDhpLuYpFBgeBVi9vGPCdcnFlSt4/Qq4
	Yih6YxZ3DvGmK6gsUDmOPZ9WWT8wB+0I077tcMBEVpQNCaNXsUXL6rqQTWCMUtiGAqkJ
	Q6ln4GaYdX5fxraGh4dTxfHQ6LpmBWb9l3M4f6WLvdryL23ihMa1CkhOlGPBP3eCQEcq
	Q/VQ==
X-Gm-Message-State: APjAAAWE3ZUZgWsAgbvi97+sYjdKForNQY/G9XmycPAloWSrJYDUM0eR
	MxSHbvRmC6CiUUjrm4QfT+WPzhhRPt99gnQ1jCPndKSG
X-Google-Smtp-Source: APXvYqw9ENjzWRA9VFaP39oE6ASMrYRLSW0cQ2BZbXyD7mMjo4nRv142smNwqTL6MVn4pgaB5xoHdSm+mYEsNionZv8=
X-Received: by 2002:a92:ab08:: with SMTP id v8mr4954854ilh.171.1571331575630; 
	Thu, 17 Oct 2019 09:59:35 -0700 (PDT)
MIME-Version: 1.0
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Thu, 17 Oct 2019 22:29:23 +0530
Message-ID: <CAOe0dAWbAE3sO=mNCsELBcBf7PKi8YAZfAtKbuX2JAD_KSO3Sg@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: [ Error ] Could not locate BSP definition witch custom machine.conf
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
X-List-Received-Date: Thu, 17 Oct 2019 16:59:38 -0000
Content-Type: multipart/alternative; boundary="00000000000063d0a105951e24a7"

--00000000000063d0a105951e24a7
Content-Type: text/plain; charset="UTF-8"

Hi Team ,

(1) I am trying to understand yocto BSP creation for which i create an
     machine.conf ( used qemux86.conf )
PROMPT : ls conf/machine/armour-whiplash.conf
conf/machine/armour-whiplash.conf

(2) I made the changes in linux recipe file on lines of qemux86
PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep armour*
KBRANCH_armour-whiplash  ?= "v5.0/standard/base"
SRCREV_machine_armour-whiplash ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
COMPATIBLE_MACHINE =
"qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
KERNEL_FEATURES_append_armour-whiplash=" cfg/sound.scc cfg/paravirt_kvm.scc"

PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep qemux86
KBRANCH_qemux86  ?= "v5.0/standard/base"
SRCREV_machine_qemux86 ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
COMPATIBLE_MACHINE =
"qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"


(3) When i compile the core-image i am getting below mentioned error

*ERROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0
do_kernel_metadata: Could not locate BSP definition for
armour-whiplash/standard and no defconfig was provided*

Can team please provide any pointers on same as i checked that my layer has
machine.conf (armour-whiplash.conf)
but not sure why yocto gives error of no BSP

Thanks
Ashish

--00000000000063d0a105951e24a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Team , <br></div><div><br></div><div>(1) I am tryi=
ng to understand yocto BSP creation for which i create an <br></div><div>=
=C2=A0=C2=A0=C2=A0=C2=A0 machine.conf ( used qemux86.conf ) <br></div><div>=
PROMPT : ls conf/machine/armour-whiplash.conf <br>conf/machine/armour-whipl=
ash.conf</div><div><br></div><div>(2) I made the changes in linux recipe fi=
le on lines of qemux86</div><div>PROMPT : cat recipes-kernel/linux/<a href=
=3D"http://linux-yocto_5.0.bb">linux-yocto_5.0.bb</a> | grep armour*<br>KBR=
ANCH_armour-whiplash =C2=A0?=3D &quot;v5.0/standard/base&quot;<br>SRCREV_ma=
chine_armour-whiplash ?=3D &quot;14b6c1fc020fa357245e9ac9c6c69d253bc7ce30&q=
uot;<br>COMPATIBLE_MACHINE =3D &quot;qemuarm|qemuarmv5|qemuarm64|qemux86|qe=
muppc|qemumips|qemumips64|qemux86-64|armour-whiplash&quot;<br>KERNEL_FEATUR=
ES_append_armour-whiplash=3D&quot; cfg/sound.scc cfg/paravirt_kvm.scc&quot;=
<br><br>PROMPT : cat recipes-kernel/linux/<a href=3D"http://linux-yocto_5.0=
.bb">linux-yocto_5.0.bb</a> | grep qemux86<br>KBRANCH_qemux86 =C2=A0?=3D &q=
uot;v5.0/standard/base&quot;<br>SRCREV_machine_qemux86 ?=3D &quot;14b6c1fc0=
20fa357245e9ac9c6c69d253bc7ce30&quot;<br>COMPATIBLE_MACHINE =3D &quot;qemua=
rm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armou=
r-whiplash&quot;<br>KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound.scc c=
fg/paravirt_kvm.scc&quot;</div><div><br></div><div><br></div><div>(3) When =
i compile the core-image i am getting below mentioned error</div><div><b>ER=
ROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0 do_kernel_metada=
ta: Could not locate BSP definition for armour-whiplash/standard and no def=
config was provided<br></b></div><div><br></div><div>Can team please provid=
e any pointers on same as i checked that my layer has machine.conf (armour-=
whiplash.conf) <br></div><div>but not sure why yocto gives error of no BSP =
<br></div><div><br></div><div>Thanks <br></div><div>Ashish<br></div><div><b=
r></div></div>

--00000000000063d0a105951e24a7--
