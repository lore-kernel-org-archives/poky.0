Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A6544C80052
	for <poky@pokylinux.org>; Sun, 14 Nov 2010 21:20:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2010 19:20:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,198,1288594800"; d="scan'208";a="626710729"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2010 19:20:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 15 Nov 2010 11:19:50 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 15 Nov 2010 11:19:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Mon, 15 Nov 2010 11:19:43 +0800
Thread-Topic: siggen.py: fix comparison around runtaskdeps
Thread-Index: AcuEc/KShq8jfE44SM2zSgZDmkrpvw==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2A9B5106@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: siggen.py: fix comparison around runtaskdeps
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
X-List-Received-Date: Mon, 15 Nov 2010 03:20:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

(sorry to use old pull request, as I haven't setup my box correctly yet.)

 bitbake/lib/bb/siggen.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

commit e0df54e800a811c355a748308218edb33f963e9a
Author: Kevin Tian <kevin.tian@intel.com>
Date:   Mon Nov 15 10:58:49 2010 +0800

    siggen.py: fix comparison around runtaskdeps

    two dep lists should be sorted before the comparison, or else it just
    causes false-positive confusion.

    Also fix 'taskdeps' to 'runtaskdeps' when printing out the difference.

    Signed-off-by: Kevin Tian <kevin.tian@intel.com>
Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/master

Thanks
Kevin

