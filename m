Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 529864C80332
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 04:34:53 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 02:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,273,1301900400"; d="scan'208";a="634725867"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2011 02:34:51 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Apr 2011 17:34:29 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Apr 2011 17:34:28 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 27 Apr 2011 17:34:07 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "Lock,
	Joshua" <joshua.lock@intel.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>, "He, Qing"
	<qing.he@intel.com>
Date: Wed, 27 Apr 2011 17:34:06 +0800
Thread-Topic: Processing extra field requested by bitbake -u in Cache
Thread-Index: AcwEvkCIijlc3wDuTVCHoLBWciUNaw==
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Processing extra field requested by bitbake -u in Cache
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
X-List-Received-Date: Wed, 27 Apr 2011 09:34:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

I am looking @ bug 770 Add mechanism to enable UI's to request extra data b=
e stored in the cache. We are now thinking about the possible solutions.

There are two choices:
1. Store extra cache fields in a separated small cache file, so non-ui mode=
 will only fetch the base cache file, if in ui-mode, it will load the extra=
 small cache (with the extra 3 fields, such as summary)
  Advantage: 1) Will 'not' change the cache invalidation mechanism. For non=
-ui mode, it will go the old path. If extra fields are required (ui-mode), =
we need to load the extra field into the memory.
            2) disk file size is optimized
  Disadvantage: cache code change will be big, since all data load/sync/ me=
thods need to be modified.

2. Have two big cache files, one is for ui mode, one is for non-ui mode
  Advantage: Code change will be a little smaller. When loading, if it's no=
n-ui mode, load smaller cache file. Otherwise, load bigger cache file. =20
  Disadvantage: 1) Cache invalidation mechanism (timestamp) is broken. When=
 mode switching, we need to invalidate all caches, reparsing, reloading tim=
e 30s.
              s) disk file size is bigger. 2*original_size (2*6M)

Any suggestions?

Thanks a lot for your help!

criping

