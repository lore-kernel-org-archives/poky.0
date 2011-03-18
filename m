Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE2194C80050
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:56:30 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGuPhd009287;
	Fri, 18 Mar 2011 16:56:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09058-04; Fri, 18 Mar 2011 16:56:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IGuHMx009279
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 16:56:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300465259.git.nitin.a.kamble@intel.com>
References: <cover.1300465259.git.nitin.a.kamble@intel.com>
Date: Fri, 18 Mar 2011 16:56:00 +0000
Message-ID: <1300467360.30423.2208.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/7] commits for GPLv2 poky-image-basic image
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
X-List-Received-Date: Fri, 18 Mar 2011 16:56:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 09:24 -0700, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> 
> Richard,
>   I have rrebased this to bernard branch. So you may not need all the commits
> as you have already pulled some of the saul's commits in the OE & master 
> branch.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin/misc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
> 
> Thanks,
>     Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
> 
> 
> Nitin A Kamble (1):
>   coreutils-6.9: fix man page building for the gplv2 recipe
> 
> Saul Wold (6):
>   extended tasks: move binutils from basic to lsb
>   poky-image-basic: remove POKY_BASE_INSTALL
>   poky.conf: add additional Libraries to the LGPLv2 Whitelist
>   poky.conf: remove gnome-common from WHITELIST_GPLV3
>   gettext: Upgrade GPLv2 version to 0.16.1
>   util-linux: Setup for GPLv2 Recipe

Most of these had already merged. I've added the util-linux one to
master though.

Cheers,

Richard


