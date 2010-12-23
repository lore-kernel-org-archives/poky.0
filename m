Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FFBB4C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 13:00:01 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNJ1Ovr025527; Thu, 23 Dec 2010 19:01:24 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VeOkLBQgLzpL; Thu, 23 Dec 2010 19:01:24 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNJ1L2o025524
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 19:01:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Adrian Alonso <aalonso00@gmail.com>
In-Reply-To: <AANLkTim9iax+7aW3tmBUtmCdjtgAr0nT5U0nhwi+j2Ay@mail.gmail.com>
References: <AANLkTim9iax+7aW3tmBUtmCdjtgAr0nT5U0nhwi+j2Ay@mail.gmail.com>
Date: Thu, 23 Dec 2010 18:59:48 +0000
Message-ID: <1293130788.17519.217.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: pseudo native build fails on Fedora 14
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
X-List-Received-Date: Thu, 23 Dec 2010 19:00:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 12:27 -0600, Adrian Alonso wrote:
> I start a build from scratch and pseudo-native fails to build
> at link stage:
> 
> 
> ...
> /usr/bin/ld: skipping
> incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when
> searching for -lgcc_s
> | /usr/bin/ld: cannot find -lgcc_s
> | collect2: ld returned 1 exit status
> ....

What kind of machine is this? Mixed 32 bit and 64 bit userspace? 64 or
32 bit kernel?

To me, this looks like you have half a 32 or 64 bit toolchain alongside
the "correct" one and its preferring that for some reason.

Cheers,

Richard





