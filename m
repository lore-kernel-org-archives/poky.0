Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28925E008E3; Wed, 12 Nov 2014 05:51:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC7AE008CA
	for <poky@yoctoproject.org>; Wed, 12 Nov 2014 05:51:32 -0800 (PST)
Received: from sangmingze-mail.local (ip5b41c286.dynamic.kabel-deutschland.de
	[91.65.194.134])
	by mail.sysmocom.de (Postfix) with ESMTPSA id C354487FFB;
	Wed, 12 Nov 2014 13:51:24 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1XoYK2-0006c2-Ak; Wed, 12 Nov 2014 14:50:58 +0100
Date: Wed, 12 Nov 2014 14:50:58 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20141112135058.GE21866@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan> <1415001899.5111.3.camel@ted>
	<20141103151218.GD6154@xiaoyu.lan> <1415029029.5111.21.camel@ted>
	<20141107165823.GV15403@xiaoyu.lan>
	<1415798471.2820.49.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1415798471.2820.49.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: gcc 4.9.1 and stdint.h
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
X-List-Received-Date: Wed, 12 Nov 2014 13:51:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 12, 2014 at 01:21:11PM +0000, Richard Purdie wrote:

> I'd like to understand what differences such an environment script would
> have but would be happy to consider it...

I am not sure. My question is how to compile a kernel with the
result of meta-toolchain? Until this commit setting CROSS_COMPILE=/opt/..-
was enough. But now my users probably need to pass CC and LD as
variables as well? The current environment file passes -Wl, to
the linker which doesn't work with the kernel compilation. So I
wondered if one could create a script with enough variables to
easily compile things like UBL, U-Boot, Linux?




