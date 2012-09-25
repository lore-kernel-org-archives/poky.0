Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 589C6E011C0
	for <poky@yoctoproject.org>; Tue, 25 Sep 2012 02:43:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8P9hkD5006900;
	Tue, 25 Sep 2012 10:43:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06074-06; Tue, 25 Sep 2012 10:43:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8P9hc6c006890
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 25 Sep 2012 10:43:39 +0100
Message-ID: <1348566216.8662.40.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 25 Sep 2012 10:43:36 +0100
In-Reply-To: <9c3d7421375b0339bf91506960b906e15030e9d6.1348518450.git.bruce.ashfield@windriver.com>
References: <cover.1348518450.git.bruce.ashfield@windriver.com>
	<9c3d7421375b0339bf91506960b906e15030e9d6.1348518450.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, liang.li@windriver.com
Subject: Re: [PATCH 1/1] beagleboard: update to 3.4
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
X-List-Received-Date: Tue, 25 Sep 2012 09:43:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-09-24 at 16:31 -0400, Bruce Ashfield wrote:
> Updating the default preference of the beagleboard to the 3.4
> kernel.
> 
> build, boot and testing has been done on the beagleboard (revC) and
> beagleboard XM. Existing functionality has been confirmed using
> core-image-sato, and in particular mouse, keyboard and graphics have
> been re-validated.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/beagleboard.conf       |    2 +-
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Merged to master, thanks.

Richard


