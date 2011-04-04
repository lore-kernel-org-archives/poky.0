Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C94554C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 12:29:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2011 10:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="623367836"
Received: from unknown (HELO [10.255.12.228]) ([10.255.12.228])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2011 10:29:18 -0700
Message-ID: <4D99FFED.1000300@intel.com>
Date: Mon, 04 Apr 2011 10:29:17 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <849307$c887ep@azsmga001.ch.intel.com>
In-Reply-To: <849307$c887ep@azsmga001.ch.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH][meta-intel] Switch crownbay to 2.6.37
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
X-List-Received-Date: Mon, 04 Apr 2011 17:29:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/30/2011 03:09 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Please pull into meta-intel/master.
>
> Pull URL: git://git.pokylinux.org/meta-intel.git
>    Branch: tzanussi/crownbay-2.6.37-switchover
>    Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/commit/?h=tzanussi/crownbay-2.6.37-switchover
>
> Tom Zanussi (1):
>    meta-crownbay: switch to linux-yocto kernel
>
>   meta-crownbay/conf/machine/crownbay-noemgd.conf |   12 ++++--------
>   meta-crownbay/conf/machine/crownbay.conf        |   12 ++++--------
>   2 files changed, 8 insertions(+), 16 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into meta-intel/master

Thanks for your patience

Sau!


