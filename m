Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBEA7E00DD9; Fri, 26 Jan 2018 08:08:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36FFEE00D1C
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 08:08:51 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id f71so2254555wmf.0
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 08:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DWExS9G+miFm5GXno7yBQ23rfpxsZSwGlVGeYiColtM=;
	b=h8yybRvx/6MjrJrIbZ3ToObxYD1I1bBrifKRMTyyWCh5zOZ+vZ1tlquNkM1KAvvMEI
	2jh/VgasCy7pUvfV5+KwVVd+YPg7nmjtmYcAEsBd4PI//sW8vbuXEOgbdd3XEuET7GNb
	ostfSHx0wGPsw7XKm5PaPVg8q/vj8yFWS1ebR0vafXfZg0+atdFtsdJUzuKb5SnNAFmz
	+9J9quuRgP0Vro/ofayjFhQvCB4eZUjlSyFe7fXxtH3w+Mb7tzN731toNcmRP+u5ABX4
	CCh416QHyCtYvqHRoPeeX+ST/BM3pMfGBZJqNyhexhzFFpWoyNribtgD3ZMTp5HkzRsJ
	f4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DWExS9G+miFm5GXno7yBQ23rfpxsZSwGlVGeYiColtM=;
	b=M/MTL8KTnhDB4TBlKr70YN+NjHA3H6/TJ9IayvRUczFdYAOkDuBm4C1BJ8u/iU2TB/
	mlOr+gooJoRJFQ8kOldcXq87S3lfFVZJVW8MrJagnkAypo30H6JgramLau7XANPN3N/o
	hrPfMNxHOkBTWkaQDt+eVS4CpRe19+lgFjy30aXKJspOOtny3ILRw8CHO7QskusLRqQm
	WjnYpC21HoAvJwc86ABUVx9EqmzdGjU0/M5PvfoYyxzvmy41N+e+FlAnpUijGyfouY7W
	i9c/5VSXl6TVEFpGEwvLKOTaJBLK9HaysrGtaICRWIWZkx37zxnITBSddCnHrBlxPiAl
	+Rfg==
X-Gm-Message-State: AKwxytft/rDXHA1pF4e4zBtSLkY5TbRoSlBqgfNyoHagJkjzUdhzPu1F
	mveywRAuoRuDCEwYxudSt8LMnQ2cgYX0pyseq6w=
X-Google-Smtp-Source: AH8x2242tbfskpTzA/P33TEj06h654txT+ePSHkBBET/IpujmNRDMuV+FrhtRJXUp87At711aCiMNNhDIfoAGLxG/aU=
X-Received: by 10.28.191.19 with SMTP id p19mr10511590wmf.142.1516982931013;
	Fri, 26 Jan 2018 08:08:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.74.211 with HTTP; Fri, 26 Jan 2018 08:08:50 -0800 (PST)
In-Reply-To: <3fd0e1ec-c033-7169-cc4a-30a6a084fc4b@qualitrolcorp.com>
References: <3fd0e1ec-c033-7169-cc4a-30a6a084fc4b@qualitrolcorp.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 26 Jan 2018 17:08:50 +0100
Message-ID: <CA+chaQei30Mv2JPJOpPujqL+DYYZnh3FAnb_QJYkgheB5oJiMQ@mail.gmail.com>
To: ghuber@qualitrolcorp.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: mariadb on Poky master
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
X-List-Received-Date: Fri, 26 Jan 2018 16:08:53 -0000
Content-Type: multipart/alternative; boundary="001a114e2782bbc6710563b01c11"

--001a114e2782bbc6710563b01c11
Content-Type: text/plain; charset="UTF-8"

see https://patchwork.openembedded.org/patch/147434/

On Fri, Jan 26, 2018 at 2:40 PM, Greg Huber <ghuber@qualitrolcorp.com>
wrote:

