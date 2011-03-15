Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D54C4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 06:37:13 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FBbBgJ017754;
	Tue, 15 Mar 2011 11:37:11 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17256-10; Tue, 15 Mar 2011 11:37:07 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FBb5D1017748
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 11:37:05 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1300185095.git.josh@linux.intel.com>
References: <cover.1300185095.git.josh@linux.intel.com>
Date: Tue, 15 Mar 2011 11:36:57 +0000
Message-ID: <1300189017.30423.1586.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix inclusion of meta-yocto
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
X-List-Received-Date: Tue, 15 Mar 2011 11:37:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 11:17 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> New build dirs created on the master branch are missing the meta-yocto
> layer in the default bblayers.conf
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (1):
>   bblayers.conf.sample: include meta-yocto in default layers
> 
>  meta-yocto/conf/bblayers.conf.sample |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)

I'm not sure how I missed that, I was sure I'd committed something like
that. I've merged to master, thanks!

Richard



