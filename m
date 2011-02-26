Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC35A4C808F9
	for <poky@yoctoproject.org>; Sat, 26 Feb 2011 16:46:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Feb 2011 14:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,233,1297065600"; d="scan'208";a="606873284"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2011 14:46:33 -0800
Message-ID: <4D6982C9.1030606@intel.com>
Date: Sat, 26 Feb 2011 14:46:33 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1298677071.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1298677071.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Correct RPM related problems
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
X-List-Received-Date: Sat, 26 Feb 2011 22:46:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2011 03:39 PM, Mark Hatle wrote:
> Correct 3 rpm related issues.  The first is a defect found when trying to
> install packages on the target.  Second on the use of prelink by RPM on the target.
> The third on how the rpm-dbg file was being generated.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/rpm
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (3):
>    rootfs_rpm: Fix rootfs generation using RPM packages
>    rpm: Fix rpm usage of prelink on the target
>    rpm: Fix rpm-dbg package split
>
>   meta/classes/image-prelink.bbclass           |    2 +-
>   meta/classes/package_rpm.bbclass             |   15 +++++++++------
>   meta/classes/populate_sdk_rpm.bbclass        |   13 +++++++++++--
>   meta/classes/rootfs_rpm.bbclass              |    5 +++--
>   meta/recipes-devtools/prelink/prelink_git.bb |    8 +++++---
>   meta/recipes-devtools/rpm/rpm_5.4.0.bb       |    7 +++----
>   6 files changed, 32 insertions(+), 18 deletions(-)
>
Merk,

This is merged, but please check the current RC build, we had a problem 
with package-index and solvedb.

Thanks
	Sau!


