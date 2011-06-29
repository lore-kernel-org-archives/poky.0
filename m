Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9515D4C80039
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 07:43:02 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jun 2011 05:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,443,1304319600"; d="scan'208";a="21877744"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jun 2011 05:43:01 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Jun 2011 20:43:00 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Jun 2011 20:42:59 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 29 Jun 2011 20:42:59 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 29 Jun 2011 20:42:58 +0800
Thread-Topic: [PATCH 0/1][meta-intel] emenlow: fix some .bbappend files'
	names: poky -> core, etc
Thread-Index: AcwvIXu4DPLR7rBQShOnbG9eulAy+wHOGnPw
Message-ID: <1865303E0DED764181A9D882DEF65FB6A167F0C71A@shsmsx502.ccr.corp.intel.com>
References: <cover.1308553185.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1308553185.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/1][meta-intel] emenlow: fix some .bbappend files' names: poky -> core, etc
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
X-List-Received-Date: Wed, 29 Jun 2011 12:43:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cui, Dexuan wrote:
> Please review the patch.
>=20
> The following changes since commit
> 76d1178ba1a43cf6457c89717134aeb9f1275fae:=20
>=20
>   meta-intel: fix formfactor bbappends to use FILESEXTRAPATHS_prepend
> (2011-06-15 11:43:04 -0500)=20
>=20
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dcui/meta-intel-emenlow
> =20
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/meta-intel-e=
menlow
>=20
> Dexuan Cui (1):
>   emenlow: fix some .bbappend files' name: poky -> core, etc.
>=20
>  ...k-gmae.bbappend =3D> task-core-sdk-gmae.bbappend} |    0
>  ... task-core-standalone-gmae-sdk-target.bbappend} |    0
>  ..._4.7.2.bbappend =3D> qt4-x11-free_4.7.3.bbappend} |    0
>  3 files changed, 0 insertions(+), 0 deletions(-)
>  rename meta-emenlow/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend
>  =3D> task-core-sdk-gmae.bbappend} (100%) rename
>  meta-emenlow/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.b=
bappend
> =3D> task-core-standalone-gmae-sdk-target.bbappend} (100%) rename
> meta-emenlow/recipes-qt/qt4/{qt4-x11-free_4.7.2.bbappend =3D>
> qt4-x11-free_4.7.3.bbappend} (100%)  =20

Looks the patch was neglected somehow? :-)

Thanks,
-- Dexuan=

