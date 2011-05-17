Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD2C44C801BF
	for <poky@yoctoproject.org>; Tue, 17 May 2011 11:18:13 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HGIB36018357;
	Tue, 17 May 2011 17:18:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18079-06; Tue, 17 May 2011 17:18:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4HGI5YA018351
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 May 2011 17:18:05 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Date: Tue, 17 May 2011 17:18:04 +0100
Message-ID: <1305649084.3424.256.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8][PULL] Upstream Status Update
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
X-List-Received-Date: Tue, 17 May 2011 16:18:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-17 at 16:48 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> Hi Saul,
> 
> Here are some upstream status update for poky patches,
> please help to review and pull.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dxu4/upgrade
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/upgrade
> 
> Thanks,
>     Dongxiao Xu <dongxiao.xu@intel.com>
> ---
> 
> 
> Dongxiao Xu (8):
>   gypsy: Add upstream status information for gypsy's patch
>   alsa-utils: fix upstream status typo
>   pulseaudio: add upstream status for pulseaudio-0.9.15's patches
>   hostap: add upstream status for hostap's patch
>   glibc: add upstream status for glibc's patch
>   glib-2.0: add upstream status for glib-2.0's patch
>   mtd-utils: add upstream status for mtd-utils patches
>   add upstream status for opkg's patches

Merged to master as a squashed series, thanks.

Richard


