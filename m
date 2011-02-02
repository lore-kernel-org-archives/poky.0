Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9A9A4C8008C
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 18:10:04 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p120C6tX010215; Wed, 2 Feb 2011 00:12:07 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id temDqN-4UA5H; Wed,  2 Feb 2011 00:12:06 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p120Bxl2010208
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 2 Feb 2011 00:12:02 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <F9AEC290-DD02-4D3C-9649-DE28DCD6DF18@dominion.thruhere.net>
References: <912371C7-ACCF-4DA9-A2E7-2F863C72189F@dominion.thruhere.net>
	<F9AEC290-DD02-4D3C-9649-DE28DCD6DF18@dominion.thruhere.net>
Date: Wed, 02 Feb 2011 00:09:49 +0000
Message-ID: <1296605389.13501.21821.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Fetcher2 problems break parsing
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
X-List-Received-Date: Wed, 02 Feb 2011 00:10:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 15:34 +0100, Koen Kooi wrote:
> Op 1 feb 2011, om 14:07 heeft Koen Kooi het volgende geschreven:
> 
> > Hi,
> > 
> > Since a few days I'm getting this on recipes using SRCPV:
> > 
[...]
> > 
> > This seems to happen when no SRCREV is set, is that the intended behaviour?
> 
> RP gave me this patch to try:
> 
> koen@dominion:/OE/tentacle/sources/openembedded$ git diff
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index 9fe4eb2..d62ba81 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -864,7 +864,7 @@ class Fetch(object):
>          if uselocalcount:
>              count = Fetch.localcount_internal_helper(ud, d)
>          if count is None:
> -            count = localcounts[key + '_count']
> +            count = localcounts[key + '_count'] or "0"
>  
>          if last_rev == latest_rev:
>              return str(count + "+" + latest_rev)
> 
> 
> and that seems to work.

Its not intended and this patch has been merged into master.

Cheers,

Richard