> Hello, and thank you for considering this...
>
> I have been building the Rocko branch with no issues for a while now.
> Earlier this week I tried switching to the master branch due to some
> outdated packages. Building meta-toolchain when without a hitch.
> However, when I tried building our first target, the 'mariadb' package
> came back with a rather difficult error. I added a patch for the
> "%pure_parser" problem but I can't seem to figure this one out.
> (i shortened the paths to make it more readable)
>
>
>
> Loading cache: 100%
> |###########################################################
> ############################################################
> ###################################|
> Time: 0:00:00
> Loaded 3205 entries from dependency cache.
> Parsing recipes: 100%
> |###########################################################
> ############################################################
> #################################|
> Time: 0:00:01
> Parsing of 2301 .bb files complete (2296 cached, 5 parsed). 3195
> targets, 224 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> NOTE: Multiple providers are available for openssl (openssl, openssl-qoriq)
> Consider defining a PREFERRED_PROVIDER entry to match openssl
>
> Build Configuration:
> BB_VERSION           = "1.37.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "arm-fsl-linux-gnueabi"
> MACHINE              = "ls1021atwr"
> DISTRO               = "fsl-qoriq"
> DISTRO_VERSION       = "2.0"
> TUNE_FEATURES        = "arm armv7ve vfp neon callconvention-hard cortexa7"
> TARGET_FPU           = "hard"
> meta
> meta-poky            = "master:be821416fe0f092c90feeda7e008452af46fc6c7"
> meta-oe
> meta-multimedia
> meta-filesystems
> meta-networking
> meta-python          = "master:9eb33e651aaf0067c32110977e8700aa16811c55"
> meta-selinux         = "master:d855c624f32c5e599bf27e06cb8f5b25b3aae12d"
> meta-freescale       = "master:bf7fd9cfe0788fe2f819a4ae2cc7db8327fe161a"
> meta-freescale-3rdparty = "master:fcc529237f9c934b42549a9bae7057
> 6a193eab0a"
> meta-freescale-distro = "master:3f958b6a9a4c4120f241e431fec8e5ba616fcc73"
> meta-fsl-arm         = "master:154ccf1e8b08e3d6219bd455b7dfe9ff7ab975b0"
> meta-qualitrol       = "master:70535e13dd2aabbad53243518f4cc5064d284592"
>
> Initialising tasks: 100%
> |###########################################################
> ############################################################
> ##############################|
> Time: 0:00:03
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: mariadb-native-5.5.57-r0 do_install: oe_runmake failed
> ERROR: mariadb-native-5.5.57-r0 do_install: Function failed: do_install
> (log file is located at
> fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-
> linux/mariadb-native/5.5.57-r0/temp/log.do_install.8701)
> ERROR: Logfile of failure stored in:
> fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-
> linux/mariadb-native/5.5.57-r0/temp/log.do_install.8701
> Log data follows:
> | DEBUG: Executing shell function do_install
> | NOTE: make -j 8
> DESTDIR=fsl-community-bsp-base/build_ls1021atwr/tmp/
> work/x86_64-linux/mariadb-native/5.5.57-r0/image
> install
> | make: *** No rule to make target 'install'.  Stop.
> | ERROR: oe_runmake failed
> | WARNING:
> fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-
> linux/mariadb-native/5.5.57-r0/temp/run.do_install.8701:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_install (log file is located at
> fsl-community-bsp-base/build_ls1021atwr/tmp/work/x86_64-
> linux/mariadb-native/5.5.57-r0/temp/log.do_install.8701)
> ERROR: Task
> (fsl-community-bsp-base/sources/meta-openembedded/
> meta-oe/recipes-support/mysql/mariadb-native_5.5.57.bb:do_install)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2907 tasks of which 2453 didn't need to
> be rerun and 1 failed.
>
> Summary: 1 task failed:
>
> fsl-community-bsp-base/sources/meta-openembedded/
> meta-oe/recipes-support/mysql/mariadb-native_5.5.57.bb:do_install
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> Than base problem is that there is no Makefile created (or it got
> deleted) when do_install runs "oe_runmake 'DESTDIR=${D}' install".
> This package and the few that depend on it are the only failures,
> everything else builds without error.
> Again, this builds in the Rocko branch and an older (1.7) branch I still
> have but not in the master branch.
>
> Any help you can provide would be greatly appreciated.
> Please let me know if you need any additional information.
>
> Thank You.
> GRH
>
> ________________________________
> ________________________________
>
>
> Please be advised that this email may contain confidential information. If
> you are not the intended recipient, please notify us by email by replying
> to the sender and delete this message. The sender disclaims that the
> content of this email constitutes an offer to enter into, or the acceptance
> of, any agreement; provided that the foregoing does not invalidate the
> binding effect of any digital or other electronic reproduction of a manual
> signature that is included in any attachment.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a114e2782bbc6710563b01c11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">see=C2=A0<a href=3D"https://patchwork.openembedded.org/pat=
ch/147434/">https://patchwork.openembedded.org/patch/147434/</a></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jan 26, 2018 a=
t 2:40 PM, Greg Huber <span dir=3D"ltr">&lt;<a href=3D"mailto:ghuber@qualit=
rolcorp.com" target=3D"_blank">ghuber@qualitrolcorp.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hello, and thank you for considering t=
his...<br>
<br>
I have been building the Rocko branch with no issues for a while now.<br>
Earlier this week I tried switching to the master branch due to some<br>
outdated packages. Building meta-toolchain when without a hitch.<br>
However, when I tried building our first target, the &#39;mariadb&#39; pack=
age<br>
came back with a rather difficult error. I added a patch for the<br>
&quot;%pure_parser&quot; problem but I can&#39;t seem to figure this one ou=
t.<br>
(i shortened the paths to make it more readable)<br>
<br>
<br>
<br>
Loading cache: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>#####|<br>
Time: 0:00:00<br>
Loaded 3205 entries from dependency cache.<br>
Parsing recipes: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>###|<br>
Time: 0:00:01<br>
Parsing of 2301 .bb files complete (2296 cached, 5 parsed). 3195<br>
targets, 224 skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Multiple providers are available for openssl (openssl, openssl-qoriq)=
<br>
Consider defining a PREFERRED_PROVIDER entry to match openssl<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;<b=
r>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&q=
uot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-fsl-linux-=
gnueabi&quot;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ls1021atw=
r&quot;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;fsl-=
qoriq&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.0&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7ve vfp neon cal=
lconvention-hard cortexa7&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;<br>
meta<br>
meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:<wbr>be=
821416fe0f092c90feeda7e00845<wbr>2af46fc6c7&quot;<br>
meta-oe<br>
meta-multimedia<br>
meta-filesystems<br>
meta-networking<br>
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:<wbr>9eb33e6=
51aaf0067c32110977e8700<wbr>aa16811c55&quot;<br>
meta-selinux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>d855c62=
4f32c5e599bf27e06cb8f5b<wbr>25b3aae12d&quot;<br>
meta-freescale=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>bf7fd9cfe078=
8fe2f819a4ae2cc7db<wbr>8327fe161a&quot;<br>
meta-freescale-3rdparty =3D &quot;master:<wbr>fcc529237f9c934b42549a9bae705=
7<wbr>6a193eab0a&quot;<br>
meta-freescale-distro =3D &quot;master:<wbr>3f958b6a9a4c4120f241e431fec8e5<=
wbr>ba616fcc73&quot;<br>
meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>154ccf1=
e8b08e3d6219bd455b7dfe9<wbr>ff7ab975b0&quot;<br>
meta-qualitrol=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:<wbr>70535e13dd2a=
abbad53243518f4cc5<wbr>064d284592&quot;<br>
<br>
Initialising tasks: 100%<br>
|#############################<wbr>##############################<wbr>#####=
#########################<wbr>##############################<wbr>##########=
####################<wbr>|<br>
Time: 0:00:03<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: mariadb-native-5.5.57-r0 do_install: oe_runmake failed<br>
ERROR: mariadb-native-5.5.57-r0 do_install: Function failed: do_install<br>
(log file is located at<br>
fsl-community-bsp-base/build_<wbr>ls1021atwr/tmp/work/x86_64-<wbr>linux/mar=
iadb-native/5.5.57-<wbr>r0/temp/log.do_install.8701)<br>
ERROR: Logfile of failure stored in:<br>
fsl-community-bsp-base/build_<wbr>ls1021atwr/tmp/work/x86_64-<wbr>linux/mar=
iadb-native/5.5.57-<wbr>r0/temp/log.do_install.8701<br>
Log data follows:<br>
| DEBUG: Executing shell function do_install<br>
| NOTE: make -j 8<br>
DESTDIR=3Dfsl-community-bsp-<wbr>base/build_ls1021atwr/tmp/<wbr>work/x86_64=
-linux/mariadb-<wbr>native/5.5.57-r0/image<br>
install<br>
| make: *** No rule to make target &#39;install&#39;.=C2=A0 Stop.<br>
| ERROR: oe_runmake failed<br>
| WARNING:<br>
fsl-community-bsp-base/build_<wbr>ls1021atwr/tmp/work/x86_64-<wbr>linux/mar=
iadb-native/5.5.57-<wbr>r0/temp/run.do_install.8701:1<br>
exit 1 from &#39;exit 1&#39;<br>
| ERROR: Function failed: do_install (log file is located at<br>
fsl-community-bsp-base/build_<wbr>ls1021atwr/tmp/work/x86_64-<wbr>linux/mar=
iadb-native/5.5.57-<wbr>r0/temp/log.do_install.8701)<br>
ERROR: Task<br>
(fsl-community-bsp-base/<wbr>sources/meta-openembedded/<wbr>meta-oe/recipes=
-support/mysql/<wbr>mariadb-native_5.5.57.bb:do_<wbr>install)<br>
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 2907 tasks of which 2453 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
<br>
fsl-community-bsp-base/<wbr>sources/meta-openembedded/<wbr>meta-oe/recipes-=
support/mysql/<wbr>mariadb-native_5.5.57.bb:do_<wbr>install<br>
Summary: There was 1 WARNING message shown.<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
<br>
Than base problem is that there is no Makefile created (or it got<br>
deleted) when do_install runs &quot;oe_runmake &#39;DESTDIR=3D${D}&#39; ins=
tall&quot;.<br>
This package and the few that depend on it are the only failures,<br>
everything else builds without error.<br>
Again, this builds in the Rocko branch and an older (1.7) branch I still<br=
>
have but not in the master branch.<br>
<br>
Any help you can provide would be greatly appreciated.<br>
Please let me know if you need any additional information.<br>
<br>
Thank You.<br>
GRH<br>
<br>
______________________________<wbr>__<br>
______________________________<wbr>__<br>
<br>
<br>
Please be advised that this email may contain confidential information. If =
you are not the intended recipient, please notify us by email by replying t=
o the sender and delete this message. The sender disclaims that the content=
 of this email constitutes an offer to enter into, or the acceptance of, an=
y agreement; provided that the foregoing does not invalidate the binding ef=
fect of any digital or other electronic reproduction of a manual signature =
that is included in any attachment.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--001a114e2782bbc6710563b01c11--
