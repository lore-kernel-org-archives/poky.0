Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C28D4E0092D; Thu, 19 Mar 2015 02:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CECBE00832
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 02:47:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2J9l4S7027013; Thu, 19 Mar 2015 09:47:04 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yP8CZfdvPNO5; Thu, 19 Mar 2015 09:47:03 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2J9kpv4027007
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 19 Mar 2015 09:47:02 GMT
Message-ID: <1426758411.29168.47.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: praveen vattipalli <praveen.vatt@gmail.com>
Date: Thu, 19 Mar 2015 09:46:51 +0000
In-Reply-To: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
References: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: error compiling beaglebone using meta-lianro
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
X-List-Received-Date: Thu, 19 Mar 2015 09:47:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2015-03-19 at 14:51 +0530, praveen vattipalli wrote:
> Hi all
> I am trying to compile poky-dizzy-12.0.1(MACHINE ?= "beaglebone")
> using meta-toolchain.
> 
> so i downloaded dizzy from
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.7.1/poky-dizzy-12.0.1.tar.bz2
> meta-linaro from 
> https://git.linaro.org/openembedded/meta-linaro.git
> I have changed bblayers.conf as below 
> 
> 
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "6"
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
> BBLAYERS ?= " \
> /home/praveenk/work/poky-dizzy-12.0.1/meta \
> /home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \
> /home/praveenk/work/poky-dizzy-12.0.1/meta-yocto-bsp \
> /home/praveenk/work/poky-dizzy-12.0.1/meta-linaro/meta-linaro-toolchain \
> "
> BBLAYERS_NON_REMOVABLE ?= " \
> /home/praveenk/work/poky-dizzy-12.0.1/meta \
> /home/praveenk/work/poky-dizzy-12.0.1/meta-yocto \
> 
> I added required changes in local.conf 
> 
We don't support meta-linaro and this problem is almost certainly
related to it. I'd suggest you talk to the Linaro people about this.

Cheers,

Richard




