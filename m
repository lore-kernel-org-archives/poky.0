Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 175474C80FEC
	for <poky@yoctoproject.org>; Tue,  3 May 2011 23:51:53 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p444prRA022868
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 3 May 2011 21:51:53 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 3 May 2011 21:51:53 -0700
Message-ID: <4DC0DB68.1040303@windriver.com>
Date: Tue, 3 May 2011 23:51:52 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTim0CS8a5Q1Mv-m=KDsBGTPNA3V6mQ@mail.gmail.com>
In-Reply-To: <BANLkTim0CS8a5Q1Mv-m=KDsBGTPNA3V6mQ@mail.gmail.com>
Subject: Re: Error in pulling nspr package
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
X-List-Received-Date: Wed, 04 May 2011 04:51:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/3/11 11:19 PM, chinmaya hoshing wrote:
> Hi,
> 
> I am trying to port Poky to the "sandybridge platform" and  using the branch
> "bernard" for "sugarbay" machine.
> I am running Ubuntu 10.10 on 64 bit machine.
> I am getting error for nspr package following is the error log:
> NOTE: package nss-3.12.9-r2: task do_patch: Succeeded


> | x86_64-poky-linux-gcc -m64
> --sysroot=/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay -m32 -o
> now.o -c     -fexpensive-optimizations -fomit-frame-pointer -frename-registers
> -O2 -ggdb -feliminate-unused-debug-types -Wall -g -fno-inline -fPIC  -UNDEBUG
> -DDEBUG_sct  -DDEBUG=1 -DHAVE_VISIBILITY_HIDDEN_ATTRIBUTE=1
> -DHAVE_VISIBILITY_PRAGMA=1 -DXP_UNIX=1 -D_GNU_SOURCE=1
> -DHAVE_FCNTL_FILE_LOCKING=1 -DLINUX=1 -Di386=1 -DHAVE_LCHOWN=1 -DHAVE_STRERROR=1
> -D_REENTRANT=1  -DFORCE_PR_LOG -D_PR_PTHREADS -UHAVE_CVAR_BUILT_ON_SEM   now.c

> fatal error: gnu/stubs-32.h: No such file or directory

Something is wrong in the above.  Both -m64 and -m32 are specified.  The later
takes priority.  This is causing the compiler to attempt a 32-bit compile,
automatically including "gnu/stubs-32.h", which doesn't exist because you are
building for a 64-bit target.

So it appears there is a bug in the nspr integration.

--Mark

> 
> 
> Can you help me to find the solution
> 
> Chinmaya
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


