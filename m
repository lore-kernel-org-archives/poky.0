Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01D8C4C81016
	for <poky@pokylinux.org>; Tue, 26 Oct 2010 02:25:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Oct 2010 00:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,239,1286175600"; d="scan'208";a="340476058"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 26 Oct 2010 00:25:18 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 26 Oct 2010 15:24:19 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 26 Oct 2010 15:24:18 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "'poky@pokylinux.org'" <poky@pokylinux.org>
Date: Tue, 26 Oct 2010 15:24:17 +0800
Thread-Topic: [PULL] busybox: enable more options for tar to support more
	file formats
Thread-Index: ActwNUV7UjU51QfeS9CumoVDvGW1TABTiEcgANbEbkA=
Message-ID: <1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>
References: <20101020085626.GA14696@qhe2-db>
	<1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL] busybox: enable more options for tar to support more file formats
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
X-List-Received-Date: Tue, 26 Oct 2010 07:25:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

$ scripts/create-pull-request -r 2ecf311fbca970f6ea2d80accc3f925b097b664e -=
b dcui/master
Note: <commit_id> parameter assumed as 'HEAD'

 meta/recipes-core/busybox/busybox-1.16.2/defconfig |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

Dexuan Cui (1):
      busybox: enable more options for tar to support more file formats.

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/mast=
er


commit b952fae48c45e39a14ec9c24b0ee544a741c3f69
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Tue Oct 26 15:10:26 2010 +0800

    busybox: enable more options for tar to support more file formats.

    Fixes [BUGID #495]

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>=

