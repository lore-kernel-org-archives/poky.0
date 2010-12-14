Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6E8D4C811B9;
	Tue, 14 Dec 2010 01:50:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 23:50:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="686910609"
Received: from unknown (HELO [10.255.13.56]) ([10.255.13.56])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 23:50:13 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
Date: Tue, 14 Dec 2010 01:50:11 -0600
Message-ID: <1292313011.19586.2.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Mailman-Approved-At: Tue, 14 Dec 2010 08:38:10 -0600
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 14 Dec 2010 07:50:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-13 at 03:53 -0800, Tian, Kevin wrote:
> Hi, owners,
> 
> Since M2 code frozen happened last week and now M2 test has been started, could owners
> of each M2 sprint tasks update the latest status on the wiki?
> 
> https://wiki.yoctoproject.org/wiki/Yocto_1.0_Schedule
> 
> As Saul sent out earlier, we only accept bug fixes on M2 branch now. So if a given task has
> not been done (WIP or on track), could you either move it into M3 or fill an updated date
> when current one is past?
> 
> --M2SB--
> 
> "Distro Audit: Package Description/Summary completed", "WIP, Done by Dec 08" (Mark)
> "Zypper/RPM (small writeup)", "WIP, Done by Dec 06" (Mark/Qing)
> "oprofileUI", "WIP, done by Dec 10 " (Jessica)
> 
> --M2SC--
> "Distro Audit: Licence Checksums ", "WIP, done by Dec 10 " (Saul)
> "Zypper/RPM (upgrade to latest version)", "Starting, done by Dec 10" (Mark/Qing)
> "push of all relevant Wind River patchs to Yocto ", "WIP, on track for completion by Dec 03 " (Mark)
> "Tracing: blktrace and sysprof recipes ", "sysprof by Dec 03 " (Tom)

This is done, but there's a bug (581) against blktrace that I need to
look at.

> 
> --M2SD--
> "Yocto Installer for SDK Generator Installation functions support ", "WIP, done Dec 09" (Jessica)
> "Yocto Installer support for image-creator ", "WIP" (Jessica)
> 
> --M2SE--
> "Zypper/RPM (integration design)", "slipped out from sprint D" (Mark/Qing)
> "Distro Audit: Upgrades Completed (Phase1)", "WIP" (Saul)
> "Distro Audit: Src Checksums", "WIP, Done by Dec 9" (Saul)
> "enable KVM with qemu", "on track" (Saul/Edwin)
> "Performance Enhancement Completed", "on track being reviewed" (Saul/Dongxiao/Qing)
> "User specified qemu config support", "on track for Dec 9" (Saul/Criping)
> "SDK Version Control support in SDK generator installer", "on track" (Jessica)
> "Tracing: Initial SystemTap recipe", "on track" (Tom)

BSP work not on the schedule has pushed this out - I'll be getting to it
as soon as that work's done, sometime this week...

Tom

> "Documentation for swabber", "on track" (Alex)
> "Defect triage process in public documented and implemented" (Saul)
> 
> Thanks
> Kevin



