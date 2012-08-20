Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F93EE0027E
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 10:40:56 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 10:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,798,1336374000"; d="scan'208";a="136301708"
Received: from unknown (HELO [10.255.13.49]) ([10.255.13.49])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2012 10:40:29 -0700
Message-ID: <5032768C.1020504@linux.intel.com>
Date: Mon, 20 Aug 2012 10:40:28 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1345478747-14372-1-git-send-email-paul.eggleton@linux.intel.com>
In-Reply-To: <1345478747-14372-1-git-send-email-paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky.conf: restore Ubuntu 12.04 LTS to tested distro list
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
X-List-Received-Date: Mon, 20 Aug 2012 17:40:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/20/2012 09:05 AM, Paul Eggleton wrote:
> Apparently some people don't apply the normal updates to their Ubuntu
> installations, in which case they will not have the version updated to
> 12.04.1. Since the distinction between the two is fairly minimal,
> restore the old version string in addition to the new one.
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>   meta-yocto/conf/distro/poky.conf |    1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 711087b..94dc567 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -69,6 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
>               Yocto (Built by Poky 7.0) 1.2 \n \
>               Ubuntu 10.04.4 LTS \n \
>               Ubuntu 11.10 \n \
> +            Ubuntu 12.04 LTS \n \
>               Ubuntu 12.04.1 LTS \n \
>               Fedora release 15 (Lovelock) \n \
>               Fedora release 16 (Verne) \n \
>

Can we introduce any kind of regex here or is it straight string 
matches?  For the LTS we will support for a while right?

I am queuing this by the way, the above is more informational.

Sau!


