Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F12AEE01407
	for <poky@yoctoproject.org>; Thu,  1 Mar 2012 03:43:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q21BhIxX014967;
	Thu, 1 Mar 2012 11:43:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13604-08; Thu,  1 Mar 2012 11:43:13 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q21Bh7ft014961
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 1 Mar 2012 11:43:08 GMT
Message-ID: <1330602189.31767.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Date: Thu, 01 Mar 2012 11:43:09 +0000
In-Reply-To: <CABRtByPEMS04d0bSC1NgXSQf-HCnTduYGkNS5Y+a1GCX6T86rQ@mail.gmail.com>
References: <CABRtByPEMS04d0bSC1NgXSQf-HCnTduYGkNS5Y+a1GCX6T86rQ@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: /usr/lib/libz.so: could not read symbols: File in wrong format
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
X-List-Received-Date: Thu, 01 Mar 2012 11:43:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-01 at 16:06 +0530, sonu vishwakarma wrote:
> Hi ,
> 
> 
> I am building poky working on bernard branch on Ubuntu 10.10 ,64 bit
> host.
> I get the error in do_compile in xbmc-10.1  something like this : 
> 
> 
> ***************************************
> | /usr/lib/libz.so: could not read symbols: File in wrong format
> | collect2: ld returned 1 exit status
> | make[4]: *** [libid3tag.la] Error 1
> | make[4]: Leaving directory
> `/home/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/xbmc-10.1-r0/confluence-10.1/xbmc/lib/libid3tag/libid3tag'
> | make[3]: *** [all-recursive] Error 1
> | make[3]: Leaving directory
> `/home/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/xbmc-10.1-r0/confluence-10.1/xbmc/lib/libid3tag/libid3tag'
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory
> `/home/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/xbmc-10.1-r0/confluence-10.1/xbmc/lib/libid3tag/libid3tag'
> | make[1]: *** [libid3tag/.libs/libid3tag.so] Error 2
> | make[1]: Leaving directory
> `/home/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/xbmc-10.1-r0/confluence-10.1/xbmc/lib/libid3tag'
> | make: *** [libid3tag] Error 2
> | FATAL: oe_runmake failed 
> | ERROR: Function 'do_compile' failed
> **************************************
> 
> 
> When i tried this build on 32bit host it worked fine , so is there any
> option to enable this for 64bit host.
> I'm attaching the error log for reference.

It should be referencing the libz in the sysroot, not the one from the
host system. This probably means its using the wrong linker (ld). You
need to ensure it uses the correct linker (the cross one from the
sysroot, not /usr/bin/ld).

Cheers,

Richard



