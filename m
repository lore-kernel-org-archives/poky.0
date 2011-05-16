Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDB724C800E0
	for <poky@yoctoproject.org>; Mon, 16 May 2011 11:56:55 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 09:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,375,1301900400"; 
   d="scan'208";a="2888077"
Received: from unknown (HELO [10.255.12.132]) ([10.255.12.132])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 09:56:55 -0700
Message-ID: <4DD15763.8000200@linux.intel.com>
Date: Mon, 16 May 2011 09:57:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1305558153.git.liezhi.yang@windriver.com>
	<e3e569916fb79b1fa249c457846852873e14fc23.1305558153.git.liezhi.yang@windriver.com>
In-Reply-To: <e3e569916fb79b1fa249c457846852873e14fc23.1305558153.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: V2 [PATCH 2/3] Add pidofproc to ${sysconfdir}/init.d/functions
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
X-List-Received-Date: Mon, 16 May 2011 16:56:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/16/2011 08:19 AM, Robert Yang wrote:
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
> index 689fd32..6a51b3b 100644
> --- a/meta/recipes-core/initscripts/initscripts-1.0/functions
> +++ b/meta/recipes-core/initscripts/initscripts-1.0/functions
> @@ -4,11 +4,39 @@
>  #               shell scripts in the /etc/init.d directory.
>  #
>  
> +# NOTE: The pidofproc () doesn't support the process which is a script unless
> +#       the pidof supports "-x" option. If you want to use it for such a
> +#       process:
> +#       1) If there is no "pidof -x", replace the "pidof $1" with another
> +#          command like(for core-image-minimal):
> +#            ps | awk '/'"$1"'/ {print $1}'
> +#       Or
> +#       2) If there is "pidof -x", replace "pidof" with "pidof -x".

Please document the variables to newly created functions, for shell
functions, something like:

# pidofproc - print the pid of a process
# $1: the name of the process

> +pidofproc () {
> +        local pid status

This patch uses 8 spaces to indent while the existing file uses 4. The
state of shell script whitespace in the repository is a bit of a
disaster. We can't really go through it all and just correct it for the
sake of consistent whitespace, but when modifying shell scripts, please
do the following:

1) Cleanup the whitespace in the affected file
   Do this before making functional changes to it and submit the
   cleanup as a separate patch.
2) Indent with tabs
3) Do not indent the cases in a case block


> +
> +        status=0
> +        # pidof output null when no program is running, so no "2>/dev/null".
> +        pid=`pidof $1` || status=$?
> +        case $status in

The following is just my opinion, you may ignore it if you disagree:

I find the "do_this || die" syntax to be awkward, and have seen it lead
to non-intuitive errors. For testing the success of a command, consider
removing the status variable and using:

pid=$(pidof $1)
case $? in



> +          0)
> +                echo $pid
> +                return 0
> +                ;;
> +          127)
> +                echo "ERROR: command pidof not found" >&2
> +                exit 127
> +                ;;
> +          *)
> +                return $status
> +                ;;
> +        esac
> +}
> +
>  machine_id() {		# return the machine ID
>      awk 'BEGIN { FS=": " } /Hardware/ { gsub(" ", "_", $2); print tolower($2) } ' </proc/cpuinfo
>  }
>  
>  killproc() {		# kill the named process(es)
> -    pid=`/bin/pidof $1`
> -    [ "$pid" != "" ] && kill $pid
> +    pid=`pidofproc $1` && kill $pid
>  }

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

