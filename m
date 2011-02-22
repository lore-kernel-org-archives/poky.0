Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B93594C80517
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 10:23:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2011 08:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="605346646"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by orsmga002.jf.intel.com with ESMTP; 22 Feb 2011 08:22:56 -0800
Message-ID: <4D63E2DF.4000000@intel.com>
Date: Tue, 22 Feb 2011 08:22:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1297930635.git.qing.he@intel.com>
In-Reply-To: <cover.1297930635.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix parallel make for openssl
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
X-List-Received-Date: Tue, 22 Feb 2011 16:23:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 12:18 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: qhe/fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>
> Thanks,
>      Qing He<qing.he@intel.com>
> ---
>
>
> Qing He (1):
>    openssl: fix parallel make
>
>   .../openssl/openssl-0.9.8p/parallel-make-fix.patch |   18 ++++++++++++++++++
>   meta/recipes-connectivity/openssl/openssl.inc      |    6 +++---
>   .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
>   3 files changed, 22 insertions(+), 4 deletions(-)
>   create mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/parallel-make-fix.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Parallel make change merged into Master

Thanks
	Sau!


