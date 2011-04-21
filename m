Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4267C4C80A54
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 04:16:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3L9GIDI002840;
	Thu, 21 Apr 2011 10:16:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02514-05; Thu, 21 Apr 2011 10:16:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3L9G7wt002834
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Apr 2011 10:16:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sparsh Wid hope <sparsh150847@yahoo.com>
In-Reply-To: <20666.63530.qm@web95720.mail.in.yahoo.com>
References: <20666.63530.qm@web95720.mail.in.yahoo.com>
Date: Thu, 21 Apr 2011 10:15:52 +0100
Message-ID: <1303377352.5518.344.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: Problem with patch implementation
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
X-List-Received-Date: Thu, 21 Apr 2011 09:16:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-21 at 10:20 +0530, Sparsh Wid hope wrote:
> I am trying to apply patch through poky but it is not working. My
> patch is working when I'm trying it manually with following message :
> surya@spectracore-Vostro-220s-Series:~/Desktop/my_kernel/linux$ patch
> -Np1 -i ../../../Surya/pro/kernel_patch/beagle.patch patching file
> arch/arm/mach-omap2/board-omap3beagle.c
> Hunk #7 FAILED at 336.
> Hunk #8 succeeded at 376 (offset 6 lines).
> Hunk #9 succeeded at 406 (offset 6 lines).
> Hunk #10 succeeded at 422 (offset 6 lines).
> Hunk #11 succeeded at 463 (offset 6 lines).
> Hunk #12 succeeded at 514 (offset 6 lines).
> Hunk #13 succeeded at 572 (offset 6 lines).
> Hunk #14 succeeded at 654 (offset 6 lines).
> Hunk #15 succeeded at 670 (offset 6 lines).
> 1 out of 15 hunks FAILED -- saving rejects to file
> arch/arm/mach-omap2/board-omap3beagle.c.rej
> patching file drivers/input/touchscreen/tsc2007.c
> patching file drivers/video/omap2/displays/Kconfig
> patching file drivers/video/omap2/displays/Makefile
> patching file drivers/video/omap2/displays/panel-cmel-oled43.c
> 
> but with poky do_patch is getting failed.
> I'm sending my PATCH FILE and ERROR LOG in attachments.
> 

This is not a working patch, it has rejects as shown by the message "1
out of 15 hunks FAILED -- saving rejects to file". The offsets also show
the patch has issues too which should be fixed. Poky is perfectly
correct in failing to apply the patch as the patch is broken.

Cheers,

Richard


