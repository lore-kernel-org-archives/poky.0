Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A1F94C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 06:26:38 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 848BE12EC2F9
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 07:06:55 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <cover.1294944826.git.scott.a.garman@intel.com>
References: <cover.1294944826.git.scott.a.garman@intel.com>
Date: Fri, 14 Jan 2011 12:26:29 +0000
Message-ID: <1295007989.2509.4.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 0/3] poky-qemu fixes for Laverne point-release
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
X-List-Received-Date: Fri, 14 Jan 2011 12:26:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-13 at 10:58 -0800, Scott Garman wrote:
> Hi Josh,
> 
> This pull request includes important poky-qemu fixes that I'd like to
> see included for our upcoming Laverne point-release.

Thanks Scott, I've included these in my josh/laverne branch on
poky-contrib.

Regards,
Joshua

> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: sgarman/laverne-point-release
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/laverne-point-release
> 
> Thanks,
>     Scott Garman <scott.a.garman@intel.com>
> ---
> 
> 
> Richard Purdie (1):
>   scripts/poky-qemu: Improve tmp layout assumption
> 
> Scott Garman (2):
>   poky-qemu: Fix issues when running Yocto 0.9 release images
>   Make poky-qemu and related scripts work with arbitrary SDK locations
> 
>  scripts/poky-find-native-sysroot |    2 +-
>  scripts/poky-qemu                |  104 +++++++++++++++++++++----------------
>  scripts/poky-qemu-ifdown         |    9 +---
>  scripts/poky-qemu-ifup           |    9 +---
>  scripts/poky-qemu-internal       |   16 +------
>  5 files changed, 63 insertions(+), 77 deletions(-)
> 

-- 
Joshua Lock
        Intel Open Source Technology Centre


