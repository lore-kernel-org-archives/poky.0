Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80FAB4C80FBB
	for <poky@yoctoproject.org>; Wed,  4 May 2011 02:57:16 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p447vFcp028401;
	Wed, 4 May 2011 08:57:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28185-04; Wed,  4 May 2011 08:57:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p447v8Lq028395
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 May 2011 08:57:08 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jiajun Xu <jiajun.xu@intel.com>
In-Reply-To: <cover.1304472076.git.jiajun.xu@intel.com>
References: <cover.1304472076.git.jiajun.xu@intel.com>
Date: Wed, 04 May 2011 08:57:04 +0100
Message-ID: <1304495824.21461.152.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] qemuimagetest: Add executable permission to toolchain test scripts
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
X-List-Received-Date: Wed, 04 May 2011 07:57:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-04 at 09:25 +0800, Jiajun Xu wrote:
> From: Jiajun Xu <jiajun.xu@intel.com>
> 
> The file mode bits of toolchain test scripts is 644, which could not be
> executed by user. Fix the issue by adding executable permission(755) to
> all test scripts for toolchain test.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: jxu49/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
> 
> Thanks,
>     Jiajun Xu <jiajun.xu@intel.com>
> ---
> 
> 
> Jiajun Xu (1):
>   qemuimagetest: Add executable permission to test scripts for
>     toolchain

Merged to master, thanks.

Richard


