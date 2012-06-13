Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFC75E01304
	for <poky@yoctoproject.org>; Wed, 13 Jun 2012 03:42:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5DAgV9C020346;
	Wed, 13 Jun 2012 11:42:31 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19740-04; Wed, 13 Jun 2012 11:42:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5DAgO0o020340
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 13 Jun 2012 11:42:25 +0100
Message-ID: <1339584144.8065.24.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 13 Jun 2012 11:42:24 +0100
In-Reply-To: <35ca6c5c7f4f85aa808f7704e47b67edfaea9258.1339534218.git.bruce.ashfield@windriver.com>
References: <cover.1339534218.git.bruce.ashfield@windriver.com>
	<35ca6c5c7f4f85aa808f7704e47b67edfaea9258.1339534218.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] meta-yocto/linux-yocto: fix routerstationpro build
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
X-List-Received-Date: Wed, 13 Jun 2012 10:42:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-06-12 at 16:52 -0400, Bruce Ashfield wrote:
> The update from v3.0.24 to v3.0.32 removed a lock that the routerstationpro
> BSP was using, and broke the build.
> 
> Updating the SRCREV to pickup a fix for the new lock and fix the board
> build.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


