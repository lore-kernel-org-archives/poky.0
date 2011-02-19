Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C5424C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 22:31:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Feb 2011 20:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="391104915"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 20:31:44 -0800
Message-ID: <4D5F47AF.3040405@intel.com>
Date: Fri, 18 Feb 2011 20:31:43 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <b9dded$hvvolj@orsmga002.jf.intel.com>
In-Reply-To: <b9dded$hvvolj@orsmga002.jf.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] crownbay: fix for meta-intel/laverne
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
X-List-Received-Date: Sat, 19 Feb 2011 04:31:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 06:27 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This fixes a matchbox-panel segfault for crownbay in laverne.
>
> Please pull into meta-intel/laverne.
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/matchbox-segfault-fix-laverne
> Branch: tzanussi/matchbox-segfault-fix-laverne
> Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/matchbox-segfault-fix-laverne
>
> Tom Zanussi (1):
>    crownbay: fix matchbox-panel segfault
>
>   .../recipes-gnome/gtk+/gtk+_2.20.1.bbappend        |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into laverne crownbay

THanks
	Sau!

