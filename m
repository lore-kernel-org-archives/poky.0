Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96BB4E0049B
	for <poky@yoctoproject.org>; Fri, 28 Sep 2012 03:21:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8SAL7tS008968;
	Fri, 28 Sep 2012 11:21:07 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06607-09; Fri, 28 Sep 2012 11:21:01 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8SAKxmO008962
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 28 Sep 2012 11:20:59 +0100
Message-ID: <1348827660.15753.39.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: tom.zanussi@intel.com
Date: Fri, 28 Sep 2012 11:21:00 +0100
In-Reply-To: <cover.1348777841.git.tom.zanussi@intel.com>
References: <cover.1348777841.git.tom.zanussi@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] yocto-bsp: update a couple ppc/mips config settings
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
X-List-Received-Date: Fri, 28 Sep 2012 10:21:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-27 at 17:12 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This patchset fixes YOCTO #3178 [building a power pc image with a
> layer created using yocto-bsp fails due to cfg/vfat not available] and
> a similar problem with the dmaengine feature.
> 
> Build-tested both 3.2 and 3.4 kernels using yocto-bsp-generated
> powerpc BSPs.
> 
> The following changes since commit f40bfd2e5f91a3c699833f19cec435a9b897f4b5:
> 
>   bitbake: hob/builder: When you stop a build, Hob should tell you stopping is happening (2012-09-27 16:45:28 +0100)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-ppc-fix
>   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-bsp-ppc-fix
> 
> Tom Zanussi (2):
>   yocto-bsp: make vfat feature inclusion conditional on kernel version
>   yocto-bsp: fix dmaengine feature inclusion

Merged to master, thanks.

Richard


