Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19DA7E00815; Wed, 11 Feb 2015 11:35:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258EAE003D4
	for <poky@yoctoproject.org>; Wed, 11 Feb 2015 11:35:39 -0800 (PST)
Received: from sangmingze-mail.local (unknown [IPv6:2001:5c0:1400:a::517])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 182CEA6C44;
	Wed, 11 Feb 2015 19:35:30 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>)
	id 1YLd41-0001ef-7y; Wed, 11 Feb 2015 20:35:09 +0100
Date: Wed, 11 Feb 2015 20:35:09 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20150211193509.GG3213@xiaoyu.lan>
References: <20150210184309.GB19902@xiaoyu.lan>
	<1423608686.20217.54.camel@linuxfoundation.org>
	<20150211082703.GA3213@xiaoyu.lan>
	<1423645857.20217.56.camel@linuxfoundation.org>
	<54DB921F.4090802@windriver.com>
MIME-Version: 1.0
In-Reply-To: <54DB921F.4090802@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: kernel.release being regenerated
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
X-List-Received-Date: Wed, 11 Feb 2015 19:35:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 11, 2015 at 12:32:15PM -0500, Bruce Ashfield wrote:

> It looks like bad luck that this is popping up now.

yes, it looks like bad luck. What is the window for echo
"content" > file and another task reading file not being
able to find. I couple of nano seconds? It is a bit frightening
that my build regulariy break due to this.


