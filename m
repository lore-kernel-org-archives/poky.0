Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64FEB4C8088B
	for <poky@pokylinux.org>; Tue,  5 Apr 2011 16:24:52 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p35LOf7h002910;
	Tue, 5 Apr 2011 22:24:41 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02402-01-10; Tue,  5 Apr 2011 22:24:33 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p35LLbnS001828
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Apr 2011 22:21:42 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ilya Yanok <yanok@emcraft.com>
In-Reply-To: <1301966025-26492-1-git-send-email-yanok@emcraft.com>
References: <1301966025-26492-1-git-send-email-yanok@emcraft.com>
Date: Tue, 05 Apr 2011 17:14:09 +0100
Message-ID: <1302020049.24596.493.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [REPOST][PATCH] native, nativesdk, crosssdk: reset TARGET_FPU
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
X-List-Received-Date: Tue, 05 Apr 2011 21:24:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-05 at 03:13 +0200, Ilya Yanok wrote:
> When building one of the native, nativesdk or crosssdk packages TARGET_*
> variables' values are no longer related to the target we set via MACHINE
> variable, they are now related to the BUILD (native) or SDK (nativesdk,
> crosssdk) targets instead. We need to change TARGET_FPU variable
> accordingly or some of the recipes (the ones that check for TARGET_FPU
> value, most notably gcc and eglibc) might be confused.
> 
> It's probably cleaner not to reset TARGET_FPU but to change it to
> something like ${BUILD_FPU} (for native) or ${SDK_FPU} (for crosssdk and
> nativesdk) but as long as BUILD and SDK are x86 it's safe to just reset
> TARGET_FPU.
> 
> Signed-off-by: Ilya Yanok <yanok@emcraft.com>

Merged to master, thanks.

Richard


