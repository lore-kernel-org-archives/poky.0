Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BB364C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 18:44:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 16:44:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,250,1297065600"; d="scan'208";a="396049953"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 16:44:56 -0800
Message-ID: <4D6D9308.6000605@intel.com>
Date: Tue, 01 Mar 2011 16:44:56 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Liping Ke <liping.ke@intel.com>
References: <cover.1298594898.git.liping.ke@intel.com>
In-Reply-To: <cover.1298594898.git.liping.ke@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix several small bugs for adt installer
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
X-List-Received-Date: Wed, 02 Mar 2011 00:44:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/24/2011 04:55 PM, Liping Ke wrote:
> From: Liping Ke<liping.ke@intel.com>
>
> Two bugs are found
> 1) image download file path is not correct. So even if file is downloaded
>     already, it can't be detected.
> 2) sdk image now is renamed as sato-sdk, we need to change the name
>     accordingly.
> This patch is for fixing the above two bugs.
>
Are there bug numbers for these?  In the future, please reference the 
bugs with [BUGID #XXXX]

Thanks
	Sau!

>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lke/adt-newfix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/adt-newfix
>
> Thanks,
>      Liping Ke<liping.ke@intel.com>
> ---
>
>
> Liping Ke (1):
>    ADT: Fix several bugs for adt installer
>
>   .../installer/adt-installer/adt_installer          |    9 +++++----
>   .../installer/adt-installer/scripts/data_define    |    2 +-
>   2 files changed, 6 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


