Return-Path: <tamtamis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1DC9E00D27; Wed,  7 Dec 2016 05:37:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tamtamis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A7EE00D19
	for <poky@yoctoproject.org>; Wed,  7 Dec 2016 05:37:56 -0800 (PST)
Received: by mail-ua0-f171.google.com with SMTP id 20so415122112uak.0
	for <poky@yoctoproject.org>; Wed, 07 Dec 2016 05:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=//OBOWTEsuvmBjoIYhmGJXQ1etlIB16okIr52BZ0B3Y=;
	b=vgllzy5R5Q7LdcSRfFVgxkO86RaQ16IdK14QkeYAvMldUVNQBQ5wFd+rzUEj8weJqt
	lqQjgAVf9MUgMLElgwmEU6huDVK9C2CpHbkb3MAzUoxexpaiIyO5iAarxX+5ryBRROR6
	ITYBnOserCSuVVsm/JJ4dObe+q+h8puy0UseW2QYGx3S+ay8w8faM79D0VW1Z731On3w
	EFnBvcKIlvNpEgBSLCK9UMMgCW4Rq9vM7YYmCxTzmLV5o4dKCyezhrm40JXBMUBoLSkY
	IyczJv5Fgr0CkzCQwvt3xGR1BfrEkX8TVqOkVHyDFpCWFby/8rf48Ht/dbvpROJF054I
	41HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=//OBOWTEsuvmBjoIYhmGJXQ1etlIB16okIr52BZ0B3Y=;
	b=UpIxjm0DWab/JvPVxFN83BNn93GM7q+tCz7VIGXuFN/rPYtBQfuCB9jLeV0404yjee
	AmHV10kJJZ3P9aKmQ4zylChvlEpMo58yjQJjOcGk7WSz5n18D2x5j+RrUOtAyE9WjntD
	tRD0jiC9hcSTBC9n6kU4yzuf+VcqD0zWVX8zTwgiqg+QTYLEFkSeWXw/ZG6R4cexNPYR
	xTyxSuoctIXD9bn3tNyTn5pULciIzt7vu+gdjUzsTogBxD4W4YHV74fq8Ywu+npY5T1Q
	i4l9J5qeQGElP1TMlpvlC/fdT2Oab+rrsq2FOBat/VtvnLEkyRCSop3Edp3dHSqSDKaO
	QniA==
X-Gm-Message-State: AKaTC02HpCyHZJva+XVcRGedmbhi30onDfnhGut7IIR0CcYskqEcY9274I59SlnkNlLzqpbS/sAAUPMPnu72vg==
X-Received: by 10.176.2.167 with SMTP id 36mr41843388uah.41.1481117876316;
	Wed, 07 Dec 2016 05:37:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.84.87 with HTTP; Wed, 7 Dec 2016 05:37:55 -0800 (PST)
In-Reply-To: <dd703aa9-54a8-1888-f162-d9c655029631@gmail.com>
References: <CAJq++8RcxWck6eVnOsCmoZsVE5L3tCRAzwOcOCQvp1m1zayEPg@mail.gmail.com>
	<dd703aa9-54a8-1888-f162-d9c655029631@gmail.com>
From: Panagiotis Tamtamis <tamtamis@gmail.com>
Date: Wed, 7 Dec 2016 15:37:55 +0200
Message-ID: <CAJq++8TZ5OOZzohGp80TRbr2wRX3_ebt88TG2268TysifKV-iA@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: morty support for e500 (p1020, p2020)
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
X-List-Received-Date: Wed, 07 Dec 2016 13:37:59 -0000
Content-Type: multipart/alternative; boundary=001a113acf72e36d85054311a0a2

--001a113acf72e36d85054311a0a2
Content-Type: text/plain; charset=UTF-8

Armin patch at master already exists.
commit 8a81facc23fd54b095940372e05de2356579c97c

So it would be better to merge it from there, I guess.

Br,
Tamis

2016-12-06 21:17 GMT+02:00 akuster808 <akuster808@gmail.com>:

