Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B9E04C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:40:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHejIx020792; Tue, 21 Dec 2010 17:40:45 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id nrfwRETcnu2s; Tue, 21 Dec 2010 17:40:44 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHebHH020781
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 17:40:39 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <cover.1292950144.git.qing.he@intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
Date: Tue, 21 Dec 2010 17:38:50 +0000
Message-ID: <1292953130.25087.6326.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [RFC 0/4] socketed based data connection
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
X-List-Received-Date: Tue, 21 Dec 2010 17:40:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 00:49 +0800, Qing He wrote:
> This patch set enables remote data access in the exec'd task process.
> 
> Some test data:
> I've conducted a poky-image-minimal build on two different machines
> with and without the patch, the result are as follow:
> 
> 2 core weybridge: worker count=4, make -j4
>   without patch
>     real: 161min
>     user: 237min
>     sys:  56min
>   with patch
>     real: 138min
>     user: 196min
>     sys:  45min
> 4 core nehalem: worker count=4, make -j4
>   without patch
>     real: 88min
>     user: 218min
>     sys:  37min
>   with patch
>     real: 83min
>     user: 160min
>     sys:  29min

For comparison what numbers does master give? I'm assuming these numbers
were with master using exec() so I'd be interested in the comparisons
with fork().

> the user+sys has an improvement of around 20%~30%, however the
> real runtime improvement is less significant. It's probably
> because of the thread workload unbalance on multicore, or in another
> word, some CPUs are not fully loaded during the build. e.g. when
> do_rootfs_rpm is run, there is probably no other tasks running.
> 
> Haven't done any test against single thread running, but it should
> have a much more considerable impact.
> 
> 
> Known problems:
> 1. fetcher is not working at the moment, maybe bitbake needs an explicit
> InheritFromOS(), but that produces some inconsistency in PATH in my previous
> run
> 2. do_rootfs_rpm has some problem in the first run
> 
> 
> Next step and possible future usage:
> 1. organize remote data to a separate class
> 2. although we have reverted to fork for task running, a remote data mechanism
> would work for a more separate build (e.g. distributed build)

It could also be useful for UI interaction with the datastore.

> 3. the added code in bitbake-runtask is to run necessary initializations for a
> working environment, this is part of cooker. The current cooker seems too heavy
> and may be broken down into several pieces according to functionalitiies

I certainly agree cooker could use some serious refactoring in some
form.

Cheers,

Richard


