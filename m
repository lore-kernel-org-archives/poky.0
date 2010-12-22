Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B7424C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 18:28:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 16:28:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,210,1291622400"; d="scan'208";a="586012160"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 16:28:03 -0800
Message-ID: <4D114617.6060202@linux.intel.com>
Date: Tue, 21 Dec 2010 16:28:07 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] scripts/send-pull-request: Use git send-mail instead of sendmail
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
X-List-Received-Date: Wed, 22 Dec 2010 00:28:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 01:39 AM, Khem Raj wrote:
> * usually git send-mail is setup by people using git
>    so use git send-mail to post patches for pull requests
>    There is how to setup git send-email
>    see section "Set up git"
>    http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbedded

Hi Khem,

I've added an option to use git-send-email in a recent patch sent as a 
pull request (using git-send-email). I had to change it from below in a 
few ways - I'll comment on them here for context:

>
> Signed-off-by: Khem Raj<raj.khem@gmail.com>
> ---
>   scripts/send-pull-request |   19 ++++++++-----------
>   1 files changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
> index 0576a5d..2f0b90d 100755
> --- a/scripts/send-pull-request
> +++ b/scripts/send-pull-request
> @@ -12,8 +12,8 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p pull-dir
>   EOM
>   }
>
> -# Collect To and CC addresses from the patch files if they exist
> -# $1: Which header to add the recipients to, "TO" or "CC"
> +# Collect To, From and CC addresses from the patch files if they exist
> +# $1: Which header to add the recipients to, "TO", "FROM" or "CC"

We really shouldn't have to read FROM here, just use sendemail.from from 
your git config.

>   # $2: The regex to match and strip from the line with email addresses
>   harvest_recipients()
>   {
> @@ -27,6 +27,8 @@ harvest_recipients()
>                   if [ -z "$TO" ]; then TO=$EMAIL; else TO="$TO,$EMAIL"; fi
>               elif [ "$TO_CC" == "CC" ]&&  [ "${CC/$EMAIL/}" == "$CC" ]&&  [ -n "$EMAIL" ]; then
>                   if [ -z "$CC" ]; then CC=$EMAIL; else CC="$CC,$EMAIL"; fi
> +            elif [ "$TO_CC" == "FROM" ]&&  [ "${FROM/$EMAIL/}" == "$FROM" ]&&  [ -n "$EMAIL" ]; then
> +                if [ -z "$FROM" ]; then FROM=$EMAIL; fi
>               fi
>           done
>       done
> @@ -85,6 +87,7 @@ done
>   # etc. (*-by) will be added to CC.
>   if [ $AUTO -eq 1 ]; then
>       harvest_recipients TO "^[Tt][Oo]: *"
> +    harvest_recipients FROM "^[Ff][rR][oO][mM]: *"
>       harvest_recipients CC "^[Cc][Cc]: *"
>       harvest_recipients CC "^.*-[Bb][Yy]: *"
>   fi
> @@ -112,20 +115,14 @@ read cont
>   if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
>       ERROR=0
>       for PATCH in $PDIR/*patch; do
> -        # Insert To and CC headers via formail to keep them separate and
> -        # appending them to the sendmail command as -- $TO $CC has proven
> -        # to be an exercise in futility.
> -        #
> -        # Use tail to remove the email envelope from git or formail as
> -        # msmtp (sendmail) would choke on them.
> -        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail -n +2 | sendmail -t
> +        # Insert To and CC headers
> +	git send-email --to="$TO" --cc="$CC" --from="$FROM" --confirm=auto $PATCH

git-send-email doesn't accept a comma separated list of address on the 
--to and --cc lines. This was something I ran into last time I tried to 
use git-send-email and had forgotten about. The problem is separating 
them into individual arguments as something like "$TO_LIST" is 
interpreted as a single argument (even with multiple --to arguments in 
it). Turns out, "eval" allows you to do this. I took that approach in 
the patch I sent.

Using --from in this command through an error for me. I setup my git 
config to have sendemail.from specified, and send-email will just use 
that instead of prompting every time.

Please have a look at the patch in the new pull request and let us know 
if it meets your needs.

-- 
Darren Hart
Yocto Linux Kernel

