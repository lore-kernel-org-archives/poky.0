Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 238CB4C8085F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 16:58:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 14:58:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,372,1291622400"; d="scan'208";a="700140986"
Received: from doubt.jf.intel.com (HELO [10.7.199.153]) ([10.7.199.153])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2011 14:58:44 -0800
Message-ID: <4D3E0410.5080608@linux.intel.com>
Date: Mon, 24 Jan 2011 14:58:24 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1295655589.git.scott.a.garman@intel.com>
	<8b101a50a90bb93493e747863a68248a6726637b.1295655589.git.scott.a.garman@intel.com>
In-Reply-To: <8b101a50a90bb93493e747863a68248a6726637b.1295655589.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] send-pull-request: unset $TO and $CC from environment
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
X-List-Received-Date: Mon, 24 Jan 2011 22:58:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 04:22 PM, Scott Garman wrote:
> Darren Hart and I discovered that when $CC is set (which
> our meta-toolchain environment script sets up), the value
> leaks into the use of this script. Unsetting $TO as well
> just to be thorough.
>
> Signed-off-by: Scott Garman<scott.a.garman@intel.com>

Thanks Scott!

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   scripts/send-pull-request |    4 ++++
>   1 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
> index 9872c0d..a66d4dc 100755
> --- a/scripts/send-pull-request
> +++ b/scripts/send-pull-request
> @@ -6,6 +6,10 @@ if [ -z "$PULL_MTA" ]; then
>       PULL_MTA="sendmail"
>   fi
>
> +# Prevent environment leakage to these vars.
> +unset TO
> +unset CC
> +
>   usage()
>   {
>   cat<<EOM


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

