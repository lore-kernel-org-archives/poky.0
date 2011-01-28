Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DE714C81281
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 19:12:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Jan 2011 17:12:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380986160"
Received: from unknown (HELO [10.255.14.102]) ([10.255.14.102])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 17:12:14 -0800
Message-ID: <4D4217EE.9020600@intel.com>
Date: Thu, 27 Jan 2011 17:12:14 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D39FB56.8020204@linux.intel.com>
In-Reply-To: <4D39FB56.8020204@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] send-pull-request: send all patches as the local user
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
X-List-Received-Date: Fri, 28 Jan 2011 01:12:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 01:32 PM, Darren Hart wrote:
> Please pull the following patch from poky-contrib/dvhart/git-pull
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/git-pull
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/git-pull
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
>
>
> When using sendmail to send patches, patches would appear to be from the
> original author as git adds a From: header in the generated patches.  This patch
> changes this behavior to match that of git-send-email, where the email From:
> header is that of the current sender (according to sendmail) and a "From:
> Original Author<email>" line is inserted into the body of the message.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   scripts/send-pull-request |    7 ++++++-
>   1 files changed, 6 insertions(+), 1 deletions(-)
>
> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
> index 9872c0d..af7ce2a 100755
> --- a/scripts/send-pull-request
> +++ b/scripts/send-pull-request
> @@ -140,13 +140,18 @@ if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
>                   # appending them to the sendmail command as -- $TO $CC has
>                   # proven to be an exercise in futility.
>                   #
> +                # Clear the From header, leaving it up to sendmail to insert an
> +                # appropriate one. Insert the original sender (per git) into the
> +                # body of the message.
> +                #
>                   # Use tail to remove the email envelope from git or formail as
>                   # msmtp (sendmail) would choke on them.
>                   #
>                   # Modify the patch date for sequential delivery, but retain the
>                   # original date as "Old-Date".
>                   DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
> -                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
> +                GIT_FROM=$(cat $PATCH | formail -X "From:")
> +                cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -I "From:" -i "Date: $DATE" | sed "0,/^$/s/^$/\n$GIT_FROM\n/" | tail -n +2 | sendmail -t
>                   if [ $? -eq 1 ]; then
>                       ERROR=1
>                   fi
Pulled into Master

Thanks
	Sau!


