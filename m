Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21AEA4C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 12:49:44 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 10:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="893478686"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 10:49:35 -0800
Message-ID: <4D6FE2BF.2000304@linux.intel.com>
Date: Thu, 03 Mar 2011 10:49:35 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1bdc18$jop9h2@fmsmga002.fm.intel.com>
In-Reply-To: <1bdc18$jop9h2@fmsmga002.fm.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-n450: use linux-yocto-stable
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
X-List-Received-Date: Thu, 03 Mar 2011 18:49:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2011 09:47 AM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Please pull into meta-intel/master.
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/n450-kernel-fix
>    Branch: tzanussi/n450-kernel-fix
>    Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/n450-kernel-fix
>
> Tom Zanussi (1):
>    meta-n450: use linux-yocto-stable
>
>   .../recipes-kernel/linux/linux-wrs_git.bbappend    |    7 -------
>   .../linux/linux-yocto-stable_git.bbappend          |    7 +++++++
>   2 files changed, 7 insertions(+), 7 deletions(-)
>   delete mode 100644 meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend
>   create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into Meta-Intel

Thanks
	Sau!

