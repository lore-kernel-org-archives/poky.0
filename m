Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D3E3E00C5F; Thu, 17 Jan 2019 01:20:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F057E00872
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 01:20:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id DD96318572;
	Thu, 17 Jan 2019 10:20:45 +0100 (CET)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id mRMYCU3ppXtJ; Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 81B1018573;
	Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5D87B1A082;
	Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 525091A07F;
	Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from XBOX01.axis.com (xbox01.axis.com [10.0.5.15])
	by thoth.se.axis.com (Postfix) with ESMTP id 468122FB8;
	Thu, 17 Jan 2019 10:20:42 +0100 (CET)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX01.axis.com (10.0.5.15) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Thu, 17 Jan 2019 10:20:42 +0100
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%22]) with mapi id
	15.00.1365.000; Thu, 17 Jan 2019 10:20:41 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: srinivasan <srinivasan.rns@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432:
	Syntax error: Unterminated quoted string
Thread-Index: AQHUriIZ+gOAkFUHpku3aMq+HT+896WzLjhQ
Date: Thu, 17 Jan 2019 09:20:41 +0000
Message-ID: <1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
In-Reply-To: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
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
X-List-Received-Date: Thu, 17 Jan 2019 09:20:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[ Recipient list pruned to not cross-post to every Yocto related mailing=20
  list out there... ]

> -----Original Message-----
> From: poky-bounces@yoctoproject.org <poky-bounces@yoctoproject.org> On
> Behalf Of srinivasan
> Sent: den 17 januari 2019 06:03
> To: yocto-bsp@yoctoproject.org; yocto-builds@yoctoproject.org; meta-
> intel@yoctoproject.org; Development list for the linux-yocto*.git Linux
> kernel repositories <linux-yocto@yoctoproject.org>;
> poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
> yocto@yoctoproject.org; meta-freescale@yoctoproject.org; meta-
> freescale-request@yoctoproject.org
> Subject: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432:
> Syntax error: Unterminated quoted string
>=20
> Dear Yocto Experts,
>=20
> I am trying to customize my vendor specific Yocto BSP's to my custom
> OS.  I am facing the below error, could you please do the needful or
> provide me some pointers from your end for solving this issue
>=20
> Error:
> $ bitbake fsl-image-validation-imx
> WARNING: Host distribution "ubuntu-18.04" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.
> Loading cache: 100%
> |######################################################################
> #######################################################################
> #######################################################################
> ###########################|
> Time: 0:00:00
> Loaded 3196 entries from dependency cache.
> Parsing recipes: 100%
> |######################################################################
> #######################################################################
> #######################################################################
> #########################|
> Time: 0:00:02
> Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
> targets, 398 skipped, 6 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>=20
> Build Configuration:
> BB_VERSION           =3D "1.38.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "aarch64-poky-linux"
> MACHINE              =3D "imx8mmevk"
> DISTRO               =3D "custom-TRK"
> DISTRO_VERSION       =3D "${custom_DISTRO_VERSION}"
> TUNE_FEATURES        =3D "aarch64"
> TARGET_FPU           =3D ""
> meta-traktor-imx8    =3D "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
> meta-traktor         =3D "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
> meta-qt5             =3D "qt-
> 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
> meta-custom        =3D "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
> meta-freescale       =3D "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
> meta
> meta-poky            =3D "sumo:623b77885051174d0e05198843e739110977bd18"
> meta-oe
> meta-python
> meta-networking      =3D "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> meta-bsp
> meta-sdk             =3D "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
>=20
> Initialising tasks: 100%
> |######################################################################
> #######################################################################
> #######################################################################
> ######################|
> Time: 0:00:02
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
> (log file is located at
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> r89/temp/log.do_install.80432)
> ERROR: Logfile of failure stored in:
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> r89/temp/log.do_install.80432
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are
> ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
> cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
> 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
> s/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['quilt-native',
> 'pseudo-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> |
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> r89/temp/run.do_install.80432:
> 176:
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> r89/temp/run.do_install.80432:
> Syntax error: Unterminated quoted string
> | WARNING: exit code 2 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> r89/temp/log.do_install.80432)
> ERROR: Task
> (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
> ipes-core/base-files/base-files_3.0.14.bb:do_install)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't need to
> be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>=20
> /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
> pes-core/base-files/base-files_3.0.14.bb:do_install
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> srinishanmugam@ni-bln-
> 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
>=20
>=20
> Kindly do the needful,
> Many Thanks in advance

Have you looked at the contents of=20
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distr=
o_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_inst=
all.80432=20
to try to determine what caused the erroneous syntax? Otherwise do that,=20
and if you still cannot tell what causes the problem, please attach the=20
file for us to look at.

//Peter


