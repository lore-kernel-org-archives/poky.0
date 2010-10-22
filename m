Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40BB74C811A2
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 19:54:32 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Oct 2010 17:54:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="669691134"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 21 Oct 2010 17:54:31 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 22 Oct 2010 08:54:02 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 22 Oct 2010 08:54:01 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Fri, 22 Oct 2010 08:54:00 +0800
Thread-Topic: [PULL]  libtheora: add DEPENDS on libogg
Thread-Index: ActwNUV7UjU51QfeS9CumoVDvGW1TABTiEcg
Message-ID: <1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
References: <20101020085626.GA14696@qhe2-db>
In-Reply-To: <20101020085626.GA14696@qhe2-db>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL] libtheora: add DEPENDS on libogg
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
X-List-Received-Date: Fri, 22 Oct 2010 00:54:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

$ scripts/create-pull-request -r 27d06858b5f3138039bddecc0eaaee1e05e21b48 -=
b dcui/master
Note: <commit_id> parameter assumed as 'HEAD'

 meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

Dexuan Cui (1):
      libtheora: add DEPENDS on libogg

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddcui/mast=
er

commit 2ecf311fbca970f6ea2d80accc3f925b097b664e
Author: Dexuan Cui <dexuan.cui@intel.com>
Date:   Thu Oct 21 14:54:34 2010 +0800

    libtheora: add DEPENDS on libogg

    This is used to fix the following build failure:

     checking for oggpackB_read... no
    | configure: error: newer libogg version (1.1 or later) required

    Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>=

