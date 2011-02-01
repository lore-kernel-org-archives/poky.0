Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FBB44C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 05:05:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11B7epK010586; Tue, 1 Feb 2011 11:07:41 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id WTAQmabmcDTA; Tue,  1 Feb 2011 11:07:40 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11B7Yv1010582
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 11:07:36 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D476541.7040703@windriver.com>
References: <1296520080.13501.15996.camel@rex>
	<1296520850.13501.16052.camel@rex>  <4D476541.7040703@windriver.com>
Date: Tue, 01 Feb 2011 11:05:21 +0000
Message-ID: <1296558321.13501.18568.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Quick hack for profiling tasks
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
X-List-Received-Date: Tue, 01 Feb 2011 11:05:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 19:43 -0600, Mark Hatle wrote:
> On 1/31/11 6:40 PM, Richard Purdie wrote:
> > On Tue, 2011-02-01 at 00:28 +0000, Richard Purdie wrote:
> >> One thing that is bugging me whilst I've been debugging some issues
> >> we're having with the libc/libgcc package dependency issue is how long
> >> do_package takes for libc. The question is where does it spend the time?
> >> Answer, I have no idea.
> >>
> >> I hacked together the patch below to find out. Its ugly and uses the
> >> boilerplate profiling code from cooker, cut and pasted here to profile
> >> the actual tasks that run.
> >>
> >> I've yet to look at the results but it should allow us to optimise the
> >> python tasks a bit if we can see where they spend time. I'm hoping this
> >> lets others look at that too and also it give us some hints as to how we
> >> might improve the core when turning on profiling in bitbake.
> > 
> > For eglibc this worked out as:
> > 
> > Tue Feb  1 00:33:21 2011    profile-eglibc_2.12.bb-do_package.log
> > 
> >          8339733 function calls (8001600 primitive calls) in 877.972 CPU seconds
> > 
> >    Ordered by: internal time
> > 
> >    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
> >      3206  321.887    0.100  322.422    0.101 package_do_filedeps:12(process_deps)
> >       403  311.208    0.772  311.208    0.772 {posix.waitpid}
> >    134054   69.860    0.001   69.860    0.001 {method 'read' of 'file' objects}
> >    225554   23.367    0.000   23.367    0.000 {posix.stat}
> >       866   20.279    0.023   20.279    0.023 {posix.system}
> >     85562   19.406    0.000   19.406    0.000 {posix.chmod}
> >    168083   16.691    0.000   16.691    0.000 {posix.lstat}
> >     25824   14.399    0.001   14.399    0.001 {posix.rename}
> >     55391   13.731    0.000   13.731    0.000 {open}
> >      5325    9.019    0.002    9.019    0.002 {posix.popen}
> >      2279    5.490    0.002    5.490    0.002 {method 'readlines' of 'file' objects}
> >      6403    5.187    0.001    6.346    0.001 insane.bbclass:1(package_qa_hash_style)
> >     19214    5.046    0.000    5.046    0.000 {posix.mkdir}
> > 
> > so its spending a third of the time in package_do_filedeps(), a lot of
> > which is in waitpid waiting for the process that was spawned.
> > 
> > Mark: Is there a way we could batch up the information rather than go
> > file by file? I'm going to look at this for other areas to improve too
> > but thats obviously one worthy of attention.
> 
> The way the routine works today is via a script call perfile_rpmdeps.sh.  The
> package.bbclass calls this script twice for each package-split.
> 
> I.e. if we have base, base-dbg and base-libs, it will run for a total of 6
> times.  Each pair it is simply passed the path to the packages-split directory.
> 
> Within the script itself, it is doing a find operation:
> 
>         find "$@" | process $process_type
> 
> The output of the file is passed to "process" which is just a wrapper that calls
> the rpmdeps program with the correct parameters.  We could optimize this a bit
> by ignoring directories and symlinks.  But we still want to process all of the
> files in the system.
> 
> Another optimization (that we do NOT have) that is done by default in RPM, is to
> only process files that are +x.  We have chosen not to do this as most of our
> libraries are not set +x.  An alternative is to use 'file' and check the type of
> each file, however identifying the file type is likely to take longer then
> simply running the per-file deps commands.  Another possible optimization is
> only scan certain directories (or the opposite, skip certain directories...) the
> only issue here is missing files that may be dlopened or loaded via RPATH
> because they are in a non-standard location.
> 
> So what I'd recommend is we start by adding "-type f" to the find.  That is
> likely to help some.
> 
> Maybe then add a check for either sitting in /lib or /usr/lib _or_ mode is +x?
> We would likely need to audit the system somehow and tag ELF files that are
> neither...

I did a little investigating and my brain dump on it follows...

I noticed that rpmdeps doesn't help us with any locale information in
the libc case so I tried this patch:

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 856858c..476a84a 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -607,7 +607,7 @@ python package_do_filedeps() {
 
        # Determine dependencies
        for pkg in packages.split():
-               if pkg.endswith('-dbg'):
+               if pkg.endswith('-dbg') or pkg.find('-locale-') != -1 or pkg.find('-localedata-') != -1 or pkg.find('-gconv-') != -1  or pkg.find('-charmap-') != -1:
                        continue
 
                # Process provides

The result was:

Tue Feb  1 10:06:46 2011    profile-eglibc_2.12.bb-do_package.log

         8106962 function calls (7768817 primitive calls) in 594.886 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
      403  308.929    0.767  308.929    0.767 {posix.waitpid}
   134054   72.907    0.001   72.907    0.001 {method 'read' of 'file' objects}
      828   34.643    0.042   34.795    0.042 package_do_filedeps:12(process_deps)
      866   29.347    0.034   29.347    0.034 {posix.system}
   225558   23.459    0.000   23.459    0.000 {posix.stat}
    85562   18.980    0.000   18.980    0.000 {posix.chmod}
   171317   17.198    0.000   17.198    0.000 {posix.lstat}
    55393   14.378    0.000   14.378    0.000 {open}
    25824   13.719    0.001   13.719    0.001 {posix.rename}
     2280    5.383    0.002    5.383    0.002 {method 'readlines' of 'file' objects}
     6403    4.877    0.001    5.762    0.001 insane.bbclass:1(package_qa_hash_style)
    19214    4.843    0.000    4.843    0.000 {posix.mkdir}
     2947    3.867    0.001    3.867    0.001 {posix.popen}

So overall we dropped from 878 seconds to 595 seconds and
package_do_filedeps:12(process_deps) dropped from 322 to 34 seconds. 

FWIW, the waitpid above is from the binary locale generation, not from
filedeps and we know that is "slow" in the libc case although the cross
locale generation speeds it up a lot. The reason process_deps is showing
so badly on the profile is not because that python function is slow (as
it usually the case) but because its reading from a pipe which blocks on
the output of the rpmdeps process.

I did take a look at the perfile_rpmdeps.sh script and rpmdeps itself. I
suspect we might be faster if we called "rpmdeps --requires --provides
-v" on each file ourselves and handle the prefix the -v option adds to
differentiate between the requires and provides. There is a sed
operation in the script I didn't 100% understand that we'd need to
account for too. Watching cpu usage whilst manually running the script
was not encouraging :/.

So these findings along with your thoughts should give us some avenues
to explore. Do you thing skipping locale packages is ok to do? Maybe
kernel modules too?

There are also other things to pick off in that profile list such as the
200,000 stat calls (from sstate?), the insane check thats showing up and
what all the read calls are doing.

Cheers,

Richard



