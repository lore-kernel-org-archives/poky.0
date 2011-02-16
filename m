Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29AB74C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 18:07:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1G07bG6032410
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 00:07:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 31885-09 for <poky@yoctoproject.org>;
	Wed, 16 Feb 2011 00:07:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1G07UWB032404
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 00:07:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
In-Reply-To: <1297791165.4945.281.camel@rex>
References: <1297791165.4945.281.camel@rex>
Date: Wed, 16 Feb 2011 00:07:27 +0000
Message-ID: <1297814847.11289.179.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: Build profiling, now in pictures
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
X-List-Received-Date: Wed, 16 Feb 2011 00:07:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This is a chart of pseudo-native as of master before the last few
bitbake commits:

http://tim.rpsys.net/bootchart-pseudo1.png

and after the recent bitbake commits, this is the result:

http://tim.rpsys.net/bootchart-pseudo1.png

Whats interesting in the gradient of the rapid fire tasks at the start
of the graph. There is now much less "free" space between the tasks and
task execution and throughput was therefore improved and the gradient
much sharper.

Looking at the graphs, the new task execution order is suboptimal
though, mainly as I changed something there that before realising there
was another problem that was making this hurt more than it should.

I think reverting:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=974ea1a190167dcfd831ba1fc5f733e0dc9a6fda

should help parallelism a little further.

I'm running a full build to see what this means in read world numbers.
It certainly executed all the non-critical path tasks faster with these
changes. I pulled the graph of the first 1000 tasks and they executed in
a faster time period, its difficult to say what the effect on the
overall build will be at this point though.

Interesting what some numbers can do to point out problems though.

Just for the record, I used a dummy recipe of empty tasks to test how
fast the execution code was combined with bitbake profiling and some
suitable tweaks to the looping delays to make it clear when bitbake was
sleeping and shouldn't be. These changes dropped the test time from 9
seconds to 5 (where the timing includes bitbake startup and cache
loading overheads).

Cheers,

Richard




