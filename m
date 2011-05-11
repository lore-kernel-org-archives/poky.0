Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52AF54C80523
	for <poky@yoctoproject.org>; Wed, 11 May 2011 10:44:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BFi099021317;
	Wed, 11 May 2011 16:44:00 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20995-08; Wed, 11 May 2011 16:43:57 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BFht9f021311
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 16:43:55 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305016641.git.xiaofeng.yan@windriver.com>
References: <cover.1305016641.git.xiaofeng.yan@windriver.com>
Date: Wed, 11 May 2011 16:43:49 +0100
Message-ID: <1305128629.30391.381.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Add init scripts and make a link for sendmail
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
X-List-Received-Date: Wed, 11 May 2011 15:44:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 16:08 +0800, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> I Add init-functios to lsb-image because LSB Test suite need init scripts.
> And I make a link for sendmail because LSB Test Suite need it. 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: xiaofeng/lsb
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb
> 
> Thanks,
>     Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
> 
> 
> Xiaofeng Yan (3):
>   wq!lsb: Add init-functions to lsb-image
>   init-functions: Conforming applications may install one or more
>     initialization scripts
>   lsbsetup: Add link for sendmail

Merged to master, thanks.

Richard


