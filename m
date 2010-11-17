Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 205234C80FAC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 19:36:21 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2010 17:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574540542"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 17:36:20 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 09:35:49 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 09:35:48 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 09:35:48 +0800
Thread-Topic: [PATCH 00/12] X11-libs, Dexuan, 2010.11.16
Thread-Index: AcuFpfBos4pa6HTtRWOzVzeJw0HYgQAUSi+Q
Message-ID: <1865303E0DED764181A9D882DEF65FB6808B4A9CBD@shsmsx502.ccr.corp.intel.com>
References: <cover.1289922022.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1289922022.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 00/12] X11-libs, Dexuan, 2010.11.16
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
X-List-Received-Date: Wed, 17 Nov 2010 01:36:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/mast=
er

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (12):
  damageproto: upgrade from 1.2.0 to the latest version 1.2.1
  fixesproto: upgrade from 4.1.1 to the latest version 4.1.2
  fontsproto: upgrade from 2.1.0 to the latest version 2.1.1
  glproto: upgrade from 1.4.11 to the latest version 1.4.12
  kbproto: upgrade from 1.0.4 to the latest version 1.0.5
  randrproto: upgrade from 1.3.1 to the latest version 1.3.2
  recordproto: upgrade from 1.14 to the latest version 1.14.1
  scrnsaverproto: upgrade from 1.2.0 to the latest version 1.2.1
  videoproto: upgrade from 2.3.0 to the latest version 2.3.1
  xcmiscproto: upgrade from 1.2.0 to the latest version 1.2.1
  xextproto: upgrade from 7.1.1 to the latest version 7.1.2
  Distro Tracking: update distro tracking field for recipes of Graphics
    libs

 .../conf/distro/include/distro_tracking_fields.inc |   66 ++++++++++------=
----
 .../distro/include/preferred-xorg-versions.inc     |   38 ++++++------
 ...bxscrnsaver_1.2.0.bb =3D> libxscrnsaver_1.2.1.bb} |    2 +-
 .../{damageproto_1.2.0.bb =3D> damageproto_1.2.1.bb} |    2 +-
 .../xorg-proto/fixesproto_4.1.1.bb                 |   11 ---
 .../xorg-proto/fixesproto_4.1.2.bb                 |   11 +++
 .../{fontsproto_2.1.0.bb =3D> fontsproto_2.1.1.bb}   |    2 +-
 .../{glproto_1.4.11.bb =3D> glproto_1.4.12.bb}       |    2 +-
 .../{kbproto_1.0.4.bb =3D> kbproto_1.0.5.bb}         |    2 +-
 .../{randrproto_1.3.1.bb =3D> randrproto_1.3.2.bb}   |    2 +-
 .../{recordproto_1.14.bb =3D> recordproto_1.14.1.bb} |    2 +-
 .../{videoproto_2.3.0.bb =3D> videoproto_2.3.1.bb}   |    2 +-
 .../{xcmiscproto_1.2.0.bb =3D> xcmiscproto_1.2.1.bb} |    2 +-
 .../{xextproto_7.1.1.bb =3D> xextproto_7.1.2.bb}     |    0
 14 files changed, 72 insertions(+), 72 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{libxscrnsaver_1.2.0.bb =3D> libxscr=
nsaver_1.2.1.bb} (95%)
 rename meta/recipes-graphics/xorg-proto/{damageproto_1.2.0.bb =3D> damagep=
roto_1.2.1.bb} (96%)
 delete mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
 rename meta/recipes-graphics/xorg-proto/{fontsproto_2.1.0.bb =3D> fontspro=
to_2.1.1.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{glproto_1.4.11.bb =3D> glproto_1.=
4.12.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{kbproto_1.0.4.bb =3D> kbproto_1.0=
.5.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{randrproto_1.3.1.bb =3D> randrpro=
to_1.3.2.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{recordproto_1.14.bb =3D> recordpr=
oto_1.14.1.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{videoproto_2.3.0.bb =3D> videopro=
to_2.3.1.bb} (93%)
 rename meta/recipes-graphics/xorg-proto/{xcmiscproto_1.2.0.bb =3D> xcmiscp=
roto_1.2.1.bb} (95%)
 rename meta/recipes-graphics/xorg-proto/{xextproto_7.1.1.bb =3D> xextproto=
_7.1.2.bb} (100%)

--=20
1.7.2


