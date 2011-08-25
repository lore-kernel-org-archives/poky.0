Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A72E0122C
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 18:31:05 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7P1UxnQ025749;
	Thu, 25 Aug 2011 02:30:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25116-07; Thu, 25 Aug 2011 02:30:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7P1UnRL025739
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 25 Aug 2011 02:30:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
Date: Wed, 24 Aug 2011 18:30:47 -0700
Message-ID: <1314235847.5939.167.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/3] linux-yocto/meta-yocto: consolidated kernel pull request
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
X-List-Received-Date: Thu, 25 Aug 2011 01:31:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-24 at 16:54 -0400, Bruce Ashfield wrote:
> These changes build on top of the recently sent pull request for
> the core machines.
> 
> This set of changes updates the preferred version for two more hardware
> references (atom-pc/mpc8315) to 3.0 and ensure that the qemu machines
> build 3.0 by default when meta-yocto is included. Let me know if my 
> efforts to force the qemu machines to prefer 3.0 are correct, I wasn't
> sure if there was a better approach.
> 
> The following changes since commit 6d0f1146b188f7efffc46477590b3b5615ae3035:
> 
>   linux-yocto/2.6.37: apmd + get time of day fixes (2011-08-24 16:33:07 -0400)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib kernel-yocto
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> 
> Bruce Ashfield (3):
>   meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
>   linux-yocto/meta-yocto: update SRCREVs for 3.0.3 and consolidated
>     fixes
>   meta-yocto: make qemu machines prefer linux-yocto_3.0

The push command you used for this series had the same issue as the
other one, lacking a prefix ;-)

Merged to master though, thanks.

Richard


