Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B3E0E0082D; Thu, 19 Feb 2015 07:02:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF0DCE00827
	for <poky@yoctoproject.org>; Thu, 19 Feb 2015 07:02:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1JF2kE7032729; Thu, 19 Feb 2015 15:02:46 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id n7BPLjkdTOQn; Thu, 19 Feb 2015 15:02:46 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1JF2VDb032725
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 19 Feb 2015 15:02:42 GMT
Message-ID: <1424358151.11836.29.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: suneet saini <suneet.saini@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 19 Feb 2015 15:02:31 +0000
In-Reply-To: <CAAxKdCigngVSOexCWYpwA3yAdEFKcmLnseMQxiyyW1eak+i4pw@mail.gmail.com>
References: <CAAxKdCh6p+9nxGmayUjcLLsDF-Ka98AMZZtXEUMusSCaXvM=Cw@mail.gmail.com>
	<1424337714.11836.26.camel@linuxfoundation.org>
	<CAAxKdCigngVSOexCWYpwA3yAdEFKcmLnseMQxiyyW1eak+i4pw@mail.gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Subject: Re: Kernel Panic : Not Syncing : Exit code 0x00000004
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
X-List-Received-Date: Thu, 19 Feb 2015 15:02:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2015-02-19 at 15:51 +0530, suneet saini wrote:
>         I you more elaborate to locate this default location in whole
> build then it'll be better for me. As I am totally a newbie to
> Yoctoproject.
> 
Firstly, please don't take this offlist, its impolite.

I appreciate you may be new to the project but I simply don't have time
to solve the problem for you. You need to find the qemuarm cpu options
in the runqemu script and change it to match the architecture you're
trying to build.

Cheers,

Richard




