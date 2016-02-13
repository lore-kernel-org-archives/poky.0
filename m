Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59DF3E00CA7; Sat, 13 Feb 2016 00:32:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF81EE00CA2
	for <poky@yoctoproject.org>; Sat, 13 Feb 2016 00:32:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1D8W2Iw001846; Sat, 13 Feb 2016 08:32:02 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 4LugqvqUtLiN; Sat, 13 Feb 2016 08:32:02 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1D8Vvs9001841
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 13 Feb 2016 08:31:59 GMT
Message-ID: <1455352317.16142.344.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sat, 13 Feb 2016 08:31:57 +0000
In-Reply-To: <1455291157.16142.323.camel@linuxfoundation.org>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
	<2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
	<1455287765.16142.321.camel@linuxfoundation.org>
	<1455291157.16142.323.camel@linuxfoundation.org>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky: update qemu* to prefer 4.4 kernel
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
X-List-Received-Date: Sat, 13 Feb 2016 08:32:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-02-12 at 15:32 +0000, Richard Purdie wrote:
> On Fri, 2016-02-12 at 14:36 +0000, Richard Purdie wrote:
> > A quick look at upstream makes me wonder about:
> > 
> > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/com
> > mi
> > t/?id=d9fe4fab11976e56b2e992980bf6ce948bdf02ac
> > 
> > which changes the code in this area.
> 
> FWIW this doesn't help, the problem still exists after applying it.
> 
> Setting CONFIG_X86_PAT to is not set in the defconfig did "fix" it,
> unsurprisingly.

Also, in the last set of builds, despite booting with "nopat", we see:

https://autobuilder.yoctoproject.org/main/builders/nightly-x86-lsb/buil
ds/637/steps/Running%20Sanity%20Tests/logs/stdio

Central error: [    9.298049] Failed to add WC MTRR for [fd000000-fdffffff]; performance may suffer.

Why we only see this on the lsb run I don't know but that address looks
like the one causing problems elsewhere with PAT. It could therefore
look like this is related to uvesafb.

Cheers,

Richard

