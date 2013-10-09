Return-Path: <kaishos@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D288E01697
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 01:09:43 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id cb5so255961wib.0
	for <poky@yoctoproject.org>; Wed, 09 Oct 2013 01:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cBHKeeu4wI0RawLixWKw8s6hWdnUBXANY9pcHYt2264=;
	b=F245dPyjn4NOt8hyhpoDxGhsZq3hghNoBmJeJSQW1i1TOZl1DWLBnPpDvz+me0jXgU
	6QfNx9o83eru1BecQLqGVPPgxEHtcNZldd3bFhUr6puUb0EgT4l3wf+f4SVP3skEOqYp
	Gz/hsLNb5UuOBQhYknSD7upincnZToPLvMI1DP9bHbqazR4YBtwV/U5ATlqfMKnC/5yi
	Ygxo1o5LXoGmfr5DvDI1TONKKNFz6BcOgVU35UVh9Gc0mDzugRQhB1CzPGtzWOrTW1OF
	NTSegq1WVRR9VmM2RyYm37JcZWLdzOniEI+Xh6qnM6gs2L4DyNAVq4V1mtLdP8DtVDqq
	tyPg==
MIME-Version: 1.0
X-Received: by 10.194.10.193 with SMTP id k1mr648747wjb.50.1381306182506; Wed,
	09 Oct 2013 01:09:42 -0700 (PDT)
Received: by 10.217.11.9 with HTTP; Wed, 9 Oct 2013 01:09:42 -0700 (PDT)
Date: Wed, 9 Oct 2013 10:09:42 +0200
Message-ID: <CAJfvnsA2GJ62JiUMhh7v1NLa+_VXjx0gBL+Fv3SCGk=1rK6hWQ@mail.gmail.com>
From: Pablo <kaishos@gmail.com>
To: poky@yoctoproject.org
Subject: Build failure for 0001-Add-linux-support-for-congatec-evaluation-board-qmx6q.patch
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
X-List-Received-Date: Wed, 09 Oct 2013 08:09:44 -0000
Content-Type: multipart/alternative; boundary=047d7b5d4f78559fa404e84a6840

--047d7b5d4f78559fa404e84a6840
Content-Type: text/plain; charset=ISO-8859-1

I tried to build a image for congatec ang got the following error

