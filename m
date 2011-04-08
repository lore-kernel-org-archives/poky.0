Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 242414C802F2
	for <poky@lists.yoctoproject.org>; Fri,  8 Apr 2011 12:29:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p38HTGvU010235;
	Fri, 8 Apr 2011 18:29:16 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09848-07; Fri,  8 Apr 2011 18:29:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p38HT6p1010201
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Apr 2011 18:29:09 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>
In-Reply-To: <1302277262.22904.136.camel@rex>
References: <1302277262.22904.136.camel@rex>
Date: Fri, 08 Apr 2011 10:29:05 -0700
Message-ID: <1302283745.22904.146.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@lists.yoctoproject.org>
Subject: Re: Illustration of task latency
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
X-List-Received-Date: Fri, 08 Apr 2011 17:29:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-08 at 08:41 -0700, Richard Purdie wrote:
> We've done a lot of good work in optimising task execution and latency
> however I was looking at some of our build data and I think we still
> have work to do. The attached picture is a "bootchart" style picture
> showing the task execution at the start of a build. Each vertical
> division represents one second. As you can see, the fetch/patch tasks
> themselves run very quickly. Those markers are from the task entry/exit.
> 
> The worrying part is the empty space between the tasks which looks to be
> about 1.5 seconds in size *per task*. This is a scary amount of latency
> to be losing for task execution when you consider we have 4500 of these
> for our reference build.
> 
> More investigation is needed to figure out where this time is being
> spent but I'm guessing a significant fraction is in parsing the recipe
> of the task that is about to be executed. We need to confirm that but if
> that is the case but one possible optimisation is we should ensure we're
> not parsing every BBCLASSEXTEND variant of the recipe, just the one we
> want to run. I'm sure there are other ways we might be able to improve
> this too.

To follow up on this, I added instrumentation to runqueue.py
fork_off_task(). There are two things of note. On my laptop which is a
much slower system than the one I showed in the benchmark (a quad core),
the task overhead isn't 1+ seconds as shown in the graph but 0.4 seconds
per task. I think the reason is there is a compile job running in
parallel on the other graph which is starving new tasks of CPU.

The second thing of note is 95% of the 0.4 seconds are in the
loadDataFull() call as suspected. I did notice that the logging changes
around that point in the code can distort timings but the time is really
being spent there.

Cheers,

Richard


