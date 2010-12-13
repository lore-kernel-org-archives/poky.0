Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 473224C80048;
	Mon, 13 Dec 2010 12:29:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 10:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="867695925"
Received: from unknown (HELO [10.24.5.122]) ([10.24.5.122])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 10:29:31 -0800
Message-ID: <4D06660B.30707@intel.com>
Date: Mon, 13 Dec 2010 10:29:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 13 Dec 2010 18:29:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2010 03:53 AM, Tian, Kevin wrote:
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
Pending Patch is in distro Stage

> "Zypper/RPM (upgrade to latest version)", "Starting, done by Dec 10" (Mark/Qing)
> "push of all relevant Wind River patchs to Yocto ", "WIP, on track for completion by Dec 03 " (Mark)
> "Tracing: blktrace and sysprof recipes ", "sysprof by Dec 03 " (Tom)
>
> --M2SD--
> "Yocto Installer for SDK Generator Installation functions support ", "WIP, done Dec 09" (Jessica)
> "Yocto Installer support for image-creator ", "WIP" (Jessica)
>
> --M2SE--
> "Zypper/RPM (integration design)", "slipped out from sprint D" (Mark/Qing)
> "Distro Audit: Upgrades Completed (Phase1)", "WIP" (Saul)
Phase one status was best effort on the the update list, and I will have 
a summary later this week.

> "Distro Audit: Src Checksums", "WIP, Done by Dec 9" (Saul)
All recipes now have SRC_URI Checksums, the checking work is part of the 
Fetch which is pending with Ke and Richard.

> "enable KVM with qemu", "on track" (Saul/Edwin)
Done and in Master

> "Performance Enhancement Completed", "on track being reviewed" (Saul/Dongxiao/Qing)
Code is being review by RP, and I think there is some questions about 
the usage of the hard links.

> "User specified qemu config support", "on track for Dec 9" (Saul/Criping)
Not sure what the status of this is currently.

> "SDK Version Control support in SDK generator installer", "on track" (Jessica)
> "Tracing: Initial SystemTap recipe", "on track" (Tom)
> "Documentation for swabber", "on track" (Alex)
> "Defect triage process in public documented and implemented" (Saul)
Bug Triage Process is on the Public website, some images need to be 
updated and I now have the source for those, this can be independent 
from the release process.

>
> Thanks
> Kevin


