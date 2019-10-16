Return-Path: <sean@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECBCBE00BE2; Wed, 16 Oct 2019 01:33:58 -0700 (PDT)
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
X-Greylist: delayed 358 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Oct 2019 01:33:57 PDT
Received: from first.geanix.com (first.geanix.com [116.203.34.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9910E0097C
	for <poky@yoctoproject.org>; Wed, 16 Oct 2019 01:33:57 -0700 (PDT)
Received: from [192.168.100.95] (unknown [95.138.208.137])
	by first.geanix.com (Postfix) with ESMTPSA id 2A695269;
	Wed, 16 Oct 2019 08:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
	t=1571214437; bh=VB2zMvNuTFLgBNNJPXslahMPeEP9WYCQ25h7i6Ujjvc=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=ITLLj1YtKhT83+5MLFYsLCc747MBd1QCrp2Xo+3JVkGLxvnavQFQP/XTKPM5MFt0h
	slknqu2k9tfo+TBmIMdM2C5sVBA1w643ic3lbwlzrKa/B+yKf9rroN+nuAQQZhPKg7
	Zw65hC8ESwZqLcTWgcG6jjN0LDq2xRQET1KvlPhVp7duOvZgyCjrfTpI5/ZSq4lTaD
	BjPLVI1P7MQ3tzMdPcirf2Y/OJTJ08mXeHqQHG4ZaKAICSpx4SYVXy4mg4smHIcdTZ
	X0Cy6Bacc3GECitWB/YZhGs06bd7rDHOrK33k7KyMSaGCyMH91XuzHzJ8Lvg6nqRM5
	cdqoYXi1NGFaA==
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
	poky@yoctoproject.org, akuster808 <akuster808@gmail.com>,
	richard.purdie@linuxfoundation.org
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
From: Sean Nyekjaer <sean@geanix.com>
Message-ID: <9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
Date: Wed, 16 Oct 2019 10:27:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
Cc: andriy.danylovskyy@streamunlimited.com
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Wed, 16 Oct 2019 08:33:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US-large
Content-Transfer-Encoding: 8bit



On 11/06/2019 16.46, Quentin Schulz wrote:
> Hi all,
> 
> I've been hit with a rather unsettling bug when building an image with
> PACKAGE_CLASSES = "ipk" in Thud 2.6.2.
> 
> The error message is the following:
> ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
> '/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  --force_postinstall --prefer-arch-to-version   --force-maintainer --force-overwrite install packagegroup-base-extended packagegroup-core-boot plop run-postinsts' returned 2:
> Collected errors:
>   * Solver encountered 2 problem(s):
>   * Problem 1/2:
>   *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
>   *
>   * Solution 1:
>   *   - do not ask to install a package providing plop
> 
>   * Problem 2/2:
>   *   - nothing provides bluez5 needed by packagegroup-base-bluetooth-1.0-r83.stream1832prime
>   *
>   * Solution 1:
>   *   - do not ask to install a package providing packagegroup-base-extended

Hi all,

After this series was applied to thud, our BAD_RECOMMENDATIONS is 
included in our rootfs :(

We have in our distro conf:
BAD_RECOMMENDATIONS_append = " udev-hwdb"

If I revert this series on current thud HEAD, we are back to what is 
expected :) An image without udev-hwdb

-- 

Best regards,

Sean Nyekjær

Embedded Linux Consultant



+45 42427326

sean@geanix.com



Geanix ApS

https://geanix.com

DK39600706

