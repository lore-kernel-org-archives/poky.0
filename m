Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD39FE008CC; Wed, 11 Feb 2015 01:16:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D2ECE002F9
	for <poky@yoctoproject.org>; Wed, 11 Feb 2015 01:16:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1B9AMqk027782; Wed, 11 Feb 2015 09:11:13 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id c8TpqxI7HNsP; Wed, 11 Feb 2015 09:11:12 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1B9AvQx027819
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 11 Feb 2015 09:11:08 GMT
Message-ID: <1423645857.20217.56.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Wed, 11 Feb 2015 09:10:57 +0000
In-Reply-To: <20150211082703.GA3213@xiaoyu.lan>
References: <20150210184309.GB19902@xiaoyu.lan>
	<1423608686.20217.54.camel@linuxfoundation.org>
	<20150211082703.GA3213@xiaoyu.lan>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 11 Feb 2015 09:16:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-02-11 at 09:27 +0100, Holger Hans Peter Freyther wrote:
> On Tue, Feb 10, 2015 at 10:51:26PM +0000, Richard Purdie wrote:
> > Hi Holger,
> 
> Hi Richard,
> 
> > The fact the kernel.release is being recreated suggests something in the
> > configuration is changing (different environment or commandline
> > options?) or that there is a problem in your kernel to do with the
> > Makefiles and the dependencies of the kernel.release file.
> 
> This issue should be seen by everyone but the race is pretty small.
> do_shared_workdir must run shortly after compilemodules has started
> and removed the file but didn't create a new one. This is the kind
> of race I am more likely to hit than the average population. The
> "configuration is changing" part looks like a red herring to me.
> From looking at the Makefile I see a FORCE as dependency of the
> kernel.release rule. With my 3.10er kernel (and it doesn't look
> like we have patched the Makefile) the dependency chain is like
> this:
> 
>  init -> prepare -> prepare0 .. -> prepare3 -> kernel.release -> FORCE
> 
> This means that on any target being executed the kernel.release
> will be re-created. I think the only stable way would be to have
> do_compile copy the kernel.release to another place and have the
> copying task pick this file from another place.

This does sound like a flaw in how we're copying the file if it is
regenerated on each execution of make within the kernel build.

What puzzles me is that the use of kernel.release isn't new, the
previous do_install code used to do this and technically would have
raced with do_compilemodules too. So was it just bad luck you started
hitting this now?

(http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/classes/kernel.bbclass?id=92725ad46f4d331bea6a2fa65964158d78a7add8)

As you say, if this really is getting regenerated as you describe, we'll
have to store a safe copy in the tree.

Cheers,

Richard


