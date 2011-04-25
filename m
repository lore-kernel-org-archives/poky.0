Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AF3B4C800AC
	for <poky@yoctoproject.org>; Sun, 24 Apr 2011 23:44:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Apr 2011 21:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,264,1301900400"; d="scan'208";a="737937024"
Received: from unknown (HELO [10.255.12.237]) ([10.255.12.237])
	by orsmga001.jf.intel.com with ESMTP; 24 Apr 2011 21:44:32 -0700
Message-ID: <4DB4FC30.10406@linux.intel.com>
Date: Sun, 24 Apr 2011 21:44:32 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1303462728.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1303462728.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Rename creat-lsb-image and improve some	functions in script
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
X-List-Received-Date: Mon, 25 Apr 2011 04:44:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/22/2011 02:04 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Thank Darren Hart and Robert to give me suggestions which make this script more professional.
> The function for this script is to create a 8G lsb image with lsb test suite.
> Changes for this script:
> 1 Correct name of this script
> 2 Improve some function
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/Modify_creat-lsb-image
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/Modify_creat-lsb-image
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    create-lsb-image:Rename creat-lsb-image and improve some function
>
>   scripts/creat-lsb-image  |  198 ----------------------------------------
>   scripts/create-lsb-image |  228 ++++++++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 228 insertions(+), 198 deletions(-)
>   delete mode 100755 scripts/creat-lsb-image
>   create mode 100755 scripts/create-lsb-image
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into oe-core and poky/master

Thanks
	Sau!


