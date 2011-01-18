Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 908B44C80039
	for <poky@pokylinux.org>; Mon, 17 Jan 2011 19:45:03 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.69)
	(envelope-from <yanok@emcraft.com>)
	id 1Pf0d3-0000iB-AV; Tue, 18 Jan 2011 04:45:01 +0300
Message-ID: <4D34F0A1.7050802@emcraft.com>
Date: Tue, 18 Jan 2011 04:45:05 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101226 Icedove/3.0.11
MIME-Version: 1.0
To: Adrian Alonso <aalonso00@gmail.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>	<loom.20110118T004536-689@post.gmane.org>
	<AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
In-Reply-To: <AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
Cc: poky@pokylinux.org
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
X-List-Received-Date: Tue, 18 Jan 2011 01:45:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Adrian,

On 18.01.2011 03:59, Adrian Alonso wrote:
> I will also look for the proper solution,
> However un-setting TARGET_FPU only affects the target machines
> in meta-xilinx layer bsp, so other Powerpc targets are not been affected
> with this patch.

Well, I'm going to add support for MPC8308RDB which is affected ;)
And all ARM targets have TARGET_FPU=soft by default so they all are 
going to be affected.

Anyway, you are fixing not the source of the problem but just it's 
symptom. The compiler built by current gcc-crosssdk recipe is going to 
be broken (wrong target). Could you please verify that?

Regards, Ilya.


