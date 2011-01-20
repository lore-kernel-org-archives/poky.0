Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5EDB4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:29:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 15:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="649428484"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 15:29:26 -0800
Message-ID: <4D38C555.6010303@linux.intel.com>
Date: Thu, 20 Jan 2011 15:29:25 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D35BD84.6010201@windriver.com>
In-Reply-To: <4D35BD84.6010201@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Update santiy.bbclass when patch resolution "noop"
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
X-List-Received-Date: Thu, 20 Jan 2011 23:29:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 08:19 AM, Mark Hatle wrote:
> When the patch resolution is set to 'noop', sanity is still trying to
> verify the TERMCMD.  It shouldn't do that.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/wrsync
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (1):
>    sanity.bbclass: Disable TERMCMD checking with noop patching
>
>   meta/classes/sanity.bbclass |   11 ++++++-----
>   1 files changed, 6 insertions(+), 5 deletions(-)
>
> --
> 1.7.3.4
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!



