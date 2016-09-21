Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63A6BE00C5B; Wed, 21 Sep 2016 06:28:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F9DBE00C45
	for <poky@yoctoproject.org>; Wed, 21 Sep 2016 06:28:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u8LDRovv019336; Wed, 21 Sep 2016 14:27:50 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ccgLLEftBBcB; Wed, 21 Sep 2016 14:27:50 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u8LDRlCr019333
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Sep 2016 14:27:48 +0100
Message-ID: <1474464467.7207.315.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomasz Meresinski <tomasz.meresinski@comarch.com>, poky@yoctoproject.org
Date: Wed, 21 Sep 2016 14:27:47 +0100
In-Reply-To: <7b50926a-35bb-0fe3-394d-80dca52161a4@comarch.com>
References: <7b50926a-35bb-0fe3-394d-80dca52161a4@comarch.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: GCC patch Reuse-fdebug-prefix-map-to-replace-ffile-prefix-map.patch
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
X-List-Received-Date: Wed, 21 Sep 2016 13:28:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-09-21 at 14:20 +0200, Tomasz Meresinski wrote:
> Hi
> I found some difficulties when compiling some of our internal 
> applications because of gcc patch called 
> "Reuse-fdebug-prefix-map-to-replace-ffile-prefix-map.patch"
> As far as I can see it makes __FILE__ macro to point to Yocto source 
> file location not build system's.
> 
> Now let me describe that problem:
> 1) CMake script gets source directory (so it's build system path)
> 2) CMake calculates its length and adds it as a define to
> application 
> (call it LEN)
> 3) A simple way to get a filename from __FILE__ macro is to compute 
> __FILE__ + LEN
> 4) Crash
> 
> Is this patch really a big deal?

Without it, build paths get encoded into the binaries. This means the
binaries differ depending on where they're built, it also means those
paths can be exposed to end users which can be confusing and doesn't
match the debug source locations used on target.

If you don't care about those things, its not a big deal. Personally, I
do believe that reproducible binaries are important though. I think
cmake is making some assumptions here it shouldn't.

Cheers,

Richard




