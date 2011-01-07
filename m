Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 527B04C80B70
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 07:57:47 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07DwqS1013592; Fri, 7 Jan 2011 13:58:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id MCUj5x8FI-my; Fri,  7 Jan 2011 13:58:52 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p07DwmF9013579
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 7 Jan 2011 13:58:49 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>, Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D265300.2000906@intel.com>
References: <4D25DE22.4000004@mlbassoc.com>  <4D265300.2000906@intel.com>
Date: Fri, 07 Jan 2011 13:56:40 +0000
Message-ID: <1294408600.17519.27150.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: ^C during build broken?
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
X-List-Received-Date: Fri, 07 Jan 2011 13:57:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-06 at 15:40 -0800, Scott Garman wrote:
> On 01/06/2011 07:22 AM, Gary Thomas wrote:
> > As of today's master (9b5c770cbda8cfc4c108d94bd0ff5c0af3d0b64b),
> > if I type ^C during the build, it just keeps merrily going on...
> >
> >     --NOTE: package readline-native-6.1-r0: task do_configure: Started
> >     ^C
> >     Keyboard Interrupt, closing down...
> >
> >     Waiting for 1 active tasks to finish:
> >     0: readline-native-6.1-r0 do_configure (pid 25173)
> >     NOTE: package perl-native-5.8.8-r14: task do_compile: Succeeded
> >     NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
> >     NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
> >     Waiting for 2 active tasks to finish:
> >     0: readline-native-6.1-r0 do_configure (pid 25173)
> >     1: perl-native-5.8.8-r14 do_install (pid 27401)
> >     NOTE: package perl-native-5.8.8-r14: task do_install: Started
> >
> > Huh?  It _was_ waiting for 1 task to finish, but then it fired
> > off more!  I let it run for a while and it just kept going and going...
> 
> I am also seeing this.

One of the patches we merged from upstream bitbake wasn't applied
properly. I've fixed this in: 

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=0e26f53f9e2f190b302235864552956ed8f6d39b

which should fix this problem.

Cheers,

Richard



