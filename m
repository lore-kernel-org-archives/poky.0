Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C9A54C80A78
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 13:11:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 11:11:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="608756421"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 11:11:37 -0800
Message-ID: <4D6FE7E9.7040709@intel.com>
Date: Thu, 03 Mar 2011 11:11:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <cover.1299005382.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1299005382.git.mark.hatle@windriver.com>
Subject: Re: [PATCH 0/1] Fix insane class ELF bitsize checks
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
X-List-Received-Date: Thu, 03 Mar 2011 19:11:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 10:50 AM, Mark Hatle wrote:
> The insane class was not checking the ELF bitsize, in fact if it wasn't
> correct it was skipping all of the QA checks!
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/insane
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/insane
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (1):
>    insane.bbclass: Fix ELF bitsize comparison
>
>   meta/classes/insane.bbclass |   84 ++++++++++++++++++++++---------------------
>   meta/lib/oe/qa.py           |   21 +++++++++--
>   2 files changed, 60 insertions(+), 45 deletions(-)
>
Merged into Bernard, OE-Core and Master

Thanks
	Sau!

