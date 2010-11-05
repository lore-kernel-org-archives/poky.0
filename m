Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 003794C81003
	for <poky@pokylinux.org>; Fri,  5 Nov 2010 02:53:31 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Nov 2010 00:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,301,1286175600"; d="scan'208";a="854421352"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 05 Nov 2010 00:53:31 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 5 Nov 2010 15:53:30 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 5 Nov 2010
	15:53:28 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Fri, 5 Nov 2010 15:53:25 +0800
Thread-Topic: [PULL] two sstate fixes
Thread-Index: Act8voaqFcKPEwoUQaCdAMUP+IfN1A==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D190FD631@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AvdS BDqA BZEO Bj7J BwvL B5oy EklK FS8G FbwN FzWa G8p3
	HGTs I7OT JMsa JQHl
	Jxln; 1; cABvAGsAeQBAAHAAbwBrAHkAbABpAG4AdQB4AC4AbwByAGcA; Sosha1_v1; 7;
	{353E791F-1EA2-4F8A-9BE7-BBA4A63E5373};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Fri,
	05 Nov 2010 07:53:25
	GMT;WwBQAFUATABMAF0AIAB0AHcAbwAgAHMAcwB0AGEAdABlACAAZgBpAHgAZQBzAA==
x-cr-puzzleid: {353E791F-1EA2-4F8A-9BE7-BBA4A63E5373}
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PULL] two sstate fixes
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
X-List-Received-Date: Fri, 05 Nov 2010 07:53:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

 meta/classes/package.bbclass |    1 +
 meta/conf/distro/poky.conf   |    2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

commit bb9d4efa4076cfcf0998ecafb6d6b0969b97d224
Author: Kevin Tian <kevin.tian@intel.com>
Date:   Fri Nov 5 15:16:50 2010 +0800

    poky.conf: add PWD to BB_HASHBASE_WHITELIST

    Without doing this I can't reuse prebuilts generated from one directory=
 in another
    build directory which is really not comfortable for developers. Due to =
difference
    on PWD variable, base hash becomes different for every sstate package.

    So here PWD is added to the hase base whitelist, which makes most prebu=
ilts reusable
    now in a different build directory. However there still remains one iss=
ue about
    do_populate_sysroot sstate package. Absolute path is encoded in this ta=
sk which
    then blocks reuse on them. Perhaps we need some redesign for do_populat=
e_sysroot into
    two stages, with all absolute path related operations moved to the 2nd =
stage. This
    way then the 1st stage can be reused.

    Partially fix [BUGID #522]

    Signed-off-by Kevin Tian <kevin.tian@intel.com>

commit 599ccdfa9d53e43fb2e44fdfd57de5d91868428b
Author: Kevin Tian <kevin.tian@intel.com>
Date:   Tue Oct 26 15:54:43 2010 +0800

    package.bbclass: make sure 'sysroots' created before lockfile

    package sstate requires a lock under sysroots/, which however may not b=
e
    created when sstate_setscene functions are executed and then causes fai=
lures.
    here we make sure 'sysroots' created before do_package_setscene is exec=
uted.

    Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/master

Thanks
Kevin

