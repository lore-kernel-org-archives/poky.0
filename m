Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C06BDE01404
	for <poky@yoctoproject.org>; Wed,  1 Aug 2012 14:55:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q71Ltuje000820;
	Wed, 1 Aug 2012 22:55:56 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29046-10; Wed,  1 Aug 2012 22:55:52 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q71Ltn40000814
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 1 Aug 2012 22:55:50 +0100
Message-ID: <1343858150.9756.64.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 01 Aug 2012 22:55:50 +0100
In-Reply-To: <1ba4bed94060dcede67c9be64cead095b9acfd83.1343847551.git.dvhart@linux.intel.com>
References: <cover.1343847551.git.dvhart@linux.intel.com>
	<1ba4bed94060dcede67c9be64cead095b9acfd83.1343847551.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] tiny-init: Setup /dev/ptmx in init
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
X-List-Received-Date: Wed, 01 Aug 2012 21:55:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-08-01 at 12:01 -0700, Darren Hart wrote:
> Fixes [YOCTO #2382]
> 
> Without /dev/ptmx, ssh logins fail with:
> "PTY allocation request failed on channel 0"
> 
> As the kernel support already exists in the linux-yocto-tiny kernel,
> create the /dev/ptmx device in tiny-init so it works as intended.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Reinette Chatre <reinette.chatre@intel.com>
> ---
>  meta-yocto/recipes-core/tiny-init/files/init   |    3 +++
>  meta-yocto/recipes-core/tiny-init/tiny-init.bb |    2 +-
>  2 files changed, 4 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


