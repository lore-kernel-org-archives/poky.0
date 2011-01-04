Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75A444C80BD4
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 13:52:43 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jan 2011 11:52:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,274,1291622400"; d="scan'208";a="643364651"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 11:52:12 -0800
Message-ID: <4D237A44.3080804@linux.intel.com>
Date: Tue, 04 Jan 2011 11:51:32 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1294140740.git.ke.yu@intel.com>
In-Reply-To: <cover.1294140740.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix random kernel unpack failure
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
X-List-Received-Date: Tue, 04 Jan 2011 19:52:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/04/2011 03:36 AM, Yu Ke wrote:
> autobuilder recently is blocked by random unpack failure of linux-libc-headers-yocto
> and linux-yocto. this patch fix this issue. the patch description has the detailed
> root cause and fix.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/kernel-unpack-fix
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/kernel-unpack-fix
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (1):
>    base.bbclass: add lock file for do_unpack task
>
>   meta/classes/base.bbclass |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Ke,

This has been pulled into master as a workaround for the existing issue, 
please ensure that this issue gets addressed properly once the fetch 
work is completed to a point that this can be done.

Thanks
   Sau!

