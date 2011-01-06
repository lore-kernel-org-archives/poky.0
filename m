Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 641554C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 11:13:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 09:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="694251196"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 09:13:25 -0800
Message-ID: <4D25F835.4040308@linux.intel.com>
Date: Thu, 06 Jan 2011 09:13:25 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Zhai Edwin <edwin.zhai@intel.com>
References: <cover.1293024880.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1293024880.git.edwin.zhai@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] X apps: some bug fix, Dec12, 2010
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
X-List-Received-Date: Thu, 06 Jan 2011 17:13:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2010 05:34 AM, Zhai Edwin wrote:
> Saul/RP,
> These are fixes for bug 509&599. Pls. have a look then pull.
>
> Thanks,
> edwin
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: gzhai/distro06
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro06
>
> Thanks,
>      Zhai Edwin<edwin.zhai@intel.com>
> ---
>
>
> Zhai Edwin (3):
>    matchbox-keyboard: Make as singleton
>    matchbox-stroke: Make as singleton
>    qemu: Add some checks before enabling KVM
>
>   .../matchbox-keyboard/files/single-instance.patch  |   22 +++++++++++++++++
>   .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    1 +
>   .../matchbox-stroke/files/single-instance.patch    |   19 +++++++++++++++
>   .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
>   scripts/poky-qemu                                  |   25 +++++++++++++++++--
>   5 files changed, 65 insertions(+), 3 deletions(-)
>   create mode 100644 meta/recipes-sato/matchbox-keyboard/files/single-instance.patch
>   create mode 100644 meta/recipes-sato/matchbox-stroke/files/single-instance.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks, Sau!

