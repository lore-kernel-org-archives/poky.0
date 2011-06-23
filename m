Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F012D4C8005F
	for <poky@yoctoproject.org>; Thu, 23 Jun 2011 05:20:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5NAK2a7015840;
	Thu, 23 Jun 2011 11:20:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15671-03; Thu, 23 Jun 2011 11:19:58 +0100 (BST)
Received: from [192.168.1.45] (dynamic15.rpnet.com [192.168.1.45])
	(authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5NAJtwV015829
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 23 Jun 2011 11:19:56 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1308798060.git.xiaofeng.yan@windriver.com>
References: <cover.1308798060.git.xiaofeng.yan@windriver.com>
Date: Thu, 23 Jun 2011 11:19:54 +0100
Message-ID: <1308824394.20015.110.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-lsb.conf: Instead of += with _append
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
X-List-Received-Date: Thu, 23 Jun 2011 10:20:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-23 at 15:49 +0800, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> Hi Richard,
> 
> The variable "DISTRO_FEATURES += " lost its function because it has been moved to defaultsetup.conf.
> Defaultsetup.conf is included after poky-lsb.conf. So the variable is empty. I use "_append" to take place of "+=".
> Please check patch for detailed information.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: xiaofeng/poky-lsb
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/poky-lsb
> 
> Thanks,
>     Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
> 
> 
> Xiaofeng Yan (1):
>   poky-lsb.conf: Instead of += with _append

Merged to master, thanks.

Richard


