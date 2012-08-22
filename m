Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECDBE01388;
	Wed, 22 Aug 2012 06:27:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MDR6mX003520;
	Wed, 22 Aug 2012 14:27:06 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03207-05; Wed, 22 Aug 2012 14:27:02 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7MDQvgf003506
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 22 Aug 2012 14:26:58 +0100
Message-ID: <1345642019.3907.120.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Wed, 22 Aug 2012 14:26:59 +0100
In-Reply-To: <1345217059-10448-1-git-send-email-paul.gortmaker@windriver.com>
References: <502D73D4.6090408@linux.intel.com>
	<1345217059-10448-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	poky@yoctoproject.org
Subject: Re: [PATCH v2] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Wed, 22 Aug 2012 13:27:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-17 at 11:24 -0400, Paul Gortmaker wrote:
> The updated patch series to support this target is in place
> on the BSP specific branch in the 3.4 kernel tree now[1], so
> we can move it ahead off of the old 3.0 kernel.
> 
> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html
> 
> Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
> Cc: Saul Wold <sgw@linux.intel.com>
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> ---
> 
> [v2: update to the SRCREV-of-the-day.  Note that if anyone sees
>  build failures with this, you are also missing the meta SRCREV
>  update in linux-yocto_3.4.bb from Bruce.  Yay SRCREV. ]
> 
>  meta-yocto/conf/machine/routerstationpro.conf            | 2 +-
>  meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Merged to master, thanks. I had to manually apply the patch.

Cheers,

Richard


