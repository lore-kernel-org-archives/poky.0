Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A5ADE00C1B; Sun, 24 Jun 2018 14:30:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 773FDE00874
	for <poky@yoctoproject.org>; Sun, 24 Jun 2018 14:30:29 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5OLUFQh005707
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sun, 24 Jun 2018 22:30:17 +0100
Message-ID: <b823a88e14026f1560ff49aa09966b30ce9cdbb0.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>, akuster808
	<akuster808@gmail.com>
Date: Sun, 24 Jun 2018 22:30:13 +0100
In-Reply-To: <ec6e09f6606f80f8276f082f7af1764a@mail.kylheku.com>
References: <dc32d45cc47d63d2921c9b8860ab5157@mail.kylheku.com>
	<0a45cd1d-d45d-4741-4fc6-9300f88c2f74@gmail.com>
	<ec6e09f6606f80f8276f082f7af1764a@mail.kylheku.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: poky@yoctoproject.org
Subject: Re: Yocto-2-2: native executables and libs pull symbols from wrong glibc.
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
X-List-Received-Date: Sun, 24 Jun 2018 21:30:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2018-06-24 at 12:03 -0700, Kaz Kylheku (poky) wrote:
> On 2018-06-24 11:31, akuster808 wrote:
> > > Concretely, this leads to a failure when you build on a glibc-
> > > 2.27
> > > based system, like Ubuntu 18.04.
> > 
> > What version of morty 2.2 did you clone?
> > 
> > There where some uninative backports done for hosts with glibc-2.27
> 
> But do they really fix the underlying issue, or sweep it back under
> the 
> rug?
> 
> The thing should build regardless of what glibc the build machine is 
> using.

This is a known caveat of using uninative. The version of libc in
uninative needs to be greater than or equal to the version on the host
system. We tend to keep the version of uninative up to date and this
therefore works.

We did run into version issues and I believe master is better at
detecting the version mismatches now and recovering from it by
disabling uninative.

I'd be very happy if someone can come up with a better way of making it
work (with the same performance) but the current solution works as well
as we can make it right now and you can choose if you use it or not.

Cheers,

Richard



