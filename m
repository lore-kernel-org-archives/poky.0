Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id D54054C81065
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 18:43:08 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.69)
	(envelope-from <yanok@emcraft.com>)
	id 1Pg55i-0002Zk-7J; Fri, 21 Jan 2011 03:43:02 +0300
Message-ID: <4D38D69D.4000405@emcraft.com>
Date: Fri, 21 Jan 2011 03:43:09 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101226 Icedove/3.0.11
MIME-Version: 1.0
To: Adrian Alonso <aalonso00@gmail.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>	<loom.20110118T004536-689@post.gmane.org>	<AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>	<4D3799C1.7000108@emcraft.com>	<4D38725A.9050300@intel.com>
	<AANLkTi=YtROKq-JQ9MWQDAeAzt_E7tu3XLfi41MBBKm_@mail.gmail.com>
In-Reply-To: <AANLkTi=YtROKq-JQ9MWQDAeAzt_E7tu3XLfi41MBBKm_@mail.gmail.com>
Cc: poky@pokylinux.org, Saul Wold <saul.wold@intel.com>
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Fri, 21 Jan 2011 00:43:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Adrian, Saul,

On 20.01.2011 20:53, Adrian Alonso wrote:
> But I'm not sure if un-setting TARGET_FPU on crosssdk.bbclass would 
> affect
> other targets.

It should not. crosssdk class rewrites all TARGET_* variables except 
TARGET_FPU which may lead to inconsistent set of TARGET_* variables 
(like TARGET_ARCH = "x86_64" and TARGET_FPU = "soft"). This in turn 
confuses some recipes (like gcc).

Actually, we need to add the same thing to the nativesdk class (and, 
probably, native too) for the same reason.
Note that resetting TARGET_FPU in the nativesdk.bbclass solved the 
decimal-float issue (which turned to be the problem with eglibc-nativesdk).

I'll post my patch soon, but it still needs more testing.

Regards, Ilya.


