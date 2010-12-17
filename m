Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DDC44C81081
	for <poky@pokylinux.org>; Fri, 17 Dec 2010 05:38:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Dec 2010 03:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,360,1288594800"; d="scan'208";a="584667259"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 17 Dec 2010 03:38:56 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 19:38:55 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 19:38:55 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 19:38:54 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Fri, 17 Dec 2010 19:38:30 +0800
Thread-Topic: Yocto LTP wiki page
Thread-Index: Acud3u1lfRgVTRGhQjyFZsa2kcQO3Q==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409B76@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto LTP wiki page
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
X-List-Received-Date: Fri, 17 Dec 2010 11:38:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,

I just create a new wiki page to track LTP status for Yocto Project:

https://wiki.yoctoproject.org/wiki/LTP_result

Embedded Linux distribution is unlike a typical desktop Linux, because it's=
 normally
customized for specific purpose and thus not all packages required by norma=
l Linux
test suites (LTP/POSIX/LSB) are included in a specific profile.

Given that, the major purpose of this wiki page is for tracking and referen=
ce. For
one we want to track the ongoing trend in each Yocto release/milestone, and=
 fix
regressions in time. In the meantime, we also want to understand what a fai=
lure
implicates. Is it simply come from the fact of customization, or from some =
problems
in installed packages? For the former we want to document them, and for the=
 latter
we'd like to fix them.

I tried to make the page simple, as there could be many combinations to sho=
w
the data (milestones, machines, error types, etc.). Now it's still experime=
ntal and
under development. So far I use qemux86 result from the 12/11 nightly resul=
t
as the example based on SDK profile. Later when our QA team finish the M2 t=
est,=20
we'll update this page to reflect latest milestone information.

Thanks
Kevin

