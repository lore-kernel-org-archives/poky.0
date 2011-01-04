Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECB3F4C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 23:22:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 21:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,270,1291622400"; d="scan'208";a="693286216"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 21:22:56 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 4 Jan 2011 13:22:24 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 4 Jan 2011 13:22:24 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 4 Jan 2011
	13:22:23 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 4 Jan 2011 13:22:21 +0800
Thread-Topic: [poky] [PATCH 00/59] Consolidate adt-installer pull request
Thread-Index: AcuroKV2lCWIYqsiQsW11JaUx96h2QALkwpA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7447F86A@shsmsx502.ccr.corp.intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 00/59] Consolidate adt-installer pull request
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
X-List-Received-Date: Tue, 04 Jan 2011 05:22:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica,

Since this is for the 1st checkin of a new feature, it's better to clean it=
 up into a=20
single patch, or a series of patches which are split based on functionality=
. Current
series are more like a working branch, and difficult for people to understa=
nd those
commits. :-)

Thanks
Kevin

>From: Jessica Zhang
>Sent: Tuesday, January 04, 2011 8:04 AM
>
>This is the consolidated pull request that contains all the changes for ad=
t_installer work,
>including the bitbake recipe file for creating the installer tar file unde=
r /tmp/deploy/sdk,
>after untar, run the adt-installer to install adt cross-toolchain and targ=
et sysroots.
>
>
>Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: jzhang/adt-installer
>  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Djzhang/a=
dt-installer
>
>Thanks,
>    Jessica Zhang <jessica.zhang@intel.com>
>---
>
>
>Jessica Zhang (9):
>  Correct messages, fix bug for parsing YOCTOADT_TARGET_ARCH variable
>    correctly
>  more messages cleanup, fix issues: 1) download all the specified
>    rootfs fiels, 2) add check for yocto_installer_internal, 3) error
>    out when sysroot image file or sysroot location are empty
>  Clean messaging, prompt consolidation and bug fixes
>  Correct messages, fix bug for parsing YOCTOADT_TARGET_ARCH variable
>    correctly
>  more messages cleanup, fix issues: 1) download all the specified
>    rootfs fiels, 2) add check for yocto_installer_internal, 3) error
>    out when sysroot image file or sysroot location are empty
>  Clean messaging, prompt consolidation and bug fixes
>  change file names, more clean up of messaging, add comments and
>    simplify config file entries, change code support new config file
>  missing files for change file names, more clean up of messaging, add
>    comments and simplify config file entries, change code support new
>    config file
>  Move version info to the beginning of conf file and fix a minor typo
>    in adt_installer.conf
>
>Liping Ke (50):
>  Add initial yocto adt installer script
>  New version of installer script
>  Redirect downloading information to both screen and log file
>  Change sdk version in configuration file to 0.9+snapshot
>  Change qemu kernel downloading output info to be noverbose
>  Make bar viewing for showing download progress instead of dot view
>  Update user configuration file for testing
>  If qemu file already exists, user can choose download new or keep the
>    old
>  Modify folders per Josh's suggestion
>  sudo is controlled in smaller granularity.
>  Add opkg source tarball for testing.
>  Add split include script file
>  Remove the param passing for readability
>  Remove redundant prompts
>  Move installer scripts to the decided folders
>  Add new folder under installer for conforming bb file path
>    conventions
>  Add installer scripts tarball generating bb file
>  Add just installer scripts code according to bb file logic
>  Make Silent installation as another option for avoiding bothering
>    users.
>  Removde Debug options from installer script
>  Remove unneccessary folder creation in do_deploy
>  Store pseudo database in target rootfs
>  Link ld.so.cache file into the host filesystem
>  Add initial yocto adt installer script
>  New version of installer script
>  Redirect downloading information to both screen and log file
>  Change sdk version in configuration file to 0.9+snapshot
>  Change qemu kernel downloading output info to be noverbose
>  Make bar viewing for showing download progress instead of dot view
>  Update user configuration file for testing
>  If qemu file already exists, user can choose download new or keep the
>    old
>  Modify folders per Josh's suggestion
>  sudo is controlled in smaller granularity.
>  Add opkg source tarball for testing.
>  Add split include script file
>  Remove the param passing for readability
>  Remove redundant prompts
>  Move installer scripts to the decided folders
>  Add new folder under installer for conforming bb file path
>    conventions
>  Add installer scripts tarball generating bb file
>  Add just installer scripts code according to bb file logic
>  Make Silent installation as another option for avoiding bothering
>    users.
>  Removde Debug options from installer script
>  Remove unneccessary folder creation in do_deploy
>  Store pseudo database in target rootfs
>  Link ld.so.cache file into the host filesystem
>  Remove old unused renamed files
>  Remove unused rename file
>  Fix several defects: sdk_version, relative path
>  Adjust the code according to installation configuration file changes.
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

