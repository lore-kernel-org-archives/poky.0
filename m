Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EC984C800A6
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 13:15:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Feb 2011 11:15:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="660375905"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2011 11:15:58 -0800
Message-ID: <4D640B6D.9040402@intel.com>
Date: Tue, 22 Feb 2011 11:15:57 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <0d30dc$l6p4vt@orsmga001.jf.intel.com>
In-Reply-To: <0d30dc$l6p4vt@orsmga001.jf.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] switch emenlow kernel to 2.6.37
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
X-List-Received-Date: Tue, 22 Feb 2011 19:15:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/22/2011 07:13 AM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This patchset switches emenlow to the 2.6.37 kernel and updates some
> SRCREVs. Please Pull.
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/emenlow-switch-to-2.6.37
>    Branch: tzanussi/emenlow-switch-to-2.6.37
>    Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/emenlow-switch-to-2.6.37
>
> Tom Zanussi (3):
>    emenlow: switch kernel to linux-yocto
>    emenlow: update linux-yocto-stable SRCREVs
>    emenlow: update linux-yocto SRCREVs
>
>   meta-emenlow/conf/machine/emenlow.conf             |   11 +++++++----
>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +++
>   2 files changed, 10 insertions(+), 4 deletions(-)
>   create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
meta-intel is merged with these changes

Thanks
	Sau!


