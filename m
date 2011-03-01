Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C02124C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 17:53:23 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm2 with SMTP id 2so7059415fxm.35
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 15:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=ARTxgubDsEj8A7MOJXWMvraXH6TEJXZoqxrZ4DWlaHI=;
	b=J/+XZpUH5uI203/fDa2ZEOw88ANFXIdVp7EeqW0WMiM8Bz2z2vE8dgOg2fPeBeQ+gr
	RviEN2J+dtXYIeUiXuZvgsdcAArpdTMzXGAlM3w7v5Oi4dTlmYgA5lKaonzZdbkh3kfl
	uy8iZ9kHuKDyQ/KFakXKRdX9GnQDFLCgr2OyY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=LoxRjQvyhjenT/EKp/oLdqTujL8jA3f/86+e7uRd9A0Ry7yNOJhmY4k8fQm5pz90bL
	o24ik2xi+6BuDZRplghqPuUFy/A97a4zPicQVAreZnn5UHszxglocJ+c+ybZjZaSYb8e
	9WLp2DeRHh4Mu9PAOTHqG2dGvtUGVSQwArbfQ=
Received: by 10.223.93.140 with SMTP id v12mr6552788fam.96.1299023289620; Tue,
	01 Mar 2011 15:48:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.30.151 with HTTP; Tue, 1 Mar 2011 15:47:14 -0800 (PST)
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9431C4938A@orsmsx504.amr.corp.intel.com>
References: <cover.1298991086.git.nitin.a.kamble@intel.com>
	<d82ef128d4b9b9503bb645ee21ed2121683a5b54.1298991086.git.nitin.a.kamble@intel.com>
	<AANLkTint7xar5fzMD15ssF9A18fC+fzV0Ke7W8cRNvqq@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9431C4938A@orsmsx504.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 1 Mar 2011 15:47:14 -0800
