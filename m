Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 423244C80BCF
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 11:47:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 09:47:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="644154280"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 09:47:12 -0800
Message-ID: <4D260020.4070103@linux.intel.com>
Date: Thu, 06 Jan 2011 09:47:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1294275316.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294275316.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] fix rootfs generation bug
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
X-List-Received-Date: Thu, 06 Jan 2011 17:47:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 04:57 PM, Darren Hart wrote:
> Fix a rootfs generation bug introduced by commit
> 5e384038cbd5035377d61a1b77ad23ab69e0cac0.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/build
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/build
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (1):
>    rootfs_rpm: fix rootfs generation rm error
>
>   meta/classes/rootfs_rpm.bbclass |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into Master

Thanks
    Sau!


