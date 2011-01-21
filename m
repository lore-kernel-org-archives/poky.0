Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D30C4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:02:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 17:02:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377696609"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 17:01:59 -0800
Message-ID: <4D38DB07.3040106@linux.intel.com>
Date: Thu, 20 Jan 2011 17:01:59 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1295464737.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295464737.git.nitin.a.kamble@intel.com>
Subject: Re: [PATCH 0/1] one more build fix related to dso linking change
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
X-List-Received-Date: Fri, 21 Jan 2011 01:02:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 11:20 AM, Nitin A Kamble wrote:
> Found out zipper was also failing to link due to the dso linking change in the gcc. It is fixed in this set.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/dso_linking_change
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (1):
>    zypper: fix build issue with gcc dso linking change
>
>   .../zypper/dso_linking_change_build_fix.patch      |   58 ++++++++++++++++++++
>   meta/recipes-extended/zypper/zypper_git.bb         |    4 +-
>   2 files changed, 60 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch
>

Pulled into Master

Thanks
	Sau!


