Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D9AFE008E3; Wed, 12 Nov 2014 05:20:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C97D1E008CA
	for <poky@yoctoproject.org>; Wed, 12 Nov 2014 05:20:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sACDJq0C003729; Wed, 12 Nov 2014 13:19:52 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id YrRync79OZfg; Wed, 12 Nov 2014 13:19:52 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sACDJcvv003715
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 12 Nov 2014 13:19:50 GMT
Message-ID: <1415798414.2820.48.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Wed, 12 Nov 2014 13:20:14 +0000
In-Reply-To: <20141109141329.GH27444@xiaoyu.lan>
References: <20141109141329.GH27444@xiaoyu.lan>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Error on PRINC
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
X-List-Received-Date: Wed, 12 Nov 2014 13:20:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Holger,

On Sun, 2014-11-09 at 15:13 +0100, Holger Hans Peter Freyther wrote:
> I went through the diff and show your commit to turn having a
> PRINC into an error. For our GSM BTS we are using Poky for the
> base-system. We are currently shipping edison and dora based
> images and I am working on tracking master because our internal
> stabilisation period was always too long (e.g. the gcc compiler
> issue, systemd journald performance, issues with creating source
> tarballs for GPL compliance).
> 
> On top of OE-Core/Poky we have two layers, one is a BSP layer
> and the other is all the opensource GSM bits we use and offer
> to the customers. We do not use different release branches as
> our software is portable enough to work across different versions
> of gcc and such.
> 
> Even supporting a BSP for Edison, Dora and master is not so
> much of an issue. And now back to the point. So we still need
> to use PRINC for providing updates to edison, we want to use
> PRINC on dora as things like CONFFILES_${PN} were not correctly
> tracked

I honestly thought we'd backported that fix to dora. I see we did not
and I've therefore just done so.

>  but at the same time I want to track master to not end
> up with the situation of spending 6 months in integration and
> then be on an old version of Poky. The way I track master is
> having a jenkins job that will take */master of everything and
> build. Now when you turn the warning in an error the build will
> be considered broken.
> 
> a.) Can you undo the change and give us enough time to cease
> out our edison users?

I think at this point we do need to show the error so this leads us to:

> b.) Would you accept a patch with something like "known" usage
> of deprecated features? KNOWN_DEPRECATED="princ bla"? This way
> I know about PRINC and decide to postpone but can will not see
> other deprecated things?

We do have the WARN_QA and ERROR_QA variables which effectively work
like this. I'll accept a patch to make this conditional on those
settings, as long as the default remains to error so that users are
aware of the problem.

Cheers,

Richard



