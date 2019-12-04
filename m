Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.4565.1575468291654242414
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 06:04:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xB4E4gkQ013915
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
	for <poky@lists.yoctoproject.org>; Wed, 4 Dec 2019 08:04:44 -0600
Subject: Re: [poky] [PATCH] poky: Default to enabling a local hash equivalence server
To: poky@lists.yoctoproject.org
References: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <8c767875-784a-c98e-ef49-60502d27f651@kernel.crashing.org>
Date: Wed, 4 Dec 2019 08:04:41 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

It does seem to cause issues w/ PR Server usage and packagefeed stability.  (I'm
not saying don't do this, I think we absolutely SHOULD have it enabled.. we but
we will need to figure out the issues.)

PR Service, when this is enabled, even if the hash is equivalent a new package
version is produced (at least locally) in all cases.

Adding in packagefeed-stability and the image is generated with the new package
versions that don't actually end up existing in the feed.  (This might just be a
packagefeed-stability bug and not hash equivalency.)

--Mark

On 12/4/19 6:09 AM, Richard Purdie wrote:
> This doesn't particularly change performance but allows users to have
> build speedup doing rebuilds during local development so should be
> useful and enabled by default.
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 82b20642818..abfeb063b49 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -89,3 +89,6 @@ require conf/distro/include/security_flags.inc
>  INHERIT += "uninative"
>  
>  INHERIT += "reproducible_build"
> +
> +BB_SIGNATURE_HANDLER ?= "OEEquivHash"
> +BB_HASHSERVE = "auto"
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#11851): https://lists.yoctoproject.org/g/poky/message/11851
> Mute This Topic: https://lists.yoctoproject.org/mt/66431026/3616948
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [mark.hatle@kernel.crashing.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
