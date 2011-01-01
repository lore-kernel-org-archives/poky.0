Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 969D74C80BD4
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 19:21:16 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p011Mlvg030675; Sat, 1 Jan 2011 01:22:48 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id s3irAphWKto6; Sat,  1 Jan 2011 01:22:47 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p011Mj7V030671
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 1 Jan 2011 01:22:46 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Angus Lees <guslees@gmail.com>
In-Reply-To: <AANLkTikQF8=jApjfskB0DwWTqsKf=0WrykkW7tsMtmSF@mail.gmail.com>
References: <AANLkTimxU1u-NZUuAft=BqVXZuphRNi06OxH_cw55Hae@mail.gmail.com>
	<1293799575.17519.12488.camel@rex>
	<AANLkTikQF8=jApjfskB0DwWTqsKf=0WrykkW7tsMtmSF@mail.gmail.com>
Date: Sat, 01 Jan 2011 01:21:00 +0000
Message-ID: <1293844860.17519.14851.camel@rex>
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
X-List-Received-Date: Sat, 01 Jan 2011 01:21:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-01 at 00:22 +1100, Angus Lees wrote:
> On Fri, Dec 31, 2010 at 23:46, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > gcc-runtime is build process for bits that can be built standalone like
> > libstdc++. For pieces of gcc that can't be built separately like libgcc,
> > we take a stashed version of it from gcc-cross and only package it as
> > part of gcc-runtime.
> 
> ok, but where should libgcc be during the linking of libstdc++?
> 
> As far as I can see, at this point in a clean build libgcc only exists
> in the temporary gcc-build-internal-* directory, which isn't in the
> gcc search path.  libgcc doesn't make it out into the sysroot until
> _after_ libstdc++, libssp, etc are built and gcc-runtime is installed.
>  Where should gcc-cross be finding libgcc when linking libstdc++ and
> friends?

This is a good point. Its finding the libgcc installed by
gcc-cross-intermediate. This happens to work out ok but its not a good
design.

We're currently working on various issues in the toolchain bootstrap
process, particularly to ensure that files don't get overwritten in
staging during the bootstrap process. Those changes should help solve
this particular problem too...

Cheers,

Richard


