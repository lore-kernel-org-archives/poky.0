Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E27E01447
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 03:51:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8OApiPe027981;
	Mon, 24 Sep 2012 11:51:44 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27712-04; Mon, 24 Sep 2012 11:51:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8OApYuH027974
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 24 Sep 2012 11:51:35 +0100
Message-ID: <1348483894.8662.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Florin <flocirel@gmail.com>
Date: Mon, 24 Sep 2012 11:51:34 +0100
In-Reply-To: <50598A24.1040503@gmail.com>
References: <503550B4.6060708@gmail.com> <5035DBF4.2020201@r-finger.com>
	<503639B2.4000605@gmail.com>
	<CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com>
	<50598A24.1040503@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Mon, 24 Sep 2012 10:51:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-19 at 12:02 +0300, Florin wrote:
> Trying to build something today and still takes forever and crashes at
> fetch. Looking at the gcc-4.7.inc I see it's still from git.
> What would the resolution be for this issue?

The recipe is now using a release tarball. There is talk of ways to
improve the fetcher in this regard in future too but that is probably
1.4 work at this point.

Cheers,

Richard



