Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web09.5630.1626439112614838117
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Jul 2021 05:38:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 88ABC2000D;
	Fri, 16 Jul 2021 12:38:30 +0000 (UTC)
Date: Fri, 16 Jul 2021 14:38:30 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: Asfak Rahman <asfakr@outlook.com>
Cc: poky@lists.yoctoproject.org, armccurdy@gmail.com,
	richard.purdie@linuxfoundation.org
Subject: Re: [poky] [PATCH] openssh: Remove temporary keys before generating new ones
Message-ID: <YPF9xnRSJvAzUz27@piout.net>
References: <DB7PR08MB3595D4D1FFE46A51D63D9151D0119@DB7PR08MB3595.eurprd08.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DB7PR08MB3595D4D1FFE46A51D63D9151D0119@DB7PR08MB3595.eurprd08.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 16/07/2021 09:32:00+0300, Asfak Rahman wrote:
> Key generation may wait for user input, due to the existence of
> temporary keys resulting from power interruption in the first boot.
> This prevents users from login via ssh.
> 
> Signed-off-by: Asfak Rahman <asfakr@outlook.com>
> ---
> PING: could someone look into this patch please
> 

It has been applied two weeks ago:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=567b7e306045075abfbf92726517cd28e7c17914

>  meta/recipes-connectivity/openssh/openssh/sshd_check_keys | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
> index 1931dc7153..ef117de897 100644
> --- a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
> +++ b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
> @@ -6,6 +6,7 @@ generate_key() {
>      local DIR="$(dirname "$FILE")"
>  
>      mkdir -p "$DIR"
> +    rm -f ${FILE}.tmp
>      ssh-keygen -q -f "${FILE}.tmp" -N '' -t $TYPE
>  
>      # Atomically rename file public key
> -- 
> 2.17.1
> 

> 
> 
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
