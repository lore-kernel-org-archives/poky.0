Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A9C34C811CC
	for <poky@pokylinux.org>; Fri, 26 Nov 2010 06:06:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 04:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630516191"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 04:06:08 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 20:06:07 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 20:06:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 26 Nov 2010 20:06:05 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Fri, 26 Nov 2010 20:05:53 +0800
Thread-Topic: about sstate setscene slowness
Thread-Index: AcuNYkYTgK5hze14RTujn87NCGOizg==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C68279@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: about sstate setscene slowness
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
X-List-Received-Date: Fri, 26 Nov 2010 12:06:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I just realized that sstate setscene tasks are also launched through same i=
nterface
as normal tasks, i.e. 'exec' through fork_off_task. So the majority of slow=
ness comes
from the overhead of 'exec' too. Of course the disk i/o contentions also co=
ntribute
a bit which however is less obvious compared to the former factor in my cal=
culation.

Thanks
Kevin

