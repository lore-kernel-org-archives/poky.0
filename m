Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D1EA4C80815
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 19:58:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Nov 2010 17:58:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="862935306"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2010 17:58:04 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 09:57:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 1 Dec 2010
	09:57:12 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 1 Dec 2010 09:57:11 +0800
Thread-Topic: About the operator "??="
Thread-Index: AcuQ+xGLEfP2UAIORSyAo5XLjNLiFA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: About the operator "??="
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
X-List-Received-Date: Wed, 01 Dec 2010 01:58:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Recently when investigating the file parsing speed, I found the implementat=
ion of "??=3D" is another hot spot. This operator will not apply the defaul=
t assignment until the end of the parse, which is different from "?=3D". Ac=
cording to current poky, the users for "??=3D" is mostly the scm revisions =
stored in poky-default-revisions.inc.

Currently the final assignment logic for "??=3D" is added in finalize(), wh=
ich costs about 20% parsing time.=20

The differences between "??=3D" and "?=3D" are straight forward, however I =
don't fully understand in which senario the "??=3D" should be used. Or in o=
ther word, why those scm revisions should use "??=3D". Could you help to cl=
arify a bit? Thanks so much!

BTW, I noticed that openembedded doesn't use this operator.

Best Regards,
-- Dongxiao =

