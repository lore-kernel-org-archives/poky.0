Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C12BE4C81278;
	Thu, 27 Jan 2011 19:30:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 17:30:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597212201"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 17:29:59 -0800
Message-ID: <4D421C16.2070308@intel.com>
Date: Thu, 27 Jan 2011 17:29:58 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295905272.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/2] linux-yocto: consolidated pull request
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
X-List-Received-Date: Fri, 28 Jan 2011 01:30:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2011 01:46 PM, Bruce Ashfield wrote:
> Saul/Richard,
>
> I'm batching two changes that I've been testing together.
>
> The first is explained by the patch itself, but basically it
> allows us to map multiple BSPs onto a single branch for building.
> There's no impact to existing BSPs, but as we go forward it means
> that if boards only differ by configuration we can avoid branch
> explosion in the kernel repo and pickup their different
> configurations. If at any point we need to break them out from
> using a common branch, that is an easy switch to do. I've been
> testing this with a test enablement of the atom-pc using the
> yocto/standar/base branch .. and it works nicely.
>
> The second is an update to pickup Tom's patches for the emenlow.
> Tom will follow up with changes to have the emenlow use the
> 2.6.37 kernel as well as the 2.6.34 kernel.
>
> These are based on top of the beagleboard commits I sent on
> Friday, which I've heard are working their way through the
> queue.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (2):
>    linux-yocto: allow multiple BSPs per branch
>    linux-yocto: update SRCREVs for emenlow
>
>   meta/classes/kernel-yocto.bbclass                  |    4 ++--
>   .../conf/distro/include/poky-default-revisions.inc |    6 +++---
>   .../kern-tools/kern-tools-native_git.bb            |    2 +-
>   3 files changed, 6 insertions(+), 6 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Oops, both where pulled

Sau!


