Return-Path: <tamtamis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 852E3E00C5B; Tue,  6 Dec 2016 00:41:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tamtamis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA8B1E00C41
	for <poky@yoctoproject.org>; Tue,  6 Dec 2016 00:41:42 -0800 (PST)
Received: by mail-ua0-f172.google.com with SMTP id b35so374221784uaa.3
	for <poky@yoctoproject.org>; Tue, 06 Dec 2016 00:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=cyb18DRgJCPPAYMzbWf5ZLYqZ2PdBIfRm9lId4CfkmA=;
	b=HzyLpDI4NjlXZ/gqaiMW24/pHOg6vipB2p6gADN+lRnKEEB67zAXPqHPDNkyCADNFC
	2SFTCTAlFbbUmkuhyTdHSC9qVSmv7gK3ykDKKVJRKmdAwI4j9ZVEM613ScjdcDCfV+qE
	W/nztMr9L867nRgJTKt4F1TYPE2D2MGwbKGc/b1+ZMzVqJqOkinzcs+Ue0gc5LkKpWh+
	8N6VPlPUGmXsITlFZobIIPflFqbU8AWQKavExWKBEkWVInqDXLsFKxsst83Oovf1W/yL
	cy6crLQ3jgoPPDFr41rvpcNjNowZEBqpvkMMP6u8nnFGQp8COJpMywiuINDnGgi30tkL
	vJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cyb18DRgJCPPAYMzbWf5ZLYqZ2PdBIfRm9lId4CfkmA=;
	b=DGEPC3mOWMauT1v0Q4O3VfwnMBaCPda6Ah5LjwP1/E8o2BZJtqgL1iJpO5Y17lAVha
	jJ1a+10E8FvE9OyTOS1cvkNJQE9o58sPe+n+syyynT7O6a+yjWeaWvml5tSOo5mNFQgL
	ZqiUlVnIDpfeuySpH9fuiLIoZkwm2aWztgP9nhgTzdgYdotQ3++oIYnwZI0ShGQWEOrY
	tW300Okgn1RlUw4xKwuj5Y+Sp0Ijt8PgVvBjulnqqgm2eWCp0KFhDpRwxtgROTK/qmU0
	ZGT1pq3agUt2eaXkBvLk80yOva6RkX29X7SlQPKVgDM+l7ZAHl+1hJVlI7saxR3qaLki
	g5PQ==
X-Gm-Message-State: AKaTC00OSspxTTXS0fskoOdqEbBctie9AuU0ezEPDWksBWquwkrVf46cyRKCcwZhJ03zMB19h2HYAC/bKqd0aw==
X-Received: by 10.176.3.86 with SMTP id 80mr48381229uat.157.1481013701301;
	Tue, 06 Dec 2016 00:41:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.84.87 with HTTP; Tue, 6 Dec 2016 00:41:40 -0800 (PST)
From: Panagiotis Tamtamis <tamtamis@gmail.com>
Date: Tue, 6 Dec 2016 10:41:40 +0200
Message-ID: <CAJq++8RcxWck6eVnOsCmoZsVE5L3tCRAzwOcOCQvp1m1zayEPg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: morty support for e500 (p1020, p2020)
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
X-List-Received-Date: Tue, 06 Dec 2016 08:41:43 -0000
Content-Type: multipart/alternative; boundary=001a113d67e492df860542f95fcb

--001a113d67e492df860542f95fcb
Content-Type: text/plain; charset=UTF-8

Morty branch does not compile clean for ppc e500.
Problem is a missing break at bin utils.

Patch:
diff --git a/meta/recipes-devtools/binutils/binutils-2.27.inc
b/meta/recipes-devtools/binutils/binutils-2.27.inc
index fc81721..f5bdc90 100644
--- a/meta/recipes-devtools/binutils/binutils-2.27.inc
+++ b/meta/recipes-devtools/binutils/binutils-2.27.inc
@@ -37,6 +37,7 @@ SRC_URI = "\
      file://0015-binutils-mips-gas-pic-relax-linkonce.diff \

file://0015-Refine-.cfi_sections-check-to-only-consider-compact-.patch \

file://0016-Fix-seg-fault-in-ARM-linker-when-trying-to-parse-a-b.patch \
+
file://binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch \
 "
 S  = "${WORKDIR}/git"

