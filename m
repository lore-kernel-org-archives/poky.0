Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B2FE4C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:10:53 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19DAofR000375;
	Wed, 9 Feb 2011 13:10:50 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32365-08; Wed,  9 Feb 2011 13:10:46 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19DAjAZ000369
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 13:10:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <1297254009.1395.6899.camel@rex>
References: <cover.1297230569.git.mark.hatle@windriver.com>
	<1297254009.1395.6899.camel@rex>
Date: Wed, 09 Feb 2011 13:10:42 +0000
Message-ID: <1297257042.1395.7313.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Preserve hard links
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
X-List-Received-Date: Wed, 09 Feb 2011 13:10:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 12:20 +0000, Richard Purdie wrote:
> On Tue, 2011-02-08 at 23:51 -0600, Mark Hatle wrote:
> > While working on another part of the system, I noticed that Poky didn't appear
> > to be preserving any hard links in the system.  This change not only
> > preserves hardlinks during packaging, but also shrinks the overall
> > disk space required for a build.  In my poky-image-minimal my required
> > footprint shank by 200+ MB.
> > 
> > The second part of this patch I took a guess as to the right components to
> > modify.  It has passed the testing I've performed so far, but I'm not
> > 100% sure that it's correct.  I believe a bit of additional review may be
> > necessary.
> > 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: mhatle/hardlink
> >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/hardlink
> 
> This looks good, my main worry is the copytree() function in
> meta/lib/oe/path.py as I suspect that will still smash things for
> sstate.
> 
> I'm seriously considering making that function an os.system call to tar
> as I suspect performance would improve substantially. I need some
> numbers to back up that idea first though.
> 
> I'm probably going to hold off on these patches for 24 hours as there is
> risk in them, I'd like to fix the above issue too and at the moment I
> want to see us have a "successful" build and stabilise a bit after the
> fetcher churn.

I played with this a little and came up with:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/hardlink&id=2131c96ced468f30c3a6f7039617799606faf983

before and after profiles for a copy of the glibc package directory
using oe.path.copytree():

sh-4.1$ head p1 -n 20
Wed Feb  9 12:35:01 2011    profile-testlog.bb-do_crazylog.log

         406162 function calls (397328 primitive calls) in 3.440 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
    32674    0.687    0.000    0.687    0.000 {method 'write' of 'file' objects}
    39040    0.320    0.000    0.320    0.000 {method 'read' of 'file' objects}
     6369    0.227    0.000    2.605    0.000 /rphome/poky/bitbake/lib/bb/utils.py:730(copyfile)
        2    0.209    0.104    0.209    0.104 {posix.unlink}
    26452    0.183    0.000    0.183    0.000 {posix.lstat}
    12740    0.179    0.000    0.179    0.000 {open}
    20008    0.150    0.000    0.150    0.000 {posix.chmod}
    21815    0.142    0.000    0.142    0.000 {posix.stat}
     6369    0.137    0.000    1.144    0.000 /usr/lib/python2.6/shutil.py:24(copyfileobj)
    12741    0.127    0.000    0.127    0.000 {method 'close' of 'file' objects}
     6369    0.120    0.000    0.120    0.000 {posix.rename}
    901/1    0.113    0.000    3.181    3.181 /rphome/poky/meta/lib/oe/path.py:55(copytree)
    13639    0.092    0.000    0.092    0.000 {posix.utime}
sh-4.1$ head p2 -n 20
Wed Feb  9 12:37:14 2011    profile-testlog.bb-do_crazylog.log

         15823 function calls (7889 primitive calls) in 1.650 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    1.577    1.577    1.577    1.577 {posix.system}
10072/2570    0.026    0.000    0.029    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:388(_keys)
        2    0.021    0.010    0.021    0.010 {open}
     2650    0.004    0.000    0.004    0.000 {method 'add' of 'set' objects}
       21    0.002    0.000    0.002    0.000 {compile}
        1    0.002    0.002    0.016    0.016 /rphome/poky/bitbake/lib/bb/data_smart.py:400(__len__)
        1    0.002    0.002    0.032    0.032 /usr/lib/python2.6/_abcoll.py:346(keys)
   129/42    0.001    0.000    0.011    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:103(expandWithRefs)
   138/68    0.001    0.000    0.010    0.000 {built-in method sub}
      269    0.001    0.000    0.003    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:295(getVarFlag)
      294    0.001    0.000    0.001    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:201(_findVar)
   197/75    0.001    0.000    0.011    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:256(getVar)
    96/44    0.001    0.000    0.010    0.000 /rphome/poky/bitbake/lib/bb/data_smart.py:55(var_sub)

Of note is the drop from 406,000 function calls to 16,000 and the speed
change from 3.4 seconds to 1.6 seconds. If you didn't wipe out the
destination directory first, it would take up to 15 seconds.

Since this is a core function heavily used by sstate, speeding it up is
a good move.

I'm going to run some further tests on my branch with a view to merging
this and Marks fixes.

Cheers,

Richard





