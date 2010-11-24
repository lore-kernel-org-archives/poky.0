Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AEF14C803A5
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 06:12:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 04:12:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352705726"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 04:12:00 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 20:11:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 24 Nov 2010 20:11:46 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Wed, 24 Nov 2010 20:11:44 +0800
Thread-Topic: [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS immediately
Thread-Index: AcuLlu/CgLPH0mKHSbOJpPiCyG7dGAAOVoAQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3E152BA3@shsmsx502.ccr.corp.intel.com>
References: <c6d829$pkuj17@fmsmga001.fm.intel.com>
In-Reply-To: <c6d829$pkuj17@fmsmga001.fm.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Lock, Joshua" <joshua.lock@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS immediately
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
X-List-Received-Date: Wed, 24 Nov 2010 12:12:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please hold on taking this patch.

Josh mentioned to me that below change is risky given below comment in base=
.bbclass:

# THISDIR only works properly with imediate expansion as it has to run
# in the context of the location its used (:=3D)
THISDIR =3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"

The comment seems controversial to the actual assignment. When trying to un=
derstand
the trick behind, I decide using a simple alternative by including FILESEXT=
RAPATHS in
BB_BASEHASH_WHITELIST directly

An updated pull request will be sent out soon.

Thanks
Kevin

>From: Tian, Kevin
>Sent: Wednesday, November 24, 2010 12:27 PM
>
>There's no point to expand FILESEXTRAPATHS immediately, since the place wh=
ere
>it's referenced still use normal getVar(FILESEXTRAPATHS, d, True). This wa=
y
>it doesn't help anything except adding one more breaking variable on sstat=
e.
>
>Signed-off-by: Kevin Tian <kevin.tian@intel.com>
>---
> documentation/bsp-guide/bsp.xml                    |    2 +-
> .../recipes/formfactor/formfactor_0.0.bbappend     |    2 +-
> .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
> meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend |    2 +-
> 4 files changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp=
.xml
>index 9e25068..0d716a3 100644
>--- a/documentation/bsp-guide/bsp.xml
>+++ b/documentation/bsp-guide/bsp.xml
>@@ -307,7 +307,7 @@ meta-bsp/packages/image-creator/image-creator-native_0=
.1.bb
>                 The example below shows extra files contained in a folder=
 called ${PN} (the
>package name).
>             </para>
>             <programlisting>
>-FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>+FILESEXTRAPATHS =3D "${THISDIR}/${PN}"
>             </programlisting>
>             <para>
>             This technique allows the BSP to add machine-specific configu=
ration files to the
>layer directory,
>diff --git a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
>b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
>index 4a41d48..a64f367 100644
>--- a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
>+++ b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
>@@ -1,3 +1,3 @@
>-FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>+FILESEXTRAPATHS =3D "${THISDIR}/${PN}"
>
> PRINC =3D "1"
>diff --git a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
>b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
>index 9fa2937..77c5223 100644
>--- a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
>+++ b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
>@@ -1,3 +1,3 @@
>-FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>+FILESEXTRAPATHS =3D "${THISDIR}/${PN}"
> COMPATIBLE_MACHINE_emenlow =3D "emenlow"
> KMACHINE_emenlow  =3D "emenlow"
>diff --git a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
>b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
>index fac0921..c6f81d4 100644
>--- a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
>+++ b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
>@@ -1,3 +1,3 @@
>-FILESPATH :=3D "${FILESPATH}:${@os.path.dirname(bb.data.getVar('FILE', d,=
 True))}"
>+FILESEXTRAPATH =3D "${THISDIR}/${PN}"
> SRC_URI +=3D "file://defconfig"
> COMPATIBLE_MACHINE_emenlow =3D "emenlow"
>--
>1.6.0.4


