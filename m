Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74B02E004F2; Thu, 21 Aug 2014 15:02:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 547 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Aug 2014 15:02:43 PDT
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0D28E0044A
	for <poky@yoctoproject.org>; Thu, 21 Aug 2014 15:02:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C9485F811F7; Thu, 21 Aug 2014 15:53:35 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1E846F811ED;
	Thu, 21 Aug 2014 15:53:34 -0600 (MDT)
Message-ID: <53F66A63.6070206@mlbassoc.com>
Date: Thu, 21 Aug 2014 15:53:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1408657619-2523-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1408657619-2523-1-git-send-email-akuster808@gmail.com>
Subject: Re: [PATCH] nettle: add nettle to tracking
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Aug 2014 22:02:54 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-08-21 15:46, Armin Kuster wrote:
> add not regarding nettle upgrade
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   meta-yocto/conf/distro/include/upstream_tracking.inc | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
> index a018803..ab94ac4 100644
> --- a/meta-yocto/conf/distro/include/upstream_tracking.inc
> +++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
> @@ -162,6 +162,8 @@ CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
>   RECIPE_UPSTREAM_DATE_pn-modutils-initscripts = "n/a"
>   RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
>   RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
> +CHECK_DATE_pn-nettle = "Aug 21, 2014"
> +RECIPE_NO_UPDATE_REASON-nettle = "3.0.0 breaks gnutls, api changes"

Shouldn't this be RECIPE_NO_UPDATE_REASON_pn-nettle?

>   RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
>   RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
>   CHECK_DATE_pn-ofono = "Aug 31, 2012"
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

