Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9541FE00A03; Sun, 28 Jul 2019 04:21:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Sun, 28 Jul 2019 04:21:39 PDT
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A5AE006B6
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 04:21:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 9958D212002
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 13:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	h=content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject; s=default; t=
	1564312498; x=1566126899; bh=9jfG02BIsqFRy1utL0XC2Ooq7wrNzxX/LBH
	yhDpq3eY=; b=WORRqa9cDiwsrPcz72wkRlc1vXFS8Fwq7jERukkod9yyu4E1mok
	5VWJ2Pk0MaquG0R5gGRSjjrqEohGoHWwMCCyLuuMWhTDO2RfGDvj5JaMXXbcpzaw
	FKSB8aOfSk0zXoZaBixT1kGHUDDZa/YygopXYHnKesnwTkaco9PJ8RsvVMDc7FO5
	i9qBXclcwoNO8mwtU/HvHSxlxt+KhKb8NbjO5g8WQY1k7zywg6J/19sHRyKzy5ia
	hjfua2mIrZfthfeS/RcZ/wArtmmPIR+695S1qKUTb6E1660O2lfGQh46Adte3TFu
	c4PFAk+8MXB0oRQ6pjGKbPrwflhvJhnwTb+3glbmAbgeBcKpxukLWYAFl9nrwKrY
	ZGhNvqA0PWN93MdHqw/mqeVRX39bV9+hq9qcTWoxkCJmLhbmiBpkPbx/2bRhN5ci
	WjG65iduayN2msAz7rBvOzQXP435lNVdEE1bJd4P+yn4nc88Wjj58NZZUWflIHhu
	2XEX0PX45E/CkuKRpLem1G44VxiMbufxBCJe1HB0BqoMAnIguS3kbfrW+zbXQ75Y
	HfOd6e3G/mzFEzdcWnhjAVL36qAVsq3fTYfdEGtn9gZW7WYAdHyFgS4KMYmDvbaE
	INL9A+3Mri1If56JcpKsU1cdZM7LFxGvuGTbwu2Ox48nkXIqRcP5Unds=
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id gQS1CCQCeMvb for <poky@yoctoproject.org>;
	Sun, 28 Jul 2019 13:14:58 +0200 (CEST)
Received: from whisper.local (84-28-208-114.cable.dynamic.v4.ziggo.nl
	[84.28.208.114]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 9606F212001
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 13:14:58 +0200 (CEST)
To: poky@yoctoproject.org
References: <20190718115351.2754-1-ross.burton@intel.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <ed152bc4-5d75-7651-8cc1-3a48bc6b09a9@basmevissen.nl>
Date: Sun, 28 Jul 2019 13:14:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718115351.2754-1-ross.burton@intel.com>
Subject: Re: [PATCH] conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported distributions
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
X-List-Received-Date: Sun, 28 Jul 2019 11:21:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 18/07/2019 13:53, Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>   meta-poky/conf/distro/poky.conf | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 2d155d0de18..ac6368ddab1 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -56,11 +56,13 @@ SANITY_TESTED_DISTROS ?= " \
>               ubuntu-18.04 \n \
>               fedora-28 \n \

Better remove Fedora 28 as it is no longer supported. So probably it is 
hardly used any more, hence regressions will go undetected.

>               fedora-29 \n \
> +            fedora-30 \n \
>               centos-7 \n \
>               debian-8 \n \
>               debian-9 \n \
>               debian-10 \n \
>               opensuse-42.3 \n \
> +            opensuseleap-15.1 \n \
>               "
>   #
>   # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
> 

In general, I think that EOL distro versions should be removed after a 
while. Somewhere between 3 months (short-lived versions) and 6 months 
for long term supported versions.

It will not prohibit people from using older distro versions, but at 
least it gives a message that regressions or breakage is to be expected.

Regards,
-- 
Bas.

