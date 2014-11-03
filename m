Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FCE1E0087C; Mon,  3 Nov 2014 07:42:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90898E00874
	for <poky@yoctoproject.org>; Mon,  3 Nov 2014 07:42:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA3FaaOt020066; Mon, 3 Nov 2014 15:36:36 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ijnd4ssqDw_A; Mon,  3 Nov 2014 15:36:36 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA3FaYfm020063
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 3 Nov 2014 15:36:35 GMT
Message-ID: <1415029029.5111.21.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Mon, 03 Nov 2014 15:37:09 +0000
In-Reply-To: <20141103151218.GD6154@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan> <1414965815.5111.1.camel@ted>
	<20141103072256.GB6154@xiaoyu.lan> <1415001899.5111.3.camel@ted>
	<20141103151218.GD6154@xiaoyu.lan>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
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
X-List-Received-Date: Mon, 03 Nov 2014 15:42:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-11-03 at 16:12 +0100, Holger Hans Peter Freyther wrote:
> On Mon, Nov 03, 2014 at 08:04:59AM +0000, Richard Purdie wrote:
> 
> Dear Richard,
> 
> > http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=678e8798ebe0f4fd1bd347db136f1499b8fe00c9
> 
> thanks a lot for explaining. I see how using the default sysroot
> with external toolchains is going to cause issues. What is the
> reasoning to have it for the canadian cross (hence meta-toolchain)?

The reasoning is that we have one canadian-cross compiler targeting
multiple sysroots (one arm compiler targets all arm machines). The
compiled in sysroot may not be the final installation path anyway,
depending on where you install meta-toolchain.

We prefer deterministic builds rather than some toolchain installations
that work and some that don't.

Cheers,

Richard


