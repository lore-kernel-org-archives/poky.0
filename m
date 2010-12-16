Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF2574C80B71
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 09:19:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFKmuP029633; Thu, 16 Dec 2010 15:20:49 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Qm5nPIrojf74; Thu, 16 Dec 2010 15:20:48 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFKhWr029595
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:20:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F4096A4@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4096A4@shsmsx502.ccr.corp.intel.com>
Date: Thu, 16 Dec 2010 15:19:14 +0000
Message-ID: <1292512754.26558.3993.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about 'noexec' message
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
X-List-Received-Date: Thu, 16 Dec 2010 15:19:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 17:48 +0800, Tian, Kevin wrote:
> >From: Tian, Kevin
> >Sent: Thursday, December 16, 2010 4:46 PM
> >
> >>From: Gary Thomas [mailto:gary@mlbassoc.com]
> >>Sent: Thursday, December 16, 2010 12:10 AM
> >>
> >>Note to Richard: I'm still seeing a ton of Noexec messages every time I rebuild
> >>a package in this tree.  I thought I understood you to say they should happen
> >>at most once?
> >>
> >
> >Yes, RP's previous patch does reduce the Noexec messages a lot. However there
> >remains one problem. Current stamp file check also calculates the stamp of tasks
> >depended on. If those stamps are newer or not exist, the check return False to
> >indicate mismatched stamp.
> >
> >In 'noexec' case, some 'noexec' tasks happen to have some dependent tasks
> >skipped which thus don't generate stamp files. This makes the check always
> >failed for those 'noexec' tasks and thus you always observe the Noexec messages.
> >
> >I have a patch to fix that, and will send out soon. :-)
> >
> 
> Though I managed to remove the rest 'noexec' messages by adding below in 
> check_stamp_task():
> 
> 	if 'noexec' in taskdep and taskname in taskdep['noexec']
> 		return True
> 
> I realized there's one potential risk. Though 'noexec' task is not executed at all,
> it's considered to be a normal task which normally plays the role of the sync
> points. Ideally if there're changes on stamp file of tasks that this 'noexec' task
> depends on, we still want to generate a new stamp file for the 'noexec' task.
> That way other tasks depending on that 'noexec' task will trigger rebuild too.
> 
> If we always take 'noexec' task away from the comparison, above chain effect
> disappears.
> 
> Current comparison condition for stamp files is:
> 
> 	if not t2 or t1 < t2
> 		iscurrent = False
> 
> I'm not sure under which case a stamp file (t2) doesn't exist, and whether it's
> safe to use:
> 	if not t2 and not noexec or t2 and t1 < t2:
> 		iscurrent = False
> 
> to check stamp file for 'noexec' task.
> 
> Or alternative is to simply convert bb.note to bb.debug for 'noexec' message. :-)

I've looked at this and realised that scenequeue should not be trying to
skip noexec tasks as this means the stamps don't get generated. Instead,
it should just failoutright and let the secondary code in the main
runqueue deal with them at the correct point in time.

I've pushed this change, lets see if it solves the issues people have
been seeing. It certainly makes the output from bitbake more readable
again.

Cheers,

Richard


