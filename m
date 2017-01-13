Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294A0E0049F; Fri, 13 Jan 2017 02:41:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75FAEE003C1
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 02:41:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v0DAfZ0J001469; Fri, 13 Jan 2017 10:41:35 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qbwEjlCUYckm; Fri, 13 Jan 2017 10:41:35 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v0DAfXRN001464
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 13 Jan 2017 10:41:34 GMT
Message-ID: <1484304092.4367.248.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kristian Amlie <kristian.amlie@mender.io>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Fri, 13 Jan 2017 10:41:32 +0000
In-Reply-To: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
References: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: SSTATE_MIRRORS not working?
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
X-List-Received-Date: Fri, 13 Jan 2017 10:41:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-01-13 at 09:50 +0100, Kristian Amlie wrote:
> For some time now, I've had the problem that SSTATE_MIRRORS does not
> work properly for me. I can see that it downloads lots of packages
> from the cache, but once the setscene stage is over, and runqueue
> begins, it starts the whole build from scratch regardless.
> 
> This used to work for me before, it would only run a small subset of
> the tasks locally, taking full advantage of the cache, so I'm fairly
> certain my setup is correct. For me it broke maybe six weeks ago or
> so (master branch).
> 
> I realize this question may be more appropriate for bitbake-devel,
> and I can provide more details, but I thought I'd just hear if
> anybody else has experienced the same, before I go digging.

Which SSTATE_MIRRORS are you using?

The build logs should show what is being rebuilt. The autobuilder does
reuse sstate during its builds and we'd likely have noticed long build
times if it was completely broken so its likely some mismatch between
your setup and what is in the particular mirror you're using.

Cheers,

Richard

