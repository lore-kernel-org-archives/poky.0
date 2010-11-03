Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E60A4C80BD4
	for <poky@pokylinux.org>; Tue,  2 Nov 2010 20:37:20 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2010 18:37:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,286,1286175600"; d="scan'208";a="343878463"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 02 Nov 2010 18:37:05 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 3 Nov 2010 09:36:14 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 3 Nov 2010
	09:36:12 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Mike Detwiler' <j.michael.detwiler@gmail.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Wed, 3 Nov 2010 09:36:11 +0800
Thread-Topic: [poky] Extending meta-toolchain-sdk
Thread-Index: Act6z5oD9Cia01CfRQqdiE0ziVmCgQAJaijQ
Message-ID: <1865303E0DED764181A9D882DEF65FB67A65C6F4AD@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
In-Reply-To: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Extending meta-toolchain-sdk
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 01:37:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mike Detwiler wrote:
> I have run 'bitbake meta-toolchain-sdk' and installed the tarball that
> it generates. However, I found that the sdk did not contain all the
> third-party libraries that I would like it to have. For example, the
> application I'm developing has a dependency on libgmp. I notice that
> there are bitbake files for gmp in meta/recipes-support/gmp. Is there
> a simple way (e.g. in build/conf/local.conf) to have this added to the
> list of libraries that are included in the sdk?
> -Mike

Hi Mike,
Can you please try the patch below?

Thanks,
-- Dexuan

------------------------------------------------------------------------

diff --git a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb b/meta/recipes-=
gnome/tasks/task-poky-sdk-gmae.bb
index b853ffc..3acb3ec 100644
--- a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
+++ b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
@@ -4,7 +4,7 @@

 DESCRIPTON =3D "Gnome Mobile And Embedded Software Development Kit for Ope=
nedHand Poky"
 LICENSE =3D "MIT"
-PR =3D "r8"
+PR =3D "r9"

 ALLOW_EMPTY =3D "1"

diff --git a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.=
bb b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
index 005d33b..70f5040 100644
--- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
+++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
@@ -4,7 +4,7 @@

 DESCRIPTON =3D "Gnome Mobile And Embedded Software Development Kit for Ope=
nedHand Poky"
 LICENSE =3D "MIT"
-PR =3D "r11"
+PR =3D "r12"

 ALLOW_EMPTY =3D "1"

diff --git a/meta/recipes-gnome/tasks/task-sdk-gmae.inc b/meta/recipes-gnom=
e/tasks/task-sdk-gmae.inc
index 11505ce..32ad49c 100644
--- a/meta/recipes-gnome/tasks/task-sdk-gmae.inc
+++ b/meta/recipes-gnome/tasks/task-sdk-gmae.inc
@@ -12,6 +12,7 @@ SDK-GMAE =3D " \
     libebook-dev \
     libxi-dev \
     libsqlite3-dev \
+    gmp-dev \
     "

 # TODO: gvfs-dev, mission-control=

