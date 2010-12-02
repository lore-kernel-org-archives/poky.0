Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 065DC4C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:05:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 11:05:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="683300364"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 11:05:16 -0800
Message-ID: <4CF7EDEC.3040301@intel.com>
Date: Thu, 02 Dec 2010 11:05:16 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1291096296.git.qing.he@intel.com>
In-Reply-To: <cover.1291096296.git.qing.he@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/2] fix cross build of dhcp 4.2.0
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
X-List-Received-Date: Thu, 02 Dec 2010 19:05:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/29/2010 09:51 PM, Qing He wrote:
> dhcp 4.2.0 introduces bind9 dependency, however, the cross compiling
> doesn't work, this patch set fixes the issue. Tested for arm target
>
> Thanks,
> Qing
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
> Qing He (2):
>    bind: add new recipe
>    dhcp: fix cross build
>
>   .../bind/bind-9.7.2-P2/conf.patch                  |  301 ++++++++++++++++++++
>   .../bind/bind-9.7.2-P2/cross-build-fix.patch       |   19 ++
>   meta/recipes-connectivity/bind/bind_9.7.2-P2.bb    |   54 ++++
>   .../dhcp/dhcp-4.2.0/fix-external-bind.patch        |  101 +++++++
>   meta/recipes-connectivity/dhcp/dhcp4.inc           |    6 +-
>   meta/recipes-connectivity/dhcp/dhcp_4.2.0.bb       |    6 +-
>   6 files changed, 484 insertions(+), 3 deletions(-)
>   create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/conf.patch
>   create mode 100644 meta/recipes-connectivity/bind/bind-9.7.2-P2/cross-build-fix.patch
>   create mode 100644 meta/recipes-connectivity/bind/bind_9.7.2-P2.bb
>   create mode 100644 meta/recipes-connectivity/dhcp/dhcp-4.2.0/fix-external-bind.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master with LICENSE tweak

Thanks
Sau!


