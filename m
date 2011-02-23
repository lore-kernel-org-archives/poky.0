Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65AF94C80A94
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 10:23:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGNYUc016474;
	Wed, 23 Feb 2011 16:23:34 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16440-01; Wed, 23 Feb 2011 16:23:30 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGNTkG016468
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 23 Feb 2011 16:23:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mei Lei <lei.mei@intel.com>
In-Reply-To: <cover.1298461187.git.lei.mei@intel.com>
References: <cover.1298461187.git.lei.mei@intel.com>
Date: Wed, 23 Feb 2011 16:23:25 +0000
Message-ID: <1298478205.26736.38.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]distrodata.bbclass: Fix some issues when checking upstream version on sourceforge
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
X-List-Received-Date: Wed, 23 Feb 2011 16:23:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-01-23 at 19:52 +0800, Mei Lei wrote:
> From: Mei Lei <lei.mei@intel.com>
> 
> After this patch, it will check more 34 recipes upsteam version automatically, so we only need to check about 20 recipes upstream version manually.
> I will continue to reduce the manual check number.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lmei3/distrodata2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata2
> 
> Thanks,
>     Mei Lei <lei.mei@intel.com>
> ---
> 
> 
> Mei Lei (1):
>   distrodata.bbclass: Fix some issues when checking upstream version on
>     sourceforge
> 
>  meta/classes/distrodata.bbclass |    7 ++++---
>  1 files changed, 4 insertions(+), 3 deletions(-)


Merged to master, thanks.

Cheers,

Richard


