Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ABBBE00288
	for <poky@yoctoproject.org>; Tue, 31 Jul 2012 04:12:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q6VBC5Fe020222;
	Tue, 31 Jul 2012 12:12:05 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19675-06; Tue, 31 Jul 2012 12:12:00 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q6VBBvBL020215
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 31 Jul 2012 12:11:58 +0100
Message-ID: <1343733118.9756.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Leon Woestenberg <sidebranch.openembedded@gmail.com>
Date: Tue, 31 Jul 2012 12:11:58 +0100
In-Reply-To: <1343685807-4157-1-git-send-email-sidebranch.openembedded@gmail.com>
References: <1343685807-4157-1-git-send-email-sidebranch.openembedded@gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Leon Woestenberg <leon@sidebranch.com>, poky@yoctoproject.org
Subject: Re: [master] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Tue, 31 Jul 2012 11:12:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-07-31 at 00:03 +0200, Leon Woestenberg wrote:
> From: Leon Woestenberg <leon@sidebranch.com>
> 
> Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
> only iff exists.
> 
> Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
> ---
>  meta/classes/kernel.bbclass |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


