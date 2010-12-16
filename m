Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83E574C80BCF
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 02:46:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 00:46:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="868822959"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 00:46:14 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 16:46:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 16:46:00 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 16 Dec 2010 16:45:57 +0800
Thread-Topic: [poky] [PATCH 0/1] Fix weird rebuild issue even when sstate
	signature doesn't change
Thread-Index: Acuccp35Z6qXKEqJSZCVhAxHZCaH1gAirW1w
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
In-Reply-To: <4D08E868.6090606@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Thu, 16 Dec 2010 08:46:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Thursday, December 16, 2010 12:10 AM
>
>Note to Richard: I'm still seeing a ton of Noexec messages every time I re=
build
>a package in this tree.  I thought I understood you to say they should hap=
pen
>at most once?
>

Yes, RP's previous patch does reduce the Noexec messages a lot. However the=
re
remains one problem. Current stamp file check also calculates the stamp of =
tasks
depended on. If those stamps are newer or not exist, the check return False=
 to
indicate mismatched stamp.

In 'noexec' case, some 'noexec' tasks happen to have some dependent tasks
skipped which thus don't generate stamp files. This makes the check always
failed for those 'noexec' tasks and thus you always observe the Noexec mess=
ages.

I have a patch to fix that, and will send out soon. :-)

Thanks
Kevin

