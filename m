Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B73324C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:11:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2011 11:11:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="608756193"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 11:11:09 -0800
Message-ID: <4D6FE7CD.2050706@intel.com>
Date: Thu, 03 Mar 2011 11:11:09 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1299014665.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299014665.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/1] screenshot bugfix
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
X-List-Received-Date: Thu, 03 Mar 2011 19:11:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 01:27 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> Hi Saul,
>
> This pull request includes a fix for bug #664.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/screenshot-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/screenshot-fix
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (1):
>    screenshot: change the order of LDADD arguments
>
>   .../files/dso_linking_change_build_fix.patch       |   49 --------------------
>   .../screenshot/files/fix_ldadd_order.patch         |   12 +++++
>   meta/recipes-sato/screenshot/screenshot_svn.bb     |    6 +-
>   3 files changed, 15 insertions(+), 52 deletions(-)
>   delete mode 100644 meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch
>   create mode 100644 meta/recipes-sato/screenshot/files/fix_ldadd_order.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Bernard, OE-Core and Master

Thanks
	Sau!