Message-ID: <AANLkTinLG5Yqguc8nyWHgrEPy57zQkp27MYNueG-_DtE@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] gcc: take out libiberty files from gcc packages
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
X-List-Received-Date: Tue, 01 Mar 2011 23:53:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 1, 2011 at 3:40 PM, Kamble, Nitin A
<nitin.a.kamble@intel.com> wrote:
>
>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Tuesday, March 01, 2011 3:19 PM
>> To: Kamble, Nitin A
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] [PATCH 1/1] gcc: take out libiberty files from gcc
>> packages
>>
>> On Tue, Mar 1, 2011 at 6:52 AM, Nitin A Kamble
>> <nitin.a.kamble@intel.com> wrote:
>> > From: Nitin A Kamble <nitin.a.kamble@intel.com>
>> >
>> > this Fixes [BUGID #754]
>> >
>> > Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
>> > ---
>> > =C2=A0.../gcc/gcc-cross-initial_4.5.1.bb =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A02 +-
>> > =C2=A0.../gcc/gcc-cross-intermediate.inc =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A03 ++-
>> > =C2=A0.../gcc/gcc-cross-intermediate_4.5.1.bb =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A02 +-
>> > =C2=A0meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb =C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A02 +-
>> > =C2=A0.../gcc/gcc-crosssdk-initial_4.5.1.bb =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A02 +-
>> > =C2=A0.../gcc/gcc-crosssdk-intermediate_4.5.1.bb =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A02 +-
>> > =C2=A0meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb =C2=A0 =C2=A0| =
=C2=A0 =C2=A02 +-
>> > =C2=A0meta/recipes-devtools/gcc/gcc-package-cross.inc =C2=A0 =C2=A0| =
=C2=A0 =C2=A04 ++++
>> > =C2=A0meta/recipes-devtools/gcc/gcc-package-target.inc =C2=A0 | =C2=A0=
 =C2=A04 ++++
>> > =C2=A0meta/recipes-devtools/gcc/gcc_4.5.1.bb =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A02 +-
>> > =C2=A010 files changed, 17 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
>> b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
>> > index b2c257d..38e0964 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
>> > @@ -1,5 +1,5 @@
>> > =C2=A0require gcc-cross_${PV}.bb
>> > =C2=A0require gcc-cross-initial.inc
>> >
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> >
>> > diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
>> b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
>> > index 2e5283d..92c3ce2 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
>> > +++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
>> > @@ -35,7 +35,8 @@ do_install () {
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${datadir}/
>> >
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# We use libiberty from binutils
>> > - =C2=A0 =C2=A0 =C2=A0 rm -f ${D}${exec_prefix}/lib/lib/libiberty.a
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.a ${D}${exec_prefix}/lib |=
 xargs rm -f
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.h ${D}${exec_prefix}/lib |=
 xargs rm -f
>> >
>>
>> why find ? Dont you have =C2=A0paths known to these files. ?
>
>
> Khem,
> =C2=A0This is because I noticed paths variations like lib/lib/libiberty.a
> lib/lib64/libiberty.a on different machines/arches. And wanted to address
> them all in one shot.
>

IMO being specific is always better and it will have some performance
hit with find

> Thanks,
> Nitin
>
>>
>>
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# Insert symlinks into libexec so when tool=
s without a prefix
>> are searched for, the correct ones are
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# found. These need to be relative paths so=
 they work in
>> different locations.
>> > diff --git a/meta/recipes-devtools/gcc/gcc-cross-
>> intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-
>> intermediate_4.5.1.bb
>> > index e65d5df..9a30cb5 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > =C2=A0require gcc-cross_${PV}.bb
>> > =C2=A0require gcc-cross-intermediate.inc
>> > -PR =3D "r3"
>> > +PR =3D "r4"
>> >
>> > diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
>> b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
>> > index 399cdf9..78bb05a 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> >
>> > =C2=A0require gcc-${PV}.inc
>> > =C2=A0require gcc-cross4.inc
>> > diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
>> b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
>> > index 240caf5..fec53b9 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > =C2=A0require gcc-cross-initial_${PV}.bb
>> > =C2=A0require gcc-crosssdk-initial.inc
>> >
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> > diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-
>> intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-
>> intermediate_4.5.1.bb
>> > index a6653dd..161d870 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > =C2=A0require gcc-cross-intermediate_${PV}.bb
>> > =C2=A0require gcc-crosssdk-intermediate.inc
>> >
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> > diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
>> b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
>> > index 129e8d3..7069088 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > =C2=A0require gcc-cross_${PV}.bb
>> > =C2=A0require gcc-crosssdk.inc
>> >
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> > diff --git a/meta/recipes-devtools/gcc/gcc-package-cross.inc
>> b/meta/recipes-devtools/gcc/gcc-package-cross.inc
>> > index 4f902fa..04c8101 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-package-cross.inc
>> > +++ b/meta/recipes-devtools/gcc/gcc-package-cross.inc
>> > @@ -27,6 +27,10 @@ do_install () {
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -rf ${D}${ST=
AGING_DIR_NATIVE}${prefix_native}/$d
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0done
>> >
>> > + =C2=A0 =C2=A0 =C2=A0 # We use libiberty from binutils
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.a ${D}${exec_prefix}/lib |=
 xargs rm -f
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.h ${D}${exec_prefix}/lib |=
 xargs rm -f
>> > +
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# gcc-runtime installs libgcc into a specia=
l location in
>> staging since it breaks doing a standalone build
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ "${PN}" =3D=3D "gcc-cross" -o "${PN}" =
=3D=3D "gcc-crosssdk" ];
>> then
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dest=3D${D}/${i=
ncludedir}/gcc-build-internal-
>> ${MULTIMACH_TARGET_SYS}
>> > diff --git a/meta/recipes-devtools/gcc/gcc-package-target.inc
>> b/meta/recipes-devtools/gcc/gcc-package-target.inc
>> > index 3286da6..d61e96b 100644
>> > --- a/meta/recipes-devtools/gcc/gcc-package-target.inc
>> > +++ b/meta/recipes-devtools/gcc/gcc-package-target.inc
>> > @@ -86,6 +86,10 @@ do_install () {
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# We don't care about the gcc-<version> one=
s for this
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f *gcc-?.?*
>> >
>> > + =C2=A0 =C2=A0 =C2=A0 # We use libiberty from binutils
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.a ${D}${exec_prefix}/lib |=
 xargs rm -f
>> > + =C2=A0 =C2=A0 =C2=A0 find -name libiberty.h ${D}${exec_prefix}/lib |=
 xargs rm -f
>> > +
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0# Symlinks so we can use these trivially on=
 the target
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${TARGET_SYS}-g77 g77 || true
>> > =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${TARGET_SYS}-gfortran gfortran || t=
rue
>> > diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-
>> devtools/gcc/gcc_4.5.1.bb
>> > index 919d4b0..25e455c 100644
>> > --- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
>> > +++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
>> > @@ -1,4 +1,4 @@
>> > -PR =3D "r2"
>> > +PR =3D "r3"
>> > =C2=A0require gcc-${PV}.inc
>> > =C2=A0require gcc-configure-target.inc
>> > =C2=A0require gcc-package-target.inc
>> > --
>> > 1.7.2.2
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>

