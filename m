Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EC74E00781; Wed, 30 Jul 2014 07:20:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DBA8E006B7
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 07:20:45 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s6UEKbkM012946; Wed, 30 Jul 2014 15:20:37 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id G3dt2tH5T-SM; Wed, 30 Jul 2014 15:20:36 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s6UEKXDf012791
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 30 Jul 2014 15:20:35 +0100
Message-ID: <1406730033.13346.146.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Andreas Schultz <aschultz@tpip.net>
Date: Wed, 30 Jul 2014 15:20:33 +0100
In-Reply-To: <551317585.6654.1406729428858.JavaMail.zimbra@tpip.net>
References: <551317585.6654.1406729428858.JavaMail.zimbra@tpip.net>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: how to detect unstable builds
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
X-List-Received-Date: Wed, 30 Jul 2014 14:20:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-07-30 at 14:10 +0000, Andreas Schultz wrote:
> Hi,
> 
> Unstable might be not the right term, but I couldn't think of another.
> 
> The issue is that two builds on exactly the same build host, produce
> packages that have different runtime dependencies and also different
> behaviors.
> 
> I encountered this problem with readline, but other package might have
> it as well.
> 
> I try to build an image that contains systemd and (an modified) bind. The
> declared dependencies of systemd contain readline, those of my version of
> bind do not. With multiple parallel task, build order is not guaranteed
> and bind might be build before or after readline.
> 
> bind's autoconf does check for readline and will link bind to it if
> it finds it.
> 
> The outcome is that some builds contain a bind linked against readline,
> while other contain a bind that is not linked against readline.
> 
> ** QA hell breaks loose **
> 
> Is there a way to detect and/or prevent situations like this?

If linkage to a library that is not in DEPENDS happens, there is new
code which should detect this:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a202f8a66383787c899246c5fa14c862e5d7647d

Its not perfect but it should be better than we've ever had before and
is a start...

Cheers,

Richard


