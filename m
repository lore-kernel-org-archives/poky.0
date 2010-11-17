Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2301F4C80052
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 12:22:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 10:21:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,212,1288594800"; d="scan'208";a="858622666"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 10:21:43 -0800
Message-ID: <4CE41D36.8010207@intel.com>
Date: Wed, 17 Nov 2010 10:21:42 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1289982751.git.qing.he@intel.com>
In-Reply-To: <cover.1289982751.git.qing.he@intel.com>
Subject: Re: [PATCH 0/1] curl-native build fix
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
X-List-Received-Date: Wed, 17 Nov 2010 18:22:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 12:32 AM, Qing He wrote:
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He
> ---
>
>
> Qing He (1):
>    curl: fix native dependency
Can you give more details about why this change was needed at this point?

Thanks
    Sau!

>
>   meta/recipes-support/curl/curl_7.21.2.bb |    7 +++++--
>   1 files changed, 5 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