diff --git
a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
index e69de29..9759525 100644
---
a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
+++
b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
@@ -0,0 +1,26 @@
+From: Alan Modra <amodra@gmail.com>
+Date: Tue, 30 Aug 2016 11:27:32 +0000 (+0930)
+Subject: ppc apuinfo for spe parsed incorrectly
+X-Git-Url:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff_plain;h=8941017bc0226b60ce306d5271df15820ce66a53
+
+ppc apuinfo for spe parsed incorrectly
+
+apuinfo saying SPE resulted in mach = bfd_mach_ppc_vle due to a
+missing break.
+
+       PR 20531
+       * elf32-ppc.c (_bfd_elf_ppc_set_arch): Add missing "break".
+---
+
+diff --git a/bfd/elf32-ppc.c b/bfd/elf32-ppc.c
+index 92299bc..1dd6d78 100644
+--- a/bfd/elf32-ppc.c
++++ b/bfd/elf32-ppc.c
+@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)
+               case PPC_APUINFO_BRLOCK:
+                 if (mach != bfd_mach_ppc_vle)
+                   mach = bfd_mach_ppc_e500;
++                break;
+
+               case PPC_APUINFO_VLE:
+                 mach = bfd_mach_ppc_vle;



But should I push this change since NXP removed its support and conf files
at meta-fsl-ppc for morty branch?


Best regards,
Tamis

-- 
Think simple!

--001a113d67e492df860542f95fcb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Morty branch does not compile clean for ppc e500.<div>Prob=
lem is a missing break at bin utils.</div><div><br></div><div>Patch:</div><=
div><div>diff --git a/meta/recipes-devtools/binutils/binutils-2.27.inc b/me=
ta/recipes-devtools/binutils/binutils-2.27.inc</div><div>index fc81721..f5b=
dc90 100644</div><div>--- a/meta/recipes-devtools/binutils/binutils-2.27.in=
c</div><div>+++ b/meta/recipes-devtools/binutils/binutils-2.27.inc</div><di=
v>@@ -37,6 +37,7 @@ SRC_URI =3D &quot;\</div><div>=C2=A0 =C2=A0 =C2=A0 file=
://0015-binutils-mips-gas-pic-relax-linkonce.diff \</div><div>=C2=A0 =C2=A0=
 =C2=A0 file://0015-Refine-.cfi_sections-check-to-only-consider-compact-.pa=
tch \</div><div>=C2=A0 =C2=A0 =C2=A0 file://0016-Fix-seg-fault-in-ARM-linke=
r-when-trying-to-parse-a-b.patch \</div><div>+ =C2=A0 =C2=A0 file://binutil=
s-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch \</div><div>=C2=A0=
&quot;</div><div>=C2=A0S =C2=A0=3D &quot;${WORKDIR}/git&quot;</div><div>=C2=
=A0</div><div>diff --git a/meta/recipes-devtools/binutils/binutils/binutils=
-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch b/meta/recipes-devt=
ools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce=
66a53.patch</div><div>index e69de29..9759525 100644</div><div>--- a/meta/re=
cipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d527=
1df15820ce66a53.patch</div><div>+++ b/meta/recipes-devtools/binutils/binuti=
ls/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch</div><di=
v>@@ -0,0 +1,26 @@</div><div>+From: Alan Modra &lt;<a href=3D"mailto:amodra=
@gmail.com">amodra@gmail.com</a>&gt;</div><div>+Date: Tue, 30 Aug 2016 11:2=
7:32 +0000 (+0930)</div><div>+Subject: ppc apuinfo for spe parsed incorrect=
ly</div><div>+X-Git-Url: <a href=3D"https://sourceware.org/git/gitweb.cgi?p=
=3Dbinutils-gdb.git;a=3Dcommitdiff_plain;h=3D8941017bc0226b60ce306d5271df15=
820ce66a53">https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3D=
commitdiff_plain;h=3D8941017bc0226b60ce306d5271df15820ce66a53</a></div><div=
>+</div><div>+ppc apuinfo for spe parsed incorrectly</div><div>+</div><div>=
+apuinfo saying SPE resulted in mach =3D bfd_mach_ppc_vle due to a</div><di=
v>+missing break.</div><div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 PR 20531</di=
v><div>+ =C2=A0 =C2=A0 =C2=A0 * elf32-ppc.c (_bfd_elf_ppc_set_arch): Add mi=
ssing &quot;break&quot;.</div><div>+---</div><div>+</div><div>+diff --git a=
/bfd/elf32-ppc.c b/bfd/elf32-ppc.c</div><div>+index 92299bc..1dd6d78 100644=
</div><div>+--- a/bfd/elf32-ppc.c</div><div>++++ b/bfd/elf32-ppc.c</div><di=
v>+@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)</div><div>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case PPC_APUINFO_BRLOCK:</div=
><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mach !=
=3D bfd_mach_ppc_vle)</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 mach =3D bfd_mach_ppc_e500;</div><div>++ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;</div><div>+=C2=A0</div>=
<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case PPC_APUINFO_VL=
E:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mach=
 =3D bfd_mach_ppc_vle;</div></div><div><br></div><div><br></div><div><br></=
div><div>But should I push this change since NXP removed its support and co=
nf files at meta-fsl-ppc for morty branch?</div><div><br></div><div><br></d=
iv><div>Best regards,</div><div>Tamis</div><div><div><br></div>-- <br><div =
class=3D"gmail_signature">Think simple!</div>
</div></div>

--001a113d67e492df860542f95fcb--
