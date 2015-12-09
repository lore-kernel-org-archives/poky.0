Return-Path: <Cristian.Bercaru@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75A0DE00B76; Wed,  9 Dec 2015 07:31:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F49E0033E
	for <poky@yoctoproject.org>; Wed,  9 Dec 2015 07:31:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tB9FVec2003083
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 9 Dec 2015 07:31:41 -0800 (PST)
Received: from [128.224.14.61] (128.224.14.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 9 Dec 2015 07:31:40 -0800
To: <poky@yoctoproject.org>
References: <cover.1449248342.git.cristian.bercaru@windriver.com>
From: Cristian Bercaru <cristian.bercaru@windriver.com>
Message-ID: <5668495A.5050909@windriver.com>
Date: Wed, 9 Dec 2015 17:31:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <cover.1449248342.git.cristian.bercaru@windriver.com>
Cc: Daniel Dragomir <daniel.dragomir@windriver.com>
Subject: Re: [PATCH] ARMv8 32-bit compiler tunings
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
X-List-Received-Date: Wed, 09 Dec 2015 15:31:48 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

So, what do you guys think about my patch? Is the armv8a support a 
valuable addition to poky?

Cristian

On 12/04/2015 07:20 PM, Cristian Bercaru wrote:
> Hello!
>
> Starting with linux-yocto-4.1, Intel provides kernel support for its
> ARM v8 Axxia platforms, both on 32-bit and 64-bit.
> Poky already contains arm 64-bit compiler tunings, so I added 32-bit
> tunings based on those for armv7.
>
> The patch that I send you is a draft. Please review it and if it's ok
> I will return with thumb and big-endian tunings.
>
> Thank you,
> Cristian Bercaru (1):
>    add tunings for 32-bit ARMv8-a
>
>   meta/conf/machine/include/arm/arch-armv7a.inc      |    1 -
>   meta/conf/machine/include/arm/arch-armv8a.inc      |   65 ++++++++++++++++++++
>   meta/conf/machine/include/arm/feature-arm-neon.inc |    3 -
>   meta/conf/machine/include/arm/feature-arm-vfp.inc  |   59 ++++++++++++++----
>   4 files changed, 112 insertions(+), 16 deletions(-)
>   create mode 100644 meta/conf/machine/include/arm/arch-armv8a.inc
>   delete mode 100644 meta/conf/machine/include/arm/feature-arm-neon.inc
>

