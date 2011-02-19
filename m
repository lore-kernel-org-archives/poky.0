Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B76244C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 22:15:16 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Feb 2011 20:15:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="604415230"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 20:15:16 -0800
Message-ID: <4D5F43D3.9030606@intel.com>
Date: Fri, 18 Feb 2011 20:15:15 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <b9dded$i092vq@orsmga002.jf.intel.com>
In-Reply-To: <b9dded$i092vq@orsmga002.jf.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] crownbay: fix for matchbox-panel segfault
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
X-List-Received-Date: Sat, 19 Feb 2011 04:15:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 12:06 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This fixes a matchbox-panel segfault for crownbay.
>
> Please pull into meta-intel/master.
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/matchbox-segfault-fix
> Branch: tzanussi/matchbox-segfault-fix
> Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/matchbox-segfault-fix
>
> Tom Zanussi (1):
>    crownbay: fix matchbox-panel segfault
>
>   .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pushed into Meta-Intel Master

Thanks

Sau!


