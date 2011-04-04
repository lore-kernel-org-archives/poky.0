Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67D2A4C80A71
	for <poky@pokylinux.org>; Mon,  4 Apr 2011 11:27:52 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34GRg6I018140;
	Mon, 4 Apr 2011 17:27:42 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17652-09; Mon,  4 Apr 2011 17:27:39 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34GRbkb018134
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 17:27:37 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ilya Yanok <yanok@emcraft.com>
In-Reply-To: <1301703217-29637-2-git-send-email-yanok@emcraft.com>
References: <1301703217-29637-1-git-send-email-yanok@emcraft.com>
	<1301703217-29637-2-git-send-email-yanok@emcraft.com>
Date: Mon, 04 Apr 2011 17:27:34 +0100
Message-ID: <1301934454.24596.401.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/2] qemu-nativesdk: fix do_configure
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
X-List-Received-Date: Mon, 04 Apr 2011 16:27:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-04-02 at 02:13 +0200, Ilya Yanok wrote:
> qemu 0.14 does not need --cross-prefix switch as it uses CC environment
> variables (and friends) which contains the cross prefix already.
> 
> Signed-off-by: Ilya Yanok <yanok@emcraft.com>
> ---
>  meta/recipes-devtools/qemu/qemu.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


