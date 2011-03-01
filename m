Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E3914C805B4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 19:30:40 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Feb 2011 17:30:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,244,1297065600"; d="scan'208";a="395390508"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 28 Feb 2011 17:30:40 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Mar 2011 09:30:24 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 1 Mar 2011
	09:30:23 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 1 Mar 2011 09:30:22 +0800
Thread-Topic: [poky] [PATCH 1/1] ADT: Fix several bugs for adt installer
Thread-Index: AcvUAFUam8+fJptQTzG15j5TDLb3UAAAEVDQABYp1QAA1be6IA==
Message-ID: <789F9655DD1B8F43B48D77C5D306597332E26A28@shsmsx501.ccr.corp.intel.com>
References: <cover.1298594898.git.liping.ke@intel.com>
	<be12658535c42549fb75f8c49e5b0e8a18aab150.1298594898.git.liping.ke@intel.com>
	<789F9655DD1B8F43B48D77C5D306597332DB3C40@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA952FFE75EB@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA952FFE75EB@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] ADT: Fix several bugs for adt installer
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
X-List-Received-Date: Tue, 01 Mar 2011 01:30:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

Thanks for the comment. I have updated the patch and re-sent it.

Any problem, just let me know.

Thanks& Regards,
criping

> -----Original Message-----
> From: Zhang, Jessica
> Sent: Friday, February 25, 2011 3:34 AM
> To: Ke, Liping; Ke, Liping; poky@yoctoproject.org
> Subject: RE: [poky] [PATCH 1/1] ADT: Fix several bugs for adt installer
>=20
> Ke, Liping wrote:
> > Hi, Jessica
> >
> > Since SDK image is now changed, if we want to extract sdk unfs, we
> > should So in configuration file, I set below lines:
> >
> > YOCTOADT_ROOTFS_arm=3D"minimal sato-sdk"
> > YOCTOADT_TARGET_SYSROOT_IMAGE_arm=3D"sato-sdk"
> >
> >
> > Thanks& Regards,
> > criping
> >
> >
> >> -----Original Message-----
> >> From: poky-bounces@yoctoproject.org [mailto:poky-
> >> bounces@yoctoproject.org] On Behalf Of Liping Ke
> >> Sent: Friday, February 25, 2011 8:56 AM
> >> To: poky@yoctoproject.org
> >> Subject: [poky] [PATCH 1/1] ADT: Fix several bugs for adt installer
> >>
> >> From: Liping Ke <liping.ke@intel.com>
> >>
> >> Two bugs are found
> >> 1) image download file path is not correct. So even if file is
> >>    downloaded already, it can't be detected.
> >> 2) sdk image now is renamed as sato-sdk, we need to change the name
> >> accordingly.
> >>
> >> Signed-off-by: Liping Ke <liping.ke@intel.com>
> >> ---
> >>  .../installer/adt-installer/adt_installer          |    9 +++++----
> >>  .../installer/adt-installer/scripts/data_define    |    2 +-
> >>  2 files changed, 6 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/meta/recipes-devtools/installer/adt-
> >> installer/adt_installer b/meta/recipes-devtools/installer/adt-
> >> installer/adt_installer index 1f481de..cca576f 100755
> >> --- a/meta/recipes-devtools/installer/adt-installer/adt_installer
> >> +++ b/meta/recipes-devtools/installer/adt-installer/adt_installer @@
> >> -216,17 +216,18 @@ done
> >>
> >>  download_file()
> >>  {
> >> -if [ -f "$LOCAL_DOWNLOAD/$1" ]; then
> >> -  confirm_download $1
> >> +local filename=3D`echo ${1##*/}`
> >> +if [ -f "$LOCAL_DOWNLOAD/$filename" ]; then
> >> +  confirm_download $filename
> >>    result=3D"$?"
> >>    if [ ! "$result" =3D=3D "0" ]; then
> >>      return
> >>    else
> >>      echo "Removing old file [$1]"
> >> -    rm -rf "$LOCAL_DOWNLOAD/$1"
> >> +    rm -rf "$LOCAL_DOWNLOAD/$filename"
> >>    fi
> >>  fi
> >> -echo_info "Downloading file: $1..."
> >> +echo_info "Downloading file: $filename..."
> >>  wget "$YOCTOADT_IPKG_REPO/$1" -P $LOCAL_DOWNLOAD
> >> --progress=3Dbar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE"
> >>  }
> >>
> >> diff --git a/meta/recipes-devtools/installer/adt-
> >> installer/scripts/data_define b/meta/recipes-devtools/installer/adt-
> >> installer/scripts/data_define index 2895c4f..f9a6a4f 100644
> >> ---
> >> a/meta/recipes-devtools/installer/adt-installer/scripts/data_define
> >> +++
> >> b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
> >> @@ -31,7 +31,7 @@ OPKG_LIBDIR=3D"/var/lib"
> >>
> >>  # List all supported root fs types and target types,
> >>  # it will be used in user configuration validity checking
> >> -YOCTOADT_SUPPORTED_ROOTFS=3D"minimal sato sdk lsb"
> >> +YOCTOADT_SUPPORTED_ROOTFS=3D"minimal sato sato-sdk lsb"
>=20
> Liping,
>=20
> The full list of supported ROOTFS are: minimal, minimal-dev, sato,
> sato-dev,
> sato-sdk, lsb, lsb-dev, lsb-sdk.  Also, can you update the list in the
> comment in the adt_installer.conf as well?
>=20
> Thanks,
> Jessica
>=20
> >>  YOCTOADT_SUPPORTED_TARGETS=3D"x86 x86_64 arm powerpc mips"
> >>  # Different host (32 bit or 64 bit) will have different opkg  #
> >> configuration files --
> >> 1.7.0.4
> >>
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky

