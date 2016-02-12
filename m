Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76ACFE00C0B; Fri, 12 Feb 2016 07:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75369E00C05
	for <poky@yoctoproject.org>; Fri, 12 Feb 2016 07:32:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1CFWdLh029090; Fri, 12 Feb 2016 15:32:39 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZQG9ioADwy4S; Fri, 12 Feb 2016 15:32:39 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1CFWbDT029086
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 12 Feb 2016 15:32:38 GMT
Message-ID: <1455291157.16142.323.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 12 Feb 2016 15:32:37 +0000
In-Reply-To: <1455287765.16142.321.camel@linuxfoundation.org>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
	<2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
	<1455287765.16142.321.camel@linuxfoundation.org>
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
X-List-Received-Date: Fri, 12 Feb 2016 15:32:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-02-12 at 14:36 +0000, Richard Purdie wrote:
> A quick look at upstream makes me wonder about:
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commi
> t/?id=d9fe4fab11976e56b2e992980bf6ce948bdf02ac
> 
> which changes the code in this area.

FWIW this doesn't help, the problem still exists after applying it.

Setting CONFIG_X86_PAT to is not set in the defconfig did "fix" it,
unsurprisingly.

Cheers,

Richard

