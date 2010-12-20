Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F8C74C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 11:12:26 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHDiKq001327; Mon, 20 Dec 2010 17:13:44 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id gohTP2h5Pl49; Mon, 20 Dec 2010 17:13:44 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHDapI001311
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 17:13:39 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <1292850551.25087.4341.camel@rex>
References: <1291899386.1554.827.camel@rex> <1292625845.25087.586.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409BD1@shsmsx502.ccr.corp.intel.com>
	<1292850551.25087.4341.camel@rex>
Date: Mon, 20 Dec 2010 17:11:53 +0000
Message-ID: <1292865113.25087.4797.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Performance regression in bitbake and exec() vs fork()
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
X-List-Received-Date: Mon, 20 Dec 2010 17:12:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Some further numbers:

with exec():

real 71m56.105s
user 209m28.120s
sys 26m16.440s

with fork():

real 66m57.744s
user 183m29.730s
sys 20m37.100s

real 69m48.796s
user 180m57.800s
sys 20m39.620s

for the same workload.

So it looks like some speedup but not as significant as we'd perhaps
have hoped. Statistical fluctuations mean that the real gain is going to
be hard to measure, I could make more timing runs but I'm not sure that
would be that useful. Some of the speedup above could be some of the
improvements made to pseudo too.

Bottom line is the task execution is demonstrably faster though as my
other tests showed :)

Cheers,

Richard


