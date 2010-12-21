Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 107424C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 15:19:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 13:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,209,1291622400"; d="scan'208";a="870597894"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 13:19:55 -0800
Message-ID: <4D1119EA.9010806@linux.intel.com>
Date: Tue, 21 Dec 2010 13:19:38 -0800
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
X-List-Received-Date: Tue, 21 Dec 2010 21:19:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 01:39 AM, Khem Raj wrote:
> * usually git send-mail is setup by people using git
>    so use git send-mail to post patches for pull requests
>    There is how to setup git send-email
>    see section "Set up git"
>    http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbedded

I didn't use git-send-email for this script because of a few 
complications with it. First, when using the --compose option, there is 
no way to pass it a file for the cover-letter. Second, it doesn't scan 
the entire patch series for recipients and will send each mail in the 
thread to different recipients - including the cover letter, which I 
find simply obnoxious. These prevent it from being used as a single 
command with a refspec for the range of patches. If you aren't going to 
do this, then using it in a loop is effectively the same as using 
sendmail. If you're using git-send-email, then you already have local 
sendmail setup.

Other than using your local git mail aliases, I don't see any advantage 
to using git-send-email. If you're using the auto-harvest feature, you 
had to dig up the proper email addresses anyway. It does however add a 
second configuration step - the [sendemail] section. I do have this 
setup myself, but enough people trip over just getting a local sendmail 
configuration working that adding git sendemail to that just doesn't 
seem worth it to me.

Is there an advantage to git sendemail that I am overlooking?

Thanks,

Darren Hart

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
>           if [ $? -eq 1 ]; then
>               ERROR=1
>           fi
>       done
>       if [ $ERROR -eq 1 ]; then
> -        echo "ERROR: sendmail failed to send one or more messages. Check your"
> -        echo "       sendmail log for details."
> +        echo "ERROR: git send-mail failed to send one or more messages."
>       fi
>   else
>       echo "Send aborted."


-- 
Darren Hart
Yocto Linux Kernel

