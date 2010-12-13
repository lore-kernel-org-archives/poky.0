Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12FF04C811AB;
	Mon, 13 Dec 2010 05:58:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 03:58:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="686592479"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 03:58:45 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 19:58:43 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 19:58:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 19:58:42 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 13 Dec 2010 19:58:40 +0800
Thread-Topic: update status of M2 sprint tasks
Thread-Index: AcuavGSFfZ5sOVqBQ5iLJs8wzdJPSwAAIZBQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1694@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: update status of M2 sprint tasks
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
X-List-Received-Date: Mon, 13 Dec 2010 11:58:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried to CC all the owners in original mail, which however ended up to ne=
ed moderation
because too many recipients. (not sure why only Saul is kept. :-)) So pleas=
e take a look
on below list to make sure your owned item being updated.

Thanks
Kevin

>From: Tian, Kevin
>Sent: Monday, December 13, 2010 7:54 PM
>
>Hi, owners,
>
>Since M2 code frozen happened last week and now M2 test has been started, =
could owners
>of each M2 sprint tasks update the latest status on the wiki?
>
>https://wiki.yoctoproject.org/wiki/Yocto_1.0_Schedule
>
>As Saul sent out earlier, we only accept bug fixes on M2 branch now. So if=
 a given task has
>not been done (WIP or on track), could you either move it into M3 or fill =
an updated date
>when current one is past?
>
>--M2SB--
>
>"Distro Audit: Package Description/Summary completed", "WIP, Done by Dec 0=
8" (Mark)
>"Zypper/RPM (small writeup)", "WIP, Done by Dec 06" (Mark/Qing)
>"oprofileUI", "WIP, done by Dec 10 " (Jessica)
>
>--M2SC--
>"Distro Audit: Licence Checksums ", "WIP, done by Dec 10 " (Saul)
>"Zypper/RPM (upgrade to latest version)", "Starting, done by Dec 10" (Mark=
/Qing)
>"push of all relevant Wind River patchs to Yocto ", "WIP, on track for com=
pletion by Dec 03
>" (Mark)
>"Tracing: blktrace and sysprof recipes ", "sysprof by Dec 03 " (Tom)
>
>--M2SD--
>"Yocto Installer for SDK Generator Installation functions support ", "WIP,=
 done Dec 09"
>(Jessica)
>"Yocto Installer support for image-creator ", "WIP" (Jessica)
>
>--M2SE--
>"Zypper/RPM (integration design)", "slipped out from sprint D" (Mark/Qing)
>"Distro Audit: Upgrades Completed (Phase1)", "WIP" (Saul)
>"Distro Audit: Src Checksums", "WIP, Done by Dec 9" (Saul)
>"enable KVM with qemu", "on track" (Saul/Edwin)
>"Performance Enhancement Completed", "on track being reviewed" (Saul/Dongx=
iao/Qing)
>"User specified qemu config support", "on track for Dec 9" (Saul/Criping)
>"SDK Version Control support in SDK generator installer", "on track" (Jess=
ica)
>"Tracing: Initial SystemTap recipe", "on track" (Tom)
>"Documentation for swabber", "on track" (Alex)
>"Defect triage process in public documented and implemented" (Saul)
>
>Thanks
>Kevin
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

