Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B919A4C8086E
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 05:13:23 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MBDL9E028382;
	Tue, 22 Feb 2011 11:13:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28135-04; Tue, 22 Feb 2011 11:13:17 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1MBDDBV028371
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 22 Feb 2011 11:13:13 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "embedded.yogesh" <embedded.yogesh@gmail.com>
In-Reply-To: <4D61F90D.606@gmail.com>
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>
	<4D4FE267.5080907@mlbassoc.com>	<4D4FEAD4.50200@gmail.com>
	<4D50388A.4030707@linux.intel.com> <4D503B5A.3040805@mlbassoc.com>
	<4D50C055.5080200@gmail.com>  <4D61F90D.606@gmail.com>
Date: Tue, 22 Feb 2011 11:13:09 +0000
Message-ID: <1298373189.11289.3266.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: chromium browser
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
X-List-Received-Date: Tue, 22 Feb 2011 11:13:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Mon, 2011-02-21 at 11:03 +0530, embedded.yogesh wrote:
> I tried to pull Chrome from OpenEmbedded and also pulled in its deps .
> But at the time of building chrome getting following errors can any one 
> have any idea ?
> 
> | + oe_runmake -r BUILDTYPE=Release
> | + '[' xmake = x ']'
> | + oenote make -e MAKEFLAGS= -r BUILDTYPE=Release
> | elease'
> | NOTE: make -e MAKEFLAGS= -r BUILDTYPE=Release
> | + make -e MAKEFLAGS= -r BUILDTYPE=Release
> |   CXX(target) out/Release/obj.target/app_base/ui/base/animation/animation.o
> | cc1plus: warnings being treated as errors
> | cc1plus: error: include location "/usr/include/libpng12" is unsafe for cross-compilation
> | cc1plus: error: include location "/usr/include/gtk-2.0" is unsafe for cross-compilation
> | cc1plus: error: include location "/usr/include/atk-1.0" is unsafe for cross-compilation
> | cc1plus: error: include location

Its accessing parts of the build system (/usr/include) and the compiler
is turning warnings into errors and failing. You need to fix the build
to use the sysroot for cross compiling and not to look at the build
system.

Cheers,

Richard




