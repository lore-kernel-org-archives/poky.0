Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FCAA4C810D2
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 21:19:26 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Jan 2011 19:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="375455637"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 19:19:25 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 11:19:04 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 17 Jan 2011 11:19:03 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "Mei, Lei" <lei.mei@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
Date: Mon, 17 Jan 2011 11:19:01 +0800
Thread-Topic: [poky] [PATCH 0/1]psplash_svn.bb: change the boot logo
Thread-Index: Acu1hRFAYshIuSdlQ/augDnqw5kxFQAb+Y4w
Message-ID: <749B9D3DBF0F054390025D9EAFF47F2231B515D4@shsmsx501.ccr.corp.intel.com>
References: <cover.1295185803.git.lei.mei@intel.com>
In-Reply-To: <cover.1295185803.git.lei.mei@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1]psplash_svn.bb: change the boot logo
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
X-List-Received-Date: Mon, 17 Jan 2011 03:19:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

	Please don't merge this patch, the color of logo didn't match the backgrou=
nd, I didn't find this problem because I use vnc to test it before, I will =
send a new patch for this.

Thanks
Lei=20

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
>On Behalf Of Mei Lei
>Sent: Sunday, January 16, 2011 9:56 PM
>To: poky@yoctoproject.org
>Subject: [poky] [PATCH 0/1]psplash_svn.bb: change the boot logo
>
>Change the boot logo from poky to yocto
>
>Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: lmei3/changebootlogo
>  Browse:
>http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlmei3/changebootlo=
go
>
>Thanks,
>    Mei Lei <lei.mei@intel.com>
>---
>
>
>Mei Lei (1):
>  psplash_svn.bb: Change poky boot logo to yocto logo
>
> meta/recipes-core/psplash/files/psplash-poky-img.h | 1013
>++++++++++++++++++++
> meta/recipes-core/psplash/psplash_svn.bb           |    9 +-
> 2 files changed, 1020 insertions(+), 2 deletions(-)
> create mode 100644 meta/recipes-core/psplash/files/psplash-poky-img.h
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

