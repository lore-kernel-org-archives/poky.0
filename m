Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4FD1E00846; Tue, 16 Sep 2014 00:21:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CB4E0078A
	for <poky@yoctoproject.org>; Tue, 16 Sep 2014 00:21:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s8G7LMf7030198; Tue, 16 Sep 2014 08:21:22 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3uoE1SI6ecxS; Tue, 16 Sep 2014 08:21:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s8G7LKJi030195
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 16 Sep 2014 08:21:21 +0100
Message-ID: <1410852082.14624.54.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>
Date: Tue, 16 Sep 2014 08:21:22 +0100
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Remove $BUILDDIR from gcc -v
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
X-List-Received-Date: Tue, 16 Sep 2014 07:21:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2014-09-16 at 02:44 +0000, Bian, Naimeng wrote:
> Any suggestion to remove the "$BUILDDIR" from "gcc -v".  
> Maybe the building option such as --with-libtool-sysroot is unnecessary 
> for toolchain. Thanks a million!
> 
> --------------------------------------------------------------------------------
> #i586-poky-linux-gcc -v 
> 　Using built-in specs.
> 　COLLECT_GCC=/opt/poky-lsb/1.4.2/sysroots/x86_64-pokysdk-linux/usr/bin/
> 　i586-poky-linux/i586-poky-linux-gcc
> 　COLLECT_LTO_WRAPPER=/opt/poky-lsb/1.4.2/...
> 　Target: i586-poky-linux
> 　Configured with: $BUILDDIR/tmp/work-shared/gcc-4.7.2-r20/gcc-4.7.2/configure \ 
>   --build=x86_64-linux --host=x86_64-pokysdk-linux --target=i586-poky-linux \
>   --prefix=/opt/poky-lsb/1.4.x/... \
>   --bindir=/opt/poky-lsb/1.4.x/... \
> 
>   ... ...
> 
>   --with-libtool-sysroot=$BUILDDIR/tmp/sysroots/x86_64-nativesdk-pokysdk-linux \
>   --with-build-sysroot=$BUILDDIR tmp/sysroots/ubinux-qemux86 \
>   --with-mpfr=$BUILDDIR/tmp/sysroots/x86_64-nativesdk-pokysdk-linux \
>   --with-mpc=$BUILDDIR/tmp/sysroots/x86_64-nativesdk-pokysdk-linux \
>   ... ...
> --------------------------------------------------------------------------------

These options are required. Why do you want to remove them?

Cheers,

Richard


