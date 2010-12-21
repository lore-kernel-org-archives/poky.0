Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6A8A4C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 12:16:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2010 10:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="870536144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 10:15:37 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Tue, 21 Dec 2010 10:15:37 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 21 Dec 2010 10:15:35 -0800
Thread-Topic: [poky] [PATCH 11/14] owl-video-widget: fix Makefile for super
	strict make 3.82
Thread-Index: AcucdUeVMyNvrGxpSVCcgA6GyoliygExasBw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9405196335@orsmsx504.amr.corp.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
	<a8b8557e4cb34b594bb620eb276bcaf7a8e0a8e3.1292430240.git.josh@linux.intel.com>
In-Reply-To: <a8b8557e4cb34b594bb620eb276bcaf7a8e0a8e3.1292430240.git.josh@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 11/14] owl-video-widget: fix Makefile for super	strict make 3.82
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
X-List-Received-Date: Tue, 21 Dec 2010 18:16:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Josh,
 After including your patch, my build was still failing on the owl-video re=
cipe. I noticed PR bump is missing in this commit.

Thanks,
Nitin


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Joshua Lock
> Sent: Wednesday, December 15, 2010 4:28 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 11/14] owl-video-widget: fix Makefile for super
> strict make 3.82
>=20
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  .../owl-video-widget/owl-video/make-382.patch      |   15
> +++++++++++++++
>  .../recipes-sato/owl-video-widget/owl-video_svn.bb |    3 ++-
>  2 files changed, 17 insertions(+), 1 deletions(-)
>  create mode 100644 meta/recipes-sato/owl-video-widget/owl-video/make-
> 382.patch
>=20
> diff --git a/meta/recipes-sato/owl-video-widget/owl-video/make-
> 382.patch b/meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
> new file mode 100644
> index 0000000..7d8aff7
> --- /dev/null
> +++ b/meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
> @@ -0,0 +1,15 @@
> +Make 3.82 is much stricter and demands tabs. Obey.
> +
> +JL - 15/12/10
> +
> +Index: video/Makefile.am
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- video.orig/Makefile.am
> ++++ video/Makefile.am
> +@@ -4,5 +4,5 @@ SUBDIRS =3D src
> + MAINTAINERCLEANFILES =3D aclocal.m4 compile config.guess config.sub
> configure depcomp intltool-extract intltool-merge intltool-update
> install-sh ltmain.sh Makefile.in missing
> +
> + snapshot:
> +-        $(MAKE) dist distdir=3D$(PACKAGE)-snap`date +"%Y%m%d"`
> ++	$(MAKE) dist distdir=3D$(PACKAGE)-snap`date +"%Y%m%d"`
> +
> diff --git a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
> b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
> index 07c52ef..5419bea 100644
> --- a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
> +++ b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
> @@ -21,7 +21,8 @@ SRC_URI =3D "svn://svn.o-
> hand.com/repos/misc/trunk;module=3Dvideo;proto=3Dhttp \
>             file://stock_volume-min.png \
>             file://stock_volume-med.png \
>             file://stock_volume-max.png \
> -           file://owl-video-widget.desktop"
> +           file://owl-video-widget.desktop \
> +	   file://make-382.patch"
>=20
>  inherit autotools pkgconfig
>=20
> --
> 1.7.3.3
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

