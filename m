Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1027C4C80132
	for <poky@pokylinux.org>; Wed,  3 Nov 2010 19:56:16 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Nov 2010 17:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,292,1286175600"; d="scan'208";a="570165719"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 03 Nov 2010 17:56:16 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 4 Nov 2010 08:55:44 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 4 Nov 2010
	08:55:44 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "'poky@pokylinux.org'" <poky@pokylinux.org>
Date: Thu, 4 Nov 2010 08:55:43 +0800
Thread-Topic: [PULL] fixes to eglibc and busybox
Thread-Index: ActwNUV7UjU51QfeS9CumoVDvGW1TABTiEcgANbEbkABtwBqkA==
Message-ID: <1865303E0DED764181A9D882DEF65FB67A65C6F4B3@shsmsx502.ccr.corp.intel.com>
References: <20101020085626.GA14696@qhe2-db>
	<1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL] fixes to eglibc and busybox
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
X-List-Received-Date: Thu, 04 Nov 2010 00:56:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

BTW: The fix to busybox is a RESEND since looks it was neglected. :-)

$ scripts/create-pull-request -r 2ecf311fbca970f6ea2d80accc3f925b097b664e -=
b dcui/master
Note: <commit_id> parameter assumed as 'HEAD'

 meta/recipes-core/busybox/busybox-1.16.2/defconfig |   14 +++++++-------
 meta/recipes-core/eglibc/eglibc-package.inc        |    2 +-
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

Dexuan Cui (2):
      busybox: enable more options for tar to support more file formats.
      eglibc: install the missing /etc/ld.so.conf into target

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/mast=
er

=20
commit 61e77cb2e9a240110c50925d1b3f908d14b02f24
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Tue Nov 2 15:42:09 2010 +0800

    eglibc: install the missing /etc/ld.so.conf into target

    ${sysconfdir} should be added into FILES_${PN}.

    Fixes [BUGID #511]

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>

commit b952fae48c45e39a14ec9c24b0ee544a741c3f69
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Tue Oct 26 15:10:26 2010 +0800

    busybox: enable more options for tar to support more file formats.

    Fixes [BUGID #495]

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>=

