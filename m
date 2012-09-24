Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55727E013D2
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 03:15:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8OAFetC027594;
	Mon, 24 Sep 2012 11:15:40 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26940-06; Mon, 24 Sep 2012 11:15:36 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8OAFVmN027588
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 24 Sep 2012 11:15:32 +0100
Message-ID: <1348481716.4654.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 24 Sep 2012 11:15:16 +0100
In-Reply-To: <adb8f33ad68de73d53cb7d4e1d9881d68152e3a7.1348456829.git.bruce.ashfield@windriver.com>
References: <cover.1348456829.git.bruce.ashfield@windriver.com>
	<adb8f33ad68de73d53cb7d4e1d9881d68152e3a7.1348456829.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto/meta-yocto/3.4: update machine SRCREVs
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
X-List-Received-Date: Mon, 24 Sep 2012 10:15:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-09-23 at 23:22 -0400, Bruce Ashfield wrote:
> The hardware reference BSPs are lagging the oe-core qemu BSPs. Bumping
> their SRCREVs to pickup 3.4.10 and minor bug fixes.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)

Merged to master, thanks.

Richard