> On 12/6/16 12:41 AM, Panagiotis Tamtamis wrote:
> > Morty branch does not compile clean for ppc e500.
> > Problem is a missing break at bin utils.
> >
> > Patch:
> > diff --git a/meta/recipes-devtools/binutils/binutils-2.27.inc
> > b/meta/recipes-devtools/binutils/binutils-2.27.inc
> > index fc81721..f5bdc90 100644
> > --- a/meta/recipes-devtools/binutils/binutils-2.27.inc
> > +++ b/meta/recipes-devtools/binutils/binutils-2.27.inc
> > @@ -37,6 +37,7 @@ SRC_URI = "\
> >       file://0015-binutils-mips-gas-pic-relax-linkonce.diff \
> >
> > file://0015-Refine-.cfi_sections-check-to-only-consider-compact-.patch \
> >
> > file://0016-Fix-seg-fault-in-ARM-linker-when-trying-to-parse-a-b.patch \
> > +
> > file://binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch \
> >  "
> >  S  = "${WORKDIR}/git"
> >
> > diff --git
> > a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
> 8941017bc0226b60ce306d5271df15820ce66a53.patch
> > b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
> 8941017bc0226b60ce306d5271df15820ce66a53.patch
> > index e69de29..9759525 100644
> > ---
> > a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
> 8941017bc0226b60ce306d5271df15820ce66a53.patch
> > +++
> > b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-
> 8941017bc0226b60ce306d5271df15820ce66a53.patch
> > @@ -0,0 +1,26 @@
> > +From: Alan Modra <amodra@gmail.com <mailto:amodra@gmail.com>>
> > +Date: Tue, 30 Aug 2016 11:27:32 +0000 (+0930)
> > +Subject: ppc apuinfo for spe parsed incorrectly
> > +X-Git-Url:
> > https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;
> a=commitdiff_plain;h=8941017bc0226b60ce306d5271df15820ce66a53
> > +
> > +ppc apuinfo for spe parsed incorrectly
> > +
> > +apuinfo saying SPE resulted in mach = bfd_mach_ppc_vle due to a
> > +missing break.
> > +
> > +       PR 20531
> > +       * elf32-ppc.c (_bfd_elf_ppc_set_arch): Add missing "break".
> > +---
> > +
> > +diff --git a/bfd/elf32-ppc.c b/bfd/elf32-ppc.c
> > +index 92299bc..1dd6d78 100644
> > +--- a/bfd/elf32-ppc.c
> > ++++ b/bfd/elf32-ppc.c
> > +@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)
> > +               case PPC_APUINFO_BRLOCK:
> > +                 if (mach != bfd_mach_ppc_vle)
> > +                   mach = bfd_mach_ppc_e500;
> > ++                break;
> > +
> > +               case PPC_APUINFO_VLE:
> > +                 mach = bfd_mach_ppc_vle;
> >
> >
> >
> > But should I push this change since NXP removed its support and conf
> > files at meta-fsl-ppc for morty branch?
>
> Yes please send a patch. Please check master to make sure we don't need
> the fix there too.
>
> - Armin
> >
> >
> > Best regards,
> > Tamis
> >
> > --
> > Think simple!
> >
> >
>
>


-- 
Think simple!

