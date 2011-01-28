Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D6D84C81264
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:28:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 17:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597212039"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 17:28:52 -0800
Message-ID: <4D421BD3.4040407@intel.com>
Date: Thu, 27 Jan 2011 17:28:51 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1295886689.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295886689.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] sudo upgrade
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
X-List-Received-Date: Fri, 28 Jan 2011 01:28:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2011 08:32 AM, Scott Garman wrote:
> Hi Saul,
>
> This pull request performs a minor upgrade of the sudo recipe to
> address a security advisory.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/sudo-upgrade
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/sudo-upgrade
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (2):
>    sudo: upgrade to 1.7.4p6
>    distro_tracking_fields: Updated sudo tracking data
>
>   .../conf/distro/include/distro_tracking_fields.inc |    8 ++++----
>   .../sudo/{sudo_1.7.4p4.bb =>  sudo_1.7.4p6.bb}      |    4 ++--
>   2 files changed, 6 insertions(+), 6 deletions(-)
>   rename meta/recipes-extended/sudo/{sudo_1.7.4p4.bb =>  sudo_1.7.4p6.bb} (52%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!

