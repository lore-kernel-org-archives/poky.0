Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 750C54C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 10:06:55 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17G6tZo018227;
	Mon, 7 Feb 2011 16:06:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17980-04; Mon,  7 Feb 2011 16:06:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17G6lCt018221
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 7 Feb 2011 16:06:48 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D500535.3070505@mlbassoc.com>
References: <4D500535.3070505@mlbassoc.com>
Date: Mon, 07 Feb 2011 16:06:44 +0000
Message-ID: <1297094804.1350.16816.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: eglibc configurability
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
X-List-Received-Date: Mon, 07 Feb 2011 16:06:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-07 at 07:44 -0700, Gary Thomas wrote:
> I often run small (slow) embedded systems with only a ramdisk
> based file system.  When I use Poky for this, one side effect
> is that some packages need to be "configured" on bootup, which
> in the case of a ramdisk based operation means every time.
> 
> I notice that the eglibc package brings in a couple of these
> which are problematic (mostly in how long they take to run)
> Looking at meta/conf/distro/include/poky-eglibc.inc:
> 
> LIBC_DEPENDENCIES = "libsegfault \
>                       eglibc \
>                       eglibc-dbg \
>                       eglibc-dev \
>                       eglibc-utils \
>                       eglibc-thread-db \
>                       eglibc-localedata-i18n \
>                       eglibc-gconv-ibm850 \
>                       eglibc-gconv-cp1252 \
>                       eglibc-gconv-iso8859-1 \
>                       eglibc-gconv-iso8859-15 \
>                       locale-base-en-us \
>                       locale-base-en-gb "
> 
> On my OMAP-L138 target, configuring locale-base-* takes
> a long time, upwards of 35 seconds each.
> 
> Are multiple locale-base packages really necessary?
> How could I best (in the Poky spirit) limit this?  In the
> minimum, I'd like to only have one locale, saving at least
> 35 seconds of boot time.
> 
> Ideas?  Comments?

Shouldn't the cross locale generation be generating the locales at build
time meaning the locales shouldn't be generated on the device?

Cheers,

Richard


