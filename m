Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id D35DE4C80039
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 08:48:47 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMEo9Lr000366; Wed, 22 Dec 2010 14:50:09 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id QZnEon-ls+Cd; Wed, 22 Dec 2010 14:50:09 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMEo4pU000349
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 22 Dec 2010 14:50:07 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
References: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
Date: Wed, 22 Dec 2010 14:48:14 +0000
Message-ID: <1293029294.25087.7640.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: Replacement for fakeroot do_install()?
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
X-List-Received-Date: Wed, 22 Dec 2010 14:48:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 14:48 +0100, Koen Kooi wrote:
> What's is the pseudo way to do fakeroot do_install()? I have a number
> of OE recipes that still use fakeroot and I would like to get rid of
> that in the OE layer for yocto.

All do_install's within poky now run under fakeroot (at least in the
target case).

fakeroot do_install () still works (fakeroot is a flag you can add to
any function), likewise:

do_install[fakeroot] = "1"

which means the same thing. The only downside to doing things this way
is it would apply to native recipes too and it doesn't make sense to use
fakeroot for native recipes (not least how would you then build
fakeroot/pseudo?).

So the simple answer is probably to drop the do_install references.

Cheers,

Richard



