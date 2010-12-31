Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3ADCF4C80039
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 06:46:35 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBVCm5sX013930; Fri, 31 Dec 2010 12:48:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XcTZO0w9i+vZ; Fri, 31 Dec 2010 12:48:05 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBVClweD013925
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 31 Dec 2010 12:48:01 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Angus Lees <guslees@gmail.com>
In-Reply-To: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
References: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
Date: Fri, 31 Dec 2010 12:46:14 +0000
Message-ID: <1293799575.17519.12488.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: question re gcc-runtime vs libgcc
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
X-List-Received-Date: Fri, 31 Dec 2010 12:46:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-12-31 at 21:51 +1100, Angus Lees wrote:
> Sorry if the answer is obvious, but I'm trying to put together some
> sdk packages and I can't see how gcc-runtime is supposed to build.
> 
> I'd like to have a static libgcc.a to isolate the sdk from whatever
> libgcc.so the platform ships.  I've modified the gcc-cross{,sdk}
> recipes appropriately and this part all seems to build as expected.
> gcc-runtime however fails to build because libgcc doesn't get pulled
> from its gcc-build-internal-* hiding place until do_install() - way
> too late to be available during the build of the actual gcc-runtime
> libraries.  I don't see how the situation would be any different with
> a shared libgcc.so.
> 
> Can someone walk me through how this part of gcc-runtime is meant to work?
> 
> 
> Also: I think in my case, I actually want to ship libgcc.a in
> gcc-cross{,sdk} itself since it needs to correspond with the compiler
> used (rather than the target sysroot as such) - but I admit I'm a bit
> lost in a maze of twisty cross targets, all almost alike.  Does this
> seem a reasonable thing to do?
> (This made sense to me in openembedded-land, but I haven't quite got
> my head around the gcc-runtime and gcc-crosssdk subtleties yet)

gcc-runtime is build process for bits that can be built standalone like
libstdc++. For pieces of gcc that can't be built separately like libgcc,
we take a stashed version of it from gcc-cross and only package it as
part of gcc-runtime.

It sounds like you want to change the bits that gcc-cross is stashing
for gcc-runtime to package.

Note that the gcc recipe versions need to match. We don't support mix
and patch of different versions in a given build/sdk.

Cheers,

Richard







