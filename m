Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEA734C80BD4
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 13:13:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 11:13:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,224,1288594800"; d="scan'208";a="575617625"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2010 11:13:52 -0800
Message-ID: <4CE6CC70.8060204@intel.com>
Date: Fri, 19 Nov 2010 11:13:52 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1289980256.git.lei.mei@intel.com>
In-Reply-To: <cover.1289980256.git.lei.mei@intel.com>
Subject: Re: [PATCH 0/1]distro_tracking_fields.inc:remove some invalid information from it
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
X-List-Received-Date: Fri, 19 Nov 2010 19:13:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/2010 11:50 PM, Mei Lei wrote:
> Some packages were removed from the world, but their information also exist in the distro_tracking_fields.inc.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/distrotracking
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrotracking
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (1):
>    distro_tracking_fields.inc: remove some invalid packages information
>      from it
>
>   .../conf/distro/include/distro_tracking_fields.inc |  553 +-------------------
>   1 files changed, 1 insertions(+), 552 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!

