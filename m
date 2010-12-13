Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C50584C81110;
	Mon, 13 Dec 2010 12:32:27 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 10:32:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="867698294"
Received: from unknown (HELO [10.24.5.122]) ([10.24.5.122])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 10:32:27 -0800
Message-ID: <4D0666BA.7010707@intel.com>
Date: Mon, 13 Dec 2010 10:32:26 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5A7A1691@shsmsx502.ccr.corp.intel.com>
	<4D064A44.6080005@windriver.com>
In-Reply-To: <4D064A44.6080005@windriver.com>
X-Mailman-Approved-At: Tue, 14 Dec 2010 08:38:10 -0600
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
X-List-Received-Date: Mon, 13 Dec 2010 18:32:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2010 08:31 AM, Mark Hatle wrote:
> On 12/13/10 5:53 AM, Tian, Kevin wrote:
>> Hi, owners,
>>
>> Since M2 code frozen happened last week and now M2 test has been started, could owners
>> of each M2 sprint tasks update the latest status on the wiki?
>>
>> https://wiki.yoctoproject.org/wiki/Yocto_1.0_Schedule
>>
>> As Saul sent out earlier, we only accept bug fixes on M2 branch now. So if a given task has
>> not been done (WIP or on track), could you either move it into M3 or fill an updated date
>> when current one is past?
>>
>> --M2SB--
>>
>> "Distro Audit: Package Description/Summary completed", "WIP, Done by Dec 08" (Mark)
>
> I have the work done and tested.  Is it too late to submit this?
>

Mark, go ahead and submit it, so that we can have it available, and can 
make the call, there is clearly going to be a rebuild of M2 due to the 
kernel failures, but I am not sure that I want to bring in more than 
targeted changes at this point.

Remember we are in the stabilize window, which means targeted bug fixes.

Sau!

> (There are no code changes, just recipe Description/Summary changes..)
>
>> "Zypper/RPM (small writeup)", "WIP, Done by Dec 06" (Mark/Qing)
>
> The write up is done, and outside of the tree.. I just have to post it on the wiki..
>
>> "oprofileUI", "WIP, done by Dec 10 " (Jessica)
>>
>> --M2SC--
>> "Distro Audit: Licence Checksums ", "WIP, done by Dec 10 " (Saul)
>> "Zypper/RPM (upgrade to latest version)", "Starting, done by Dec 10" (Mark/Qing)
>> "push of all relevant Wind River patchs to Yocto ", "WIP, on track for completion by Dec 03 " (Mark)
>> "Tracing: blktrace and sysprof recipes ", "sysprof by Dec 03 " (Tom)
>>
>> --M2SD--
>> "Yocto Installer for SDK Generator Installation functions support ", "WIP, done Dec 09" (Jessica)
>> "Yocto Installer support for image-creator ", "WIP" (Jessica)
>>
>> --M2SE--
>> "Zypper/RPM (integration design)", "slipped out from sprint D" (Mark/Qing)
>> "Distro Audit: Upgrades Completed (Phase1)", "WIP" (Saul)
>> "Distro Audit: Src Checksums", "WIP, Done by Dec 9" (Saul)
>> "enable KVM with qemu", "on track" (Saul/Edwin)
>> "Performance Enhancement Completed", "on track being reviewed" (Saul/Dongxiao/Qing)
>> "User specified qemu config support", "on track for Dec 9" (Saul/Criping)
>> "SDK Version Control support in SDK generator installer", "on track" (Jessica)
>> "Tracing: Initial SystemTap recipe", "on track" (Tom)
>> "Documentation for swabber", "on track" (Alex)
>> "Defect triage process in public documented and implemented" (Saul)
>>
>> Thanks
>> Kevin
>


