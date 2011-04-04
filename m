Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF7D34C80044
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:51:31 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MpRGE023027;
	Mon, 4 Apr 2011 23:51:27 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22763-04; Mon,  4 Apr 2011 23:51:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MpJVJ023021
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 23:51:19 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <BANLkTikY1C=3PKVtfwp2E+H2tz+keskjAw@mail.gmail.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
	<BANLkTikY1C=3PKVtfwp2E+H2tz+keskjAw@mail.gmail.com>
Date: Mon, 04 Apr 2011 23:51:16 +0100
Message-ID: <1301957476.24596.416.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/7] xorg-[lib-common|proto-common]: disable use of fop document generation
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
X-List-Received-Date: Mon, 04 Apr 2011 22:51:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 23:20 +0200, Martin Jansa wrote:
> On Fri, Apr 1, 2011 at 3:38 PM, Joshua Lock <josh@linux.intel.com> wrote:
> > From: Joshua Lock <josh@linux.intel.com>
> | checking for xmlto... no
> | configure: WARNING: xmlto not found - documentation targets will be skipped
> | configure: error: --with-fop expects 'yes' or 'no'
> | FATAL: oe_runconf failed
> | ERROR: Function 'do_configure' failed (see
> /OE/shr-core/tmp/work/x86_64-linux/xproto-native-1_7.0.20-r0/temp/log.do_configure.29076
> for further information)
> NOTE: package xproto-native-1_7.0.20-r0: task do_configure: Failed
> ERROR: Task 957
> (virtual:native:/OE/shr-core/openembedded-core/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb,
> do_configure) failed with exit code '1'
> 
> because there is
> --with-fop=no--enable-specs=no
> 
> so you had to put space after no, or before this
> 
> OE nokia900@shr ~/shr-core $ grep OECONF
> openembedded-core/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
> EXTRA_OECONF_append = "--enable-specs=no"

Thanks, I'll fix this.

Cheers,

Richard


