Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5F634C80337
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 04:44:40 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3S9iUuR016602;
	Thu, 28 Apr 2011 10:44:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16540-01; Thu, 28 Apr 2011 10:44:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3S9iMT9016596
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 28 Apr 2011 10:44:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1303929862.git.bruce.ashfield@windriver.com>
References: <cover.1303929862.git.bruce.ashfield@windriver.com>
Date: Thu, 28 Apr 2011 10:43:50 +0100
Message-ID: <1303983830.21461.57.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: create SMP config fragement
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
X-List-Received-Date: Thu, 28 Apr 2011 09:44:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-27 at 14:46 -0400, Bruce Ashfield wrote:
> Please pull this SRCREV update, the patch pretty much says 
> it all. We are adding a SMP config fragement so that BSPs
> can re-use and optionally enable this (for BSPs that may
> or may not want to always be SMP).
> 
> cc: Darren Hart <dvhart@linux.intel.com>
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/smp
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/smp
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> 
> 
> Bruce Ashfield (1):
>   linux-yocto: create SMP config fragment

Merged to master as I happened to look at this.

Cheers,

Richard


