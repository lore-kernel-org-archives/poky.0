Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FDF94C804C2
	for <poky@yoctoproject.org>; Tue, 17 May 2011 00:22:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 22:22:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,223,1304319600"; 
   d="scan'208";a="3153382"
Received: from unknown (HELO [10.255.12.172]) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 22:22:25 -0700
Message-ID: <4DD20621.6080305@linux.intel.com>
Date: Mon, 16 May 2011 22:22:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305599686.git.liezhi.yang@windriver.com>
	<64381f0d88c840c6cb48392c1094b87149ed5372.1305599686.git.liezhi.yang@windriver.com>
In-Reply-To: <64381f0d88c840c6cb48392c1094b87149ed5372.1305599686.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: V3 [PATCH 3/4] Add pidofproc to ${sysconfdir}/init.d/functions
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
X-List-Received-Date: Tue, 17 May 2011 05:22:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/16/2011 07:40 PM, Robert Yang wrote:
> Add pidofproc to ${sysconfdir}/init.d/functions, this is used for
> getting the pid of the process. It uses pidof to implement currently, it
> may also use the pidfile or ps to implement in the future.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  .../initscripts/initscripts-1.0/functions          |   32 ++++++++++++++++++-
>  1 files changed, 30 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-core/initscripts/initscripts-1.0/functions b/meta/recipes-core/initscripts/initscripts-1.0/functions
> index ac99e11..1c8e5ce 100644
> --- a/meta/recipes-core/initscripts/initscripts-1.0/functions
> +++ b/meta/recipes-core/initscripts/initscripts-1.0/functions
> @@ -3,6 +3,35 @@
>  # functions     This file contains functions to be used by most or all
>  #               shell scripts in the /etc/init.d directory.
>  #
> +# NOTE: The pidofproc () doesn't support the process which is a script unless
> +#       the pidof supports "-x" option. If you want to use it for such a
> +#       process:
> +#       1) If there is no "pidof -x", replace the "pidof $1" with another
> +#          command like(for core-image-minimal):
> +#            ps | awk '/'"$1"'/ {print $1}'
> +#       Or
> +#       2) If there is "pidof -x", replace "pidof" with "pidof -x".
> +#
> +# pidofproc - print the pid of a process
> +# $1: the name of the process
> +pidofproc () {
> +
> +    # pidof output null when no program is running, so no "2>/dev/null".

This entire block is still indented with 4 spaces instead of tabs.

--
Darren

> +    pid=`pidof $1`
> +    case $? in
> +    0)
> +        echo $pid
> +        return 0
> +        ;;
> +    127)
> +        echo "ERROR: command pidof not found" >&2
> +        exit 127
> +        ;;
> +    *)
> +        return $?
> +        ;;
> +    esac
> +}
>  
>  machine_id() { # return the machine ID
>  	awk 'BEGIN { FS=": " } /Hardware/ \
> @@ -10,6 +39,5 @@ machine_id() { # return the machine ID
>  }
>  
>  killproc() { # kill the named process(es)
> -	pid=`/bin/pidof $1`
> -	[ "$pid" != "" ] && kill $pid
> +	pid=`pidofproc $1` && kill $pid
>  }

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