--001a113acf72e36d85054311a0a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Armin patch at master already exists.<div>commit=C2=A08a81=
facc23fd54b095940372e05de2356579c97c</div><div><br></div><div>So it would b=
e better to merge it from there, I guess.</div><div><br></div><div>Br,</div=
><div>Tamis</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">2016-12-06 21:17 GMT+02:00 akuster808 <span dir=3D"ltr">&lt;<a href=
=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div c=
lass=3D"h5">On 12/6/16 12:41 AM, Panagiotis Tamtamis wrote:<br>
&gt; Morty branch does not compile clean for ppc e500.<br>
&gt; Problem is a missing break at bin utils.<br>
&gt;<br>
&gt; Patch:<br>
&gt; diff --git a/meta/recipes-devtools/<wbr>binutils/binutils-2.27.inc<br>
&gt; b/meta/recipes-devtools/<wbr>binutils/binutils-2.27.inc<br>
&gt; index fc81721..f5bdc90 100644<br>
&gt; --- a/meta/recipes-devtools/<wbr>binutils/binutils-2.27.inc<br>
&gt; +++ b/meta/recipes-devtools/<wbr>binutils/binutils-2.27.inc<br>
&gt; @@ -37,6 +37,7 @@ SRC_URI =3D &quot;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0015-binutils-mips-gas-<wbr>pic-relax=
-linkonce.diff \<br>
&gt;<br>
&gt; file://0015-Refine-.cfi_<wbr>sections-check-to-only-<wbr>consider-comp=
act-.patch \<br>
&gt;<br>
&gt; file://0016-Fix-seg-fault-in-<wbr>ARM-linker-when-trying-to-<wbr>parse=
-a-b.patch \<br>
&gt; +<br>
&gt; file://binutils-gdb.git-<wbr>8941017bc0226b60ce306d5271df15<wbr>820ce6=
6a53.patch \<br>
&gt;=C2=A0 &quot;<br>
&gt;=C2=A0 S=C2=A0 =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; diff --git<br>
&gt; a/meta/recipes-devtools/<wbr>binutils/binutils/binutils-<wbr>gdb.git-<=
wbr>8941017bc0226b60ce306d5271df15<wbr>820ce66a53.patch<br>
&gt; b/meta/recipes-devtools/<wbr>binutils/binutils/binutils-<wbr>gdb.git-<=
wbr>8941017bc0226b60ce306d5271df15<wbr>820ce66a53.patch<br>
&gt; index e69de29..9759525 100644<br>
&gt; ---<br>
&gt; a/meta/recipes-devtools/<wbr>binutils/binutils/binutils-<wbr>gdb.git-<=
wbr>8941017bc0226b60ce306d5271df15<wbr>820ce66a53.patch<br>
&gt; +++<br>
&gt; b/meta/recipes-devtools/<wbr>binutils/binutils/binutils-<wbr>gdb.git-<=
wbr>8941017bc0226b60ce306d5271df15<wbr>820ce66a53.patch<br>
&gt; @@ -0,0 +1,26 @@<br>
</div></div>&gt; +From: Alan Modra &lt;<a href=3D"mailto:amodra@gmail.com">=
amodra@gmail.com</a> &lt;mailto:<a href=3D"mailto:amodra@gmail.com">amodra@=
gmail.com</a>&gt;&gt;<br>
<div><div class=3D"h5">&gt; +Date: Tue, 30 Aug 2016 11:27:32 +0000 (+0930)<=
br>
&gt; +Subject: ppc apuinfo for spe parsed incorrectly<br>
&gt; +X-Git-Url:<br>
&gt; <a href=3D"https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;=
a=3Dcommitdiff_plain;h=3D8941017bc0226b60ce306d5271df15820ce66a53" rel=3D"n=
oreferrer" target=3D"_blank">https://sourceware.org/git/<wbr>gitweb.cgi?p=
=3Dbinutils-gdb.git;<wbr>a=3Dcommitdiff_plain;h=3D<wbr>8941017bc0226b60ce30=
6d5271df15<wbr>820ce66a53</a><br>
&gt; +<br>
&gt; +ppc apuinfo for spe parsed incorrectly<br>
&gt; +<br>
&gt; +apuinfo saying SPE resulted in mach =3D bfd_mach_ppc_vle due to a<br>
&gt; +missing break.<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0PR 20531<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0* elf32-ppc.c (_bfd_elf_ppc_set_arch): Add=
 missing &quot;break&quot;.<br>
&gt; +---<br>
&gt; +<br>
&gt; +diff --git a/bfd/elf32-ppc.c b/bfd/elf32-ppc.c<br>
&gt; +index 92299bc..1dd6d78 100644<br>
&gt; +--- a/bfd/elf32-ppc.c<br>
&gt; ++++ b/bfd/elf32-ppc.c<br>
&gt; +@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case PPC_APUIN=
FO_BRLOCK:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (mac=
h !=3D bfd_mach_ppc_vle)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
mach =3D bfd_mach_ppc_e500;<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case PPC_APUIN=
FO_VLE:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mach =
=3D bfd_mach_ppc_vle;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; But should I push this change since NXP removed its support and conf<b=
r>
&gt; files at meta-fsl-ppc for morty branch?<br>
<br>
</div></div>Yes please send a patch. Please check master to make sure we do=
n&#39;t need<br>
the fix there too.<br>
<br>
- Armin<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Tamis<br>
&gt;<br>
&gt; --<br>
&gt; Think simple!<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Think sim=
ple!</div>
</div>

--001a113acf72e36d85054311a0a2--
