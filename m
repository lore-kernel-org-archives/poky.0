Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9245A4C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:03:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 11:03:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="683299805"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 11:03:43 -0800
Message-ID: <4CF7ED8F.6070203@intel.com>
Date: Thu, 02 Dec 2010 11:03:43 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1290790131.git.josh@linux.intel.com>
	<b35d224ec6ee86dd9623103d4020c9e7895a6ccb.1290790131.git.josh@linux.intel.com>
In-Reply-To: <b35d224ec6ee86dd9623103d4020c9e7895a6ccb.1290790131.git.josh@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] local.conf.sample: Note extra variables required when disabling en_US locale
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
X-List-Received-Date: Thu, 02 Dec 2010 19:03:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2010 06:23 AM, Joshua Lock wrote:
> When changing which locales are generated for libc it may also be neccessary to
> change IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
>
> Signed-off-by: Joshua Lock<josh@linux.intel.com>
> ---
>   meta/conf/local.conf.sample |    7 ++++++-
>   1 files changed, 6 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
> index fae949c..4ba250d 100644
> --- a/meta/conf/local.conf.sample
> +++ b/meta/conf/local.conf.sample
> @@ -158,8 +158,13 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
>
>   # Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
>   # wish to perform the time-consuming step of generating all LIBC locales.
> +# NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
> +# appropriate values for IMAGE_LINGUAS and LIMIT_BUILT_LOCALES
>   # WARNING: this may break localisation!
> -#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"
> +#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8"
> +# See message above as to whether setting these is required
> +#IMAGE_LINGUAS ?= "en-gb"
> +#LIMIT_BUILT_LOCALES ?= "POSIX en_GB"
>
Should these LOCALES be en_US, en_GB or BOTH?  I know we have had 
discussion on this in the past.

Let's be consistent on this please.

Sau!


>   # Default to not build 32 bit libs on 64 bit systems, comment this
>   # out if that is desired


