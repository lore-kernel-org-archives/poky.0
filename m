Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E67A0E01908; Tue, 19 Jun 2018 06:22:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03B1E00B9C
	for <poky@yoctoproject.org>; Tue, 19 Jun 2018 06:22:21 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5JDMFhn007808
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 19 Jun 2018 14:22:16 +0100
Message-ID: <0179fbbfddf7680e309b02422761c7478125d1ad.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ankit Rastogi <Ankit.Rastogi@kpit.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 19 Jun 2018 14:22:15 +0100
In-Reply-To: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 13:22:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-06-19 at 05:16 +0000, Ankit Rastogi wrote:
> Can someone provide any pointers on how to export kernel specific
> headers to userspace?
> 
> I am getting below error while building our one of the component
> which requires kernel uapi headers.
> 
> Error Received:
>  /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such
> file or directory
> > |  #include <linux/hdmi_info.h>
> > |           ^~~~~~~~~~~~~~~~~~~
> > | compilation terminated.
> 
> In yocto 2.5, userspace is boot strapped with linux-libc-headers
> package which uses a set of uapi headers from Linux kernel 4.15. Can
> someone suggest for custom kernels, how to expose uapi headers to
> userspace? Thus create a separate linux-apl-headers package with
> those files.

linux-libc-headers is really there to bootstrap the libc and toolchain,
not provide non-standard kernel headers to userspace. You likely need
to create your own recipe which installs the correct extra headers and
then have your code DEPEND on that recipe.

Cheers,

Richard

