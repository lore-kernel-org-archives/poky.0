Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B294BE0079E; Fri,  7 Nov 2014 08:59:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B741E002A8
	for <poky@yoctoproject.org>; Fri,  7 Nov 2014 08:59:25 -0800 (PST)
Received: from sangmingze-mail.local (ip5b41c286.dynamic.kabel-deutschland.de
	[91.65.194.134])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 2B61B862FB;
	Fri,  7 Nov 2014 16:59:20 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1Xmmrf-0008OF-FO; Fri, 07 Nov 2014 17:58:23 +0100
Date: Fri, 7 Nov 2014 17:58:23 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20141107165823.GV15403@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan> <1415001899.5111.3.camel@ted>
	<20141103151218.GD6154@xiaoyu.lan> <1415029029.5111.21.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1415029029.5111.21.camel@ted>
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
X-List-Received-Date: Fri, 07 Nov 2014 16:59:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 03, 2014 at 03:37:09PM +0000, Richard Purdie wrote:

> We prefer deterministic builds rather than some toolchain installations
> that work and some that don't.

Do you intend to create a script like the current environment that
could work with "bare" apps (like u-boot, linux kernel, initial
bootloaders, etc.)?

holger

