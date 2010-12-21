Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1E614C80039
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 09:16:53 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLFIE0Q014728; Tue, 21 Dec 2010 15:18:15 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id QIXEXMK+BZHS; Tue, 21 Dec 2010 15:18:14 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLFI2aI014716
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 15:18:05 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D10C095.5040907@mlbassoc.com>
References: <4D10C095.5040907@mlbassoc.com>
Date: Tue, 21 Dec 2010 15:16:15 +0000
Message-ID: <1292944575.25087.6170.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: New fetch error
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
X-List-Received-Date: Tue, 21 Dec 2010 15:16:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 07:58 -0700, Gary Thomas wrote:
> While testing the recent sstate changes (commit 4cd40dbaa8aef7b6b9ff9ce892a576b802f4b1ec),
> I ran across this error:
> 
> NOTE: package linux-am-2.6.32-r0: task do_fetch: Started
> NOTE: fetch http://www.mlbassoc.com/repos/public/linux-am-2.6.32.tar.bz2
> ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referenced before assignment
> NOTE: package linux-am-2.6.32-r0: task do_fetch: Failed
> ERROR: Task 5 (/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb, do_fetch) failed with 256
> ERROR: '/work/local/poky-amltd/meta-amltd/packages/linux/linux-am_2.6.32.bb' failed
> 
> This is for a local kernel which previously built (today,
> using the same Poky tree).  The problem occurred after I
> ran 'bitbake virtual/kernel -c cleanall'
> 
> Any ideas what caused this error?

My fault, I've pushed a fix, sorry about that.

Cheers,

Richard



