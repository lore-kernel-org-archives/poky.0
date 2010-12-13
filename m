Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A5474C810C0;
	Mon, 13 Dec 2010 10:31:05 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDGV2Vg025472;
	Mon, 13 Dec 2010 08:31:02 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 08:31:02 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 08:31:02 -0800
Message-ID: <4D064A44.6080005@windriver.com>
Date: Mon, 13 Dec 2010 10:31:00 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 13 Dec 2010 16:31:02.0657 (UTC)
	FILETIME=[21DCE710:01CB9AE3]
X-Mailman-Approved-At: Mon, 13 Dec 2010 11:10:57 -0600
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
X-List-Received-Date: Mon, 13 Dec 2010 16:31:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/13/10 5:53 AM, Tian, Kevin wrote:
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

I have the work done and tested.  Is it too late to submit this?

(There are no code changes, just recipe Description/Summary changes..)

> "Zypper/RPM (small writeup)", "WIP, Done by Dec 06" (Mark/Qing)

The write up is done, and outside of the tree.. I just have to post it on the wiki..

> "oprofileUI", "WIP, done by Dec 10 " (Jessica)
> 
> --M2SC--
> "Distro Audit: Licence Checksums ", "WIP, done by Dec 10 " (Saul)
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
> "Distro Audit: Src Checksums", "WIP, Done by Dec 9" (Saul)
> "enable KVM with qemu", "on track" (Saul/Edwin)
> "Performance Enhancement Completed", "on track being reviewed" (Saul/Dongxiao/Qing)
> "User specified qemu config support", "on track for Dec 9" (Saul/Criping)
> "SDK Version Control support in SDK generator installer", "on track" (Jessica)
> "Tracing: Initial SystemTap recipe", "on track" (Tom)
> "Documentation for swabber", "on track" (Alex)
> "Defect triage process in public documented and implemented" (Saul)
> 
> Thanks
> Kevin


