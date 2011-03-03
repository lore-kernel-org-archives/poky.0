Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11A854C80A71
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:11:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 11:11:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="608756384"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 11:11:33 -0800
Message-ID: <4D6FE7E4.3090506@intel.com>
Date: Thu, 03 Mar 2011 11:11:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <cover.1299004921.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1299004921.git.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/2] make zypper recommend uuidgen
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
X-List-Received-Date: Thu, 03 Mar 2011 19:11:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 10:45 AM, Paul Eggleton wrote:
> From: Paul Eggleton<paul.eggleton@linux.intel.com>
>
> These patches split out uuidgen to a separate package and then add it to
> zypper's RRECOMMENDS. This addresses bug #749 (I'm making the assumption here
> that zypper really should need uuidgen, haven't looked into this closely).
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: paule/zypper-uuidgen
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/zypper-uuidgen
>
> Thanks,
>      Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>
>
> Paul Eggleton (2):
>    util-linux: split out uuidgen to a separate package
>    zypper: add util-linux-uuidgen to RRECOMMENDS
>
>   meta/recipes-core/util-linux/util-linux.inc       |    3 ++-
>   meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
>   meta/recipes-extended/zypper/zypper_git.bb        |    4 ++--
>   3 files changed, 5 insertions(+), 4 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Bernard, OE-Core and Master

Thanks
	Sau!

