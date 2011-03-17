Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 904374C80578
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 12:48:15 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HHm2vb023025;
	Thu, 17 Mar 2011 17:48:02 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22906-02; Thu, 17 Mar 2011 17:47:58 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HHloWI023019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 17 Mar 2011 17:47:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <cover.1300355683.git.sgw@linux.intel.com>
References: <cover.1300355683.git.sgw@linux.intel.com>
Date: Thu, 17 Mar 2011 17:47:35 +0000
Message-ID: <1300384055.30423.2078.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/7] Non-GPLv3 Changes & a dependency Fix
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
X-List-Received-Date: Thu, 17 Mar 2011 17:48:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-03-17 at 02:58 -0700, Saul Wold wrote:
> From: Saul Wold <sgw@linux.intel.com>
>
> This set of changes enables both poky-image-minimal and poky-image-basic
> to build non-gplv3 core image. These are bound for bernard
> 
> There is also a fix for the gnome-vfs dependency on ACL. This is
> a potential build stopper and should be considered for bernard
> 
> Pull URL: git://git.openembedded.org/openembedded-core-contrib
>   Branch: sgw/non-gplv3
>   Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=sgw/non-gplv3
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Saul Wold (7):
>   util-linux: Setup for GPLv2 Recipe

I don't like this patch at all, there are some typos in it and some
other issues. Too risky for bernard for sure. I'm leaving it for now.

>   extended tasks: move binutils from basic to lsb
>   poky-image-basic: remove POKY_BASE_INSTALL
>   poky.conf: add additional Libraries to the LGPLv2 Whitelist
>   poky.conf: remove gnome-common from WHITELIST_GPLV3
>   gettext: Upgrade GPLv2 version to 0.16.1

I've merged these into OECore and Poky master. Not sure about bernard
yet.

>   gnome-vfs: add DEPENDS for acl

I merged a different fix for the gnome-vfs problem into everything
including bernard.

Cheers,

Richard



