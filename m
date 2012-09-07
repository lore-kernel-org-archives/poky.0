Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2075E01507
	for <poky@yoctoproject.org>; Fri,  7 Sep 2012 03:38:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q87AcBrV028093;
	Fri, 7 Sep 2012 11:38:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27778-02; Fri,  7 Sep 2012 11:38:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q87Ac1AZ028087
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 7 Sep 2012 11:38:02 +0100
Message-ID: <1347014282.7493.45.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 07 Sep 2012 11:38:02 +0100
In-Reply-To: <dab8c5b0b049c6d378907f1df28de0d308811786.1346957046.git.bruce.ashfield@windriver.com>
References: <cover.1346957046.git.bruce.ashfield@windriver.com>
	<dab8c5b0b049c6d378907f1df28de0d308811786.1346957046.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] mpc8315e-rdb: switch to ppce300c3 tuning
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
X-List-Received-Date: Fri, 07 Sep 2012 10:38:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-06 at 14:46 -0400, Bruce Ashfield wrote:
> It has been pointed out several times that the mpc8315e-rdb is a
> ppce300c3 board, and should be using a different tuning than it's
> current ppc603e.
> 
> This switching the default tuning of the board to the newly introduced
> ppce300c3 tuning in oe-core.
> 
> [YOCTO #1192]
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


