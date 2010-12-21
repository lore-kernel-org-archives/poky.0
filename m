Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74B204C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 04:54:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2010 02:53:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="870392210"
Received: from unknown (HELO [10.255.16.49]) ([10.255.16.49])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 02:53:34 -0800
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
In-Reply-To: <839e299af32e8de5c86e7225954533a452409a2d.1292870880.git.dvhart@linux.intel.com>
References: <cover.1292870880.git.dvhart@linux.intel.com>
	<839e299af32e8de5c86e7225954533a452409a2d.1292870880.git.dvhart@linux.intel.com>
Date: Tue, 21 Dec 2010 10:52:48 +0000
Message-ID: <1292928768.2701.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/1] send-pull-request: Use current date in mail headers
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
X-List-Received-Date: Tue, 21 Dec 2010 10:54:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-20 at 10:50 -0800, Darren Hart wrote:
> Some users experience problems viewing the pull requests as a sequential
> mail series due to the script using the git commit date for the patches
> and today's date for the cover letter.
> 
> Address this by renaming the email Date: header to Old-Date: and adding
> a new Date: header with a current timestamp.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> Reported-by: Gary Thomas <gary@mlbassoc.com>
> Cc: Josh Lock <josh@linux.intel.com>

Acked-by: Joshua Lock <josh@linux.intel.com>

> ---
>  scripts/send-pull-request |    6 +++++-
>  1 files changed, 5 insertions(+), 1 deletions(-)
> 
> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
> index 0576a5d..03a78f9 100755
> --- a/scripts/send-pull-request
> +++ b/scripts/send-pull-request
> @@ -118,7 +118,11 @@ if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
>          # 
>          # Use tail to remove the email envelope from git or formail as
>          # msmtp (sendmail) would choke on them.
> -        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail -n +2 | sendmail -t
> +        #
> +        # Modify the patch date for sequential delivery, but retain the
> +        # original date as "Old-Date".
> +        DATE=$(date +"%a, %d %b %Y %k:%M:%S %z")
> +        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" -i "Date: $DATE" | tail -n +2 | sendmail -t
>          if [ $? -eq 1 ]; then
>              ERROR=1
>          fi

-- 
Joshua Lock
        Intel Open Source Technology Centre


