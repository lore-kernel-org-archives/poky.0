Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CB744C81260
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:34:25 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 17:34:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="881729925"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 17:34:24 -0800
Message-ID: <4D421D1F.8020401@intel.com>
Date: Thu, 27 Jan 2011 17:34:23 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <849307$bb0a00@azsmga001.ch.intel.com>
In-Reply-To: <849307$bb0a00@azsmga001.ch.intel.com>
Subject: Re: [PATCH 1/5] base-files: remove ending colon from default $PATH for root user
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
X-List-Received-Date: Fri, 28 Jan 2011 01:34:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:38 AM, poky-bounces@yoctoproject.org wrote:
> From: Kevin Tian<kevin.tian@intel.com>
>
> now the PATH for root user defined in a problematic way
>      PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:
>
> from eglibc:
>      /* Two adjacent colons, or a colon at the beginning or the end
>         of `PATH' means to search the current directory.  */
>
> that means current directory is always searched as the last path,
> which could generate undesired behavior.
>
> One example is found in LTP cron_deny01 test, which always complains
>      "sh: cron_deny01 not found"
>
> cron_deny01 is a shell script which setups the initial test preparation
> and then invokes itself for real test under a different user:
>      su $TEST_USER1 -c "$0"
>
> 'su' doesn't inherit PATH into the sub-shell, and thus $0 has to
> be an absolute path to have right script found.
>
> ltp appends the path of cron_deny01 to $PATH before running the test:
>      export PATH="${PATH}:${LTPROOT}/testcases/bin"
>
> In ideal way "${LTPROOT}/testcases/bin/cron_deny01" is found and becomes
> $0, which works well.
>
> However due to the ending colon in original PATH:
>      PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin::${LTPROOT}/testcases/bin
> $0 becomes 'cron_deny01' w/o leading path which makes sub-shell under 'su'
> failed to locate cron_deny01.
>
> remove ending colon then fixes this problem.
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/recipes-core/base-files/base-files/profile   |    2 +-
>   meta/recipes-core/base-files/base-files_3.0.14.bb |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-core/base-files/base-files/profile b/meta/recipes-core/base-files/base-files/profile
> index aa1c20f..e9408d1 100644
> --- a/meta/recipes-core/base-files/base-files/profile
> +++ b/meta/recipes-core/base-files/base-files/profile
> @@ -12,7 +12,7 @@ if [ ! -e /etc/localtime ]; then
>   fi
>
>   if [ "$HOME" = "/home/root" ]; then
> -   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:
> +   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
>   fi
>   if [ "$PS1" ]; then
>   # works for bash and ash (no other shells known to be in use here)
> diff --git a/meta/recipes-core/base-files/base-files_3.0.14.bb b/meta/recipes-core/base-files/base-files_3.0.14.bb
> index 2363feb..d2fec72 100644
> --- a/meta/recipes-core/base-files/base-files_3.0.14.bb
> +++ b/meta/recipes-core/base-files/base-files_3.0.14.bb
> @@ -2,7 +2,7 @@ SUMMARY = "Miscellaneous files for the base system."
>   DESCRIPTION = "The base-files package creates the basic system directory structure and provides a small set of key configuration files for the system."
>   SECTION = "base"
>   PRIORITY = "required"
> -PR = "r66"
> +PR = "r67"
>   LICENSE = "GPLv2"
>   LIC_FILES_CHKSUM = "file://licenses/GPL-2;md5=94d55d512a9ba36caa9b7df079bae19f"
>   SRC_URI = "file://rotation \
Pulled into Master

Thanks
	Sau!

