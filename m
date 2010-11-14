Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F22F94C80B6B
	for <poky@yoctoproject.org>; Sat, 13 Nov 2010 18:56:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2010 16:56:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,193,1288594800"; d="scan'208";a="573477375"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2010 16:56:38 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 14 Nov 2010 08:56:36 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 14 Nov 2010 08:56:35 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Marc <mbalcells@gmail.com>, "Garman, Scott A" <scott.a.garman@intel.com>
Date: Sun, 14 Nov 2010 08:56:33 +0800
Thread-Topic: [poky] newbie recipe question
Thread-Index: AcuDT/oeKSIxEpv4SB6QBZVTtPYLAwARpP8Q
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2A9B4E64@shsmsx502.ccr.corp.intel.com>
References: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
	<4CDD8FFF.6090707@intel.com>
	<AANLkTikQqNmh-zk1iBuGp+gcRNXiJcgQru6J78eRW9JN@mail.gmail.com>
In-Reply-To: <AANLkTikQqNmh-zk1iBuGp+gcRNXiJcgQru6J78eRW9JN@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: newbie recipe question
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
X-List-Received-Date: Sun, 14 Nov 2010 00:56:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Marc
Sent: Sunday, November 14, 2010 12:29 AM

> Yes it works on files but not on subdirectories

Then I think Darren's suggestion is what you expect: write a install script=
 which
contains all the tricks you want (subdirectory, *, ...), and then have do_i=
nstall
invoke that script directly...

Thanks,
Kevin

