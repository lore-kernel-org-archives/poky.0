Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 733C9E01409
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 00:00:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Apr 2012 00:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132259312"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by azsmga001.ch.intel.com with ESMTP; 18 Apr 2012 00:00:46 -0700
Message-ID: <4F8E669E.8010606@linux.intel.com>
Date: Wed, 18 Apr 2012 00:00:46 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1334706261.git.paul.eggleton@linux.intel.com>
	<5e09f5a3ce94e45bb6f407ed6f024c6f32450c80.1334706261.git.paul.eggleton@linux.intel.com>
In-Reply-To: <5e09f5a3ce94e45bb6f407ed6f024c6f32450c80.1334706261.git.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] conf/distro/poky.conf: set SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 18 Apr 2012 07:00:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/17/2012 04:46 PM, Paul Eggleton wrote:
> Specify a list of tested host distributions, based on those tested prior
> to the Yocto Project 1.2 release. This will enable a warning to be
> printed upon starting bitbake if the host distribution is not one on the
> list.
>
> Note: this warning is intended to help new users; if you are receiving
> this warning and wish to disable it, just add SANITY_TESTED_DISTROS = ""
> to your local.conf.
>
> Fixes [YOCTO #1096].
>
> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
> ---
>   meta-yocto/conf/distro/poky.conf |   16 ++++++++++++++++
>   1 files changed, 16 insertions(+), 0 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index e51ccdf..807a44d 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -65,6 +65,22 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
>                             https://eula-downloads.yoctoproject.org/index.php \
>                             http://bugzilla.yoctoproject.org/report.cgi"
>
> +SANITY_TESTED_DISTROS ?= " \
> +            Yocto (Built by Poky 7.0) 1.2 \n \
> +            Ubuntu 10.04.4 LTS \n \
> +            Ubuntu 11.10 \n \
> +            Ubuntu 12.04 \n \
> +            Fedora release 15 (Lovelock) \n \
> +            Fedora release 16 (Verne) \n \
> +            Fedora release 17 (Beefy Miracle) \n \
> +            CentOS release 5.6 (Final) \n \
> +            CentOS release 5.7 (Final) \n \
> +            CentOS release 6.2 (Final) \n \
> +            Debian GNU/Linux 6.0.3 (squeeze) \n \
> +            openSUSE 11.4 \n \
> +            openSUSE 12.1 \n \
> +	    "
> +
>   # Default hash policy for distro
>   BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
>   #


Paul, I got the following WARNING withthis code enabled:

WARNING: Host distribution "Fedora release 16 (Verne)
" has not been validated with this version of the build system; you may 
possibly experience unexpected failures. It is recommended that you use 
a tested distribution.


$ cat /etc/redhat-release
Fedora release 16 (Verne)
[sgw@swold-mobl poky]$

Not sure what's going on, but the matching does not seem to be working.

Sau!




