Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CBAE4C80052
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 09:53:40 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id DDAFD12EC32F
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 10:31:03 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CED2DC0.2080605@mlbassoc.com>
References: <4CED2DC0.2080605@mlbassoc.com>
Date: Wed, 24 Nov 2010 15:53:29 +0000
Message-ID: <1290614009.2799.19.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Extending SDK
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Nov 2010 15:53:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 08:22 -0700, Gary Thomas wrote:
> I've built meta-toolchain-sdk and although it was saved in the
> wrong place, all seems to be working well.  Until I tried to
> build a program that uses some package which was not part of
> the "default" set.   In particular, I tried to build 'xeyes'
> outside of Poky using the SDK, but it needs xt and xmu libraries
> which are built for my target, but weren't in the SDK I built.
> 
> Questions:
>    * Did I miss something in building the SDK that left these out?
>    * Is there a way, hopefully straight forward, of adding additonal
>      packages to the SDK?  Can this be done incrementally, i.e. I
>      already have an SDK installed, can I do some magic to just add
>      the xt support?
> 

The SDK currently installs a fixed set of packages, the headers deemed
useful for gnome-mobile development - this isn't currently very useful
and is an area I'd like to improve.

The SDK does come with a package manager (opkg-cl) which you should be
able to configure to point at your existing feeds and then use to
install additional headers into your SDK.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