Execution was interrupted, returning a non-zero exit code.
pablo@pablo:~/yocto/rootfs_builder/build_cgtqmx6$ bitbake fsl-image-gui
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 29 entries from dependency cache.
WARNING: Unable to get checksum for linux-boundary SRC_URI entry defconfig:
file could not be found
Parsing recipes: 100% |#########################################| Time:
00:03:05
Parsing of 1336 .bb files complete (22 cached, 1314 parsed). 1728 targets,
80 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
NOTE: multiple providers are available for jpeg-native (jpeg-native,
libjpeg-turbo-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "cgtqmx6"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        =
"tritech-cngt-qmx6:5445f71fc812a5fcf9bd67a26a500284af16ad39"
meta-oe           =
"tritech-cngt-qmx6:2a463dddcf76d7fa437e96f6cf0210143e97a904"
meta-fsl-arm      =
"tritech-cngt-qmx6:d334d3c7388e41d720dd0c8e0cb76fab51a6e46a"
meta-fsl-arm-extra =
"tritech-cngt-qmx6:054e9945f4916dcd41c989900fb18d04110aa6a6"
meta-fsl-demos    =
"tritech-cngt-qmx6:393b0119d513f9abf7b0570ab0d32b81583dedca"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL
http://www.apache.org/dist/subversion/subversion-1.7.10.tar.bz2, attempting
MIRRORS if available
WARNING: Failed to fetch URL
http://downloads.sourceforge.net/project/libpng/libpng16/1.6.3/libpng-1.6.3.tar.xz,
attempting MIRRORS if available
ERROR: Command Error: exit status: 1  Output:
Applying patch
0001-Add-linux-support-for-congatec-evaluation-board-qmx6q.patch
patching file arch/arm/configs/qmx6_defconfig
patching file arch/arm/configs/qmx6_updater_defconfig
patching file arch/arm/mach-mx6/Kconfig
patching file arch/arm/mach-mx6/Makefile
patching file arch/arm/mach-mx6/board-mx6dl_qmx6.h
patching file arch/arm/mach-mx6/board-mx6q_qmx6.c
patching file arch/arm/mach-mx6/board-mx6q_qmx6.h
patching file arch/arm/mach-mx6/mx6q_qmx6_pmic_pfuze100.c
patching file arch/arm/plat-mxc/include/mach/esdhc.h
patching file arch/arm/tools/mach-types
patching file drivers/mmc/host/sdhci-esdhc-imx.c
patching file drivers/net/fec.c
Hunk #3 succeeded at 200 (offset 1 line).
Hunk #4 succeeded at 250 (offset 1 line).
Hunk #5 succeeded at 518 (offset 1 line).
Hunk #6 succeeded at 768 (offset 1 line).
Hunk #7 succeeded at 927 (offset 1 line).
Hunk #8 succeeded at 1112 (offset 1 line).
Hunk #9 FAILED at 1140.
Hunk #10 succeeded at 1930 (offset 6 lines).
1 out of 10 hunks FAILED -- rejects in file drivers/net/fec.c
patching file drivers/net/phy/micrel.c
patching file include/linux/micrel_phy.h
patching file sound/soc/imx/Kconfig
patching file sound/soc/imx/imx-sgtl5000.c
Patch 0001-Add-linux-support-for-congatec-evaluation-board-qmx6q.patch does
not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/pablo/yocto/rootfs_builder/build_cgtqmx6/tmp/work/cgtqmx6-poky-linux-gnueabi/linux-imx/3.0.35-r37.14/temp/log.do_patch.29882
ERROR: Task 278
(/home/pablo/yocto/rootfs_builder/sources/meta-fsl-arm/recipes-kernel/linux/
linux-imx_3.0.35.bb, do_patch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1310 tasks of which 58 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:

/home/pablo/yocto/rootfs_builder/sources/meta-fsl-arm/recipes-kernel/linux/
linux-imx_3.0.35.bb, do_patch
Summary: There were 3 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


/Pablo

--047d7b5d4f78559fa404e84a6840
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried to build a image for congatec ang got the followin=
g error<br><div><br>Execution was interrupted, returning a non-zero exit co=
de.<br>pablo@pablo:~/yocto/rootfs_builder/build_cgtqmx6$ bitbake fsl-image-=
gui<br>
Loading cache: 100% |###########################################| ETA:=A0 0=
0:00:00<br>Loaded 29 entries from dependency cache.<br>WARNING: Unable to g=
et checksum for linux-boundary SRC_URI entry defconfig: file could not be f=
ound<br>
Parsing recipes: 100% |#########################################| Time: 00:=
03:05<br>Parsing of 1336 .bb files complete (22 cached, 1314 parsed). 1728 =
targets, 80 skipped, 0 masked, 0 errors.<br>NOTE: Resolving any missing tas=
k queue dependencies<br>
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)<br>NO=
TE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br>NOTE: mul=
tiple providers are available for jpeg-native (jpeg-native, libjpeg-turbo-n=
ative)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg-native<br>=
<br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.20.=
0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;i686-linux&quot;<br>=
NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>M=
ACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;cgtqmx6&quot;<br>DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=
=A0 =3D &quot;1.5&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a vfp n=
eon callconvention-hard cortexa9&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;tritech-cngt-qmx6:5445f71fc812a5fcf9bd67a26a500284af16ad39&quot;<br>meta-=
oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;tritech-cngt-qmx6:2a463dddcf76d7=
fa437e96f6cf0210143e97a904&quot;<br>
meta-fsl-arm=A0=A0=A0=A0=A0 =3D &quot;tritech-cngt-qmx6:d334d3c7388e41d720d=
d0c8e0cb76fab51a6e46a&quot;<br>meta-fsl-arm-extra =3D &quot;tritech-cngt-qm=
x6:054e9945f4916dcd41c989900fb18d04110aa6a6&quot;<br>meta-fsl-demos=A0=A0=
=A0 =3D &quot;tritech-cngt-qmx6:393b0119d513f9abf7b0570ab0d32b81583dedca&qu=
ot;<br>
<br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Exe=
cuting RunQueue Tasks<br>WARNING: Failed to fetch URL <a href=3D"http://www=
.apache.org/dist/subversion/subversion-1.7.10.tar.bz2">http://www.apache.or=
g/dist/subversion/subversion-1.7.10.tar.bz2</a>, attempting MIRRORS if avai=
lable<br>
WARNING: Failed to fetch URL <a href=3D"http://downloads.sourceforge.net/pr=
oject/libpng/libpng16/1.6.3/libpng-1.6.3.tar.xz">http://downloads.sourcefor=
ge.net/project/libpng/libpng16/1.6.3/libpng-1.6.3.tar.xz</a>, attempting MI=
RRORS if available<br>
ERROR: Command Error: exit status: 1=A0 Output:<br>Applying patch 0001-Add-=
linux-support-for-congatec-evaluation-board-qmx6q.patch<br>patching file ar=
ch/arm/configs/qmx6_defconfig<br>patching file arch/arm/configs/qmx6_update=
r_defconfig<br>
patching file arch/arm/mach-mx6/Kconfig<br>patching file arch/arm/mach-mx6/=
Makefile<br>patching file arch/arm/mach-mx6/board-mx6dl_qmx6.h<br>patching =
file arch/arm/mach-mx6/board-mx6q_qmx6.c<br>patching file arch/arm/mach-mx6=
/board-mx6q_qmx6.h<br>
patching file arch/arm/mach-mx6/mx6q_qmx6_pmic_pfuze100.c<br>patching file =
arch/arm/plat-mxc/include/mach/esdhc.h<br>patching file arch/arm/tools/mach=
-types<br>patching file drivers/mmc/host/sdhci-esdhc-imx.c<br>patching file=
 drivers/net/fec.c<br>
Hunk #3 succeeded at 200 (offset 1 line).<br>Hunk #4 succeeded at 250 (offs=
et 1 line).<br>Hunk #5 succeeded at 518 (offset 1 line).<br>Hunk #6 succeed=
ed at 768 (offset 1 line).<br>Hunk #7 succeeded at 927 (offset 1 line).<br>
Hunk #8 succeeded at 1112 (offset 1 line).<br>Hunk #9 FAILED at 1140.<br>Hu=
nk #10 succeeded at 1930 (offset 6 lines).<br>1 out of 10 hunks FAILED -- r=
ejects in file drivers/net/fec.c<br>patching file drivers/net/phy/micrel.c<=
br>
patching file include/linux/micrel_phy.h<br>patching file sound/soc/imx/Kco=
nfig<br>patching file sound/soc/imx/imx-sgtl5000.c<br>Patch 0001-Add-linux-=
support-for-congatec-evaluation-board-qmx6q.patch does not apply (enforce w=
ith -f)<br>
ERROR: Function failed: patch_do_patch<br>ERROR: Logfile of failure stored =
in: /home/pablo/yocto/rootfs_builder/build_cgtqmx6/tmp/work/cgtqmx6-poky-li=
nux-gnueabi/linux-imx/3.0.35-r37.14/temp/log.do_patch.29882<br>ERROR: Task =
278 (/home/pablo/yocto/rootfs_builder/sources/meta-fsl-arm/recipes-kernel/l=
inux/<a href=3D"http://linux-imx_3.0.35.bb">linux-imx_3.0.35.bb</a>, do_pat=
ch) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 1310 tasks of which 58 didn&#39;t need to be=
 rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Summa=
ry: 1 task failed:<br>=A0 /home/pablo/yocto/rootfs_builder/sources/meta-fsl=
-arm/recipes-kernel/linux/<a href=3D"http://linux-imx_3.0.35.bb">linux-imx_=
3.0.35.bb</a>, do_patch<br>
Summary: There were 3 WARNING messages shown.<br>Summary: There were 2 ERRO=
R messages shown, returning a non-zero exit code.<br><br clear=3D"all"><div=
><br>/Pablo<br></div>
</div></div>

--047d7b5d4f78559fa404e84a6840--
