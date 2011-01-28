Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A69F4C8123F
	for <poky@lists.pokylinux.org>; Fri, 28 Jan 2011 04:35:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SAbHiT013921; Fri, 28 Jan 2011 10:37:17 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id bL0rpuR3jARe; Fri, 28 Jan 2011 10:37:17 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0SAbBnC013912
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 28 Jan 2011 10:37:13 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
References: <4D3850B3.2030100@mlbassoc.com>
	<1295619024.14388.30678.camel@rex>	<4D399769.1050803@mlbassoc.com>
	<1295626657.14388.31197.camel@rex>	<4D39F115.90909@mlbassoc.com>
	<4D3B1779.50504@mlbassoc.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFC0@shsmsx501.ccr.corp.intel.com>
Date: Fri, 28 Jan 2011 10:34:45 +0000
Message-ID: <1296210885.27814.10353.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 28 Jan 2011 10:35:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 15:42 +0800, Xu, Dongxiao wrote:
> Kevin and I spent some time investigating this logging issue, and
> finally we found its cause.
> 
> The phenomenon is, if we write a task like:
> 
> testlog.bb:
> 
> python do_crazylog () {
>         for i in range(500):
>                 bb.note("xdx: hello world.")
> }
> addtask crazylog
> 
> And run the command: "time bitbake testlog -c crazylog -f", it needs
> about 68 seconds to print the 500 sentences, which is problematic.
> 
> I used "bitbake -P" to do some profiling for this task, and found most
> time is costed by time.sleep(), and each time it will sleep 0.25
> seconds.
> 
> Thu Jan 27 16:11:59 2011    profile.log
> 
>          922167 function calls (892080 primitive calls) in 69.882 CPU
> seconds
> 
>    Ordered by: cumulative time
> 
>    ncalls  tottime  percall  cumtime  percall
> filename:lineno(function)
>         1    0.012    0.012   69.887
> 69.887 /home/dongxiao/poky/bitbake/lib/bb/ui/knotty.py:67(main)
>      1391    0.005    0.000   69.829
> 0.050 /home/dongxiao/poky/bitbake/lib/bb/server/none.py:95(waitEvent)
>      1044    0.005    0.000   69.818
> 0.067 /home/dongxiao/poky/bitbake/lib/bb/server/none.py:121(idle_commands)
>       265   66.350    0.250   66.350    0.250 {time.sleep}
>       780    0.001    0.000    2.143
> 0.003 /home/dongxiao/poky/bitbake/lib/bb/cooker.py:156(runCommands)
>       780    0.003    0.000    2.142
> 0.003 /home/dongxiao/poky/bitbake/lib/bb/command.py:91(runAsyncCommand)
>       780    0.002    0.000    1.935
> 0.002 /home/dongxiao/poky/bitbake/lib/bb/cooker.py:738(updateCache)
> 
> 
> I bisected the git log and found that the commit introduced this issue
> is a merge from openembedded.
> 
> After this commit, the whole LogRecord object into eventQueue, which
> contains more information than only level and messages.
> 
> Commit: d3a45c7d41a88d79389fc40eb68816e4939fb6f9.
> 
>     Use logging in the knotty ui, and pass the log record across
> directly
> 
>     This kills firing of Msg* events in favor of just passing along
> LogRecord
>     objects.  These objects hold more than just level and message, but
> can also
>     have exception information, so the UI can decide what to do with
> that.
> 
>     As an aside, when using the 'none' server, this results in the log
> messages in
>     the server being displayed directly via the logging module and the
> UI's
>     handler, rather than going through the server's event queue.  As a
> result of
>     doing it this way, we have to override the event handlers of the
> base logger
>     when spawning a worker process, to ensure they log via events
> rather than
>     directly.
> 
> 
> Based on our analysis of the current code, the main steps for logging
> is: (knotty ui and none server)
> 
> 1) Each time when bitbake server fork off a task in execute(), it will
> create pipe between server and forked task.
> 
> 2) Server will read the pipe to get "events", and then append it to
> the server eventQueue. Each time it will read 1024 bytes.
> 
> 3) The UI module (knotty in our case) will wait on getting the event
> from eventQueue of "none" server, if there are events exist, it will
> handle the event. Otherwise, it will sleep 0.25 seconds and see there
> is any event.
> 
> 
> Previsouly before the patch, we only put message and level information
> into eventQueue, thus each time in read(), we can read a bunch of
> messages in above case (about 10 "xdx: hello world.").
> 
> However, after passing the whole object, 1024 bytes could only cover
> 1, 2 or even zero LogRecord objects. Therefore the server is always
> "starve" to get event from the pipe, and thus the eventQueue is empty
> in most cases, which makes knotty ui sleep.
> 
> One of the straightforward idea is to change 1024 to be a bigger
> number, for example, 10240. See following patch.
> 
> diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
> index b9d89ec..196b957 100644
> --- a/bitbake/lib/bb/runqueue.py
> +++ b/bitbake/lib/bb/runqueue.py
> @@ -1637,7 +1637,7 @@ class runQueuePipe():
>      def read(self):
>          start = len(self.queue)
>          try:
> -            self.queue = self.queue + self.input.read(1024)
> +            self.queue = self.queue + self.input.read(10240)
>          except (OSError, IOError):
>              pass
>          end = len(self.queue)
> 
> I retested the above case, and it can get a much better results:
> 
> After patch:
> real    0m9.994s
> user    0m3.410s
> sys     0m0.390s
> 
> Before patch:
> real    1m8.614s
> user    0m3.460s
> sys     0m0.320s
> 
> This is a bottle neck for those cases which have a loop of "bb.note",
> like Gary found in the package bbclass for kernel recipes.
> 
> But for normal "bb.note", it may not benefit a lot. So this logging
> issue may be not a key point to the current long building time.
> 
> But anyhow, I am scheduling a test for this patch to see whether it
> helps for our common build result, like poky-image-minimal, etc.
> 
> Comments and thoughts on it?

Great work in tracking that down. I've merged a version into master but
I did increase the read value by another factor of 10 as my local tests
showed it to be beneficial. I was nearly tempted to remove the size all
together but didn't for the reasons I've outlined in the commit (task
scheduling fairness and the risk of a crazy task blocking the server
main loop).

I think this could well have a significant speed effect on things in
general, we'll soon find out I guess! :)

Cheers,

Richard



