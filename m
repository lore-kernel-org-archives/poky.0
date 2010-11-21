Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 153394C80B6B
	for <poky@pokylinux.org>; Sun, 21 Nov 2010 07:02:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2010 05:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="351415395"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2010 05:02:33 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 21 Nov 2010 21:02:32 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 21 Nov 2010 21:02:31 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 21 Nov 2010 21:02:30 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Sun, 21 Nov 2010 21:02:20 +0800
Thread-Topic: update about SSTATE status
Thread-Index: AcuJfFTEO+hDq39WTUGtBTHjWbwHgA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3A61970E@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: update about SSTATE status
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
X-List-Received-Date: Sun, 21 Nov 2010 13:02:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,

Recently I took some time to try out SSTATE prebuilt feature, and now I thi=
nk it's time
to summarize issues I've seen and also some enhancements I've made. All the=
 changes
are currently in poky-contrib:tk/sstate branch, which are still under test =
and on a slightly
old commit (at Nov.13).
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dtk/sstate

I use the sstate_cache generated from the 1st build as the SSTATE_DIR for t=
he 2nd=20
build, and then check the SSTATE use status in 2nd build. Most issues below=
 I think
apply to a MIRROR mode too.

I've observed SSTATE broken in below scenarios:

a) ~31 recipes fail to reuse sstate packages when the 1st build and the 2nd=
 build are
continuously build, when using same source tree
https://lists.yoctoproject.org/pipermail/poky/2010-November/000174.html

b) more recipes fail if the 2nd build was started in next day after when th=
e 1st build
was generated. This is related to DATE/TIME variables referenced by some ta=
sks.

c) My build machine suffered from a power down, and then all STATE packages=
 can't
be reused after reboot. Comparison between two builds show that some shell=
=20
variables change, e.g: GNOME_KEYRING_SOCKET, SSH_AUTH_SOCK, etc.

d) no STATE package from the 1st build could be reused when the two builds =
use
different source trees, though two source trees are identical with only dif=
ference on
the path. This is related to OEROOT

e) If there're changes on libc/gcc packages between the 1st build and the 2=
nd build,
the 2nd build will always fail, either on gcc-runtime or eglibc, or other l=
ibc/gcc
bootstrap packages. The reason is that sstate_installation skips -initial/-=
intermediate
packages which breaks bootstrap process.
https://lists.yoctoproject.org/pipermail/poky/2010-November/000270.html

The major problem for above issues is that many undesired variables which a=
re
bound to build environment are counted into signature generation. Bitbake t=
akes
a list of environmental variables from the shell and then convert into inte=
rnal
variables. We need to separate those from bitbake internal variables. So I =
split
BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE into two groups:

	BB_ENV_WHITELIST_BB/BB_ENV_EXTRAWHITE_BB
	BB_ENV_WHITELIST_SHELL/BB_ENV_EXTRAWHITE_SHELL

The 1st group covers variables defined internally in bitbake, while the oth=
er group
points to the true external environmental variables. This way we can always=
 wipe
the _SHELL group from the dependency chain, while use BB_BASEHASH_WHITELIST
to control bitbake variables:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D8e1b6a292b3c796c5c0273de76d2e83271c83e26

Above looks somewhat ugly, but it should improve current situation a lot. W=
e
do need a better way to mark such variable attribute efficiently though.

In the meantime, there're other two enhancements which are also helpful:

  - update-alternative expands an absolute path when appending to do_instal=
l,=20
which impacts signature:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3Da09df20442bcfc033b955992948e2dc2f6cbb0b4

  - BBCLASSEXTEND is not covered by BB_TASKHASH_WHITELIST, i.e=20
"virtual:native:" and "virtual:nativesdk:":
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D07697ff94ff1829ef16effb48c73a2312af6a2ff

The remaining thing in the list:

- more tests on my branch
- rebase to latest master
- address incremental build failure when libc/gcc recipes are changed. Tom =
Rini
gave a suggestion to use a similar 'deptask' as in previous stage. I need m=
ore
thought on that and not sure whether it can solve it completely. If there's=
 no clean=20
way, we may wait until libc/gcc bootstrap process is changed (sysroot to di=
fferent=20
places) which is a 1.0 task, and then suggest people to always wipe out rel=
ated=20
sstate packages when seeing those errors

Comments are welcomed.

Thanks
Kevin

