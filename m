Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FC244C800A4
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 08:29:13 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12EVEcs009873; Wed, 2 Feb 2011 14:31:14 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LVcuPdw-s2Nu; Wed,  2 Feb 2011 14:31:14 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p12EV97d009868
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 2 Feb 2011 14:31:11 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D4828F0.9020203@windriver.com>
References: <1296520080.13501.15996.camel@rex>
	<1296520850.13501.16052.camel@rex> <4D476541.7040703@windriver.com>
	<1296558321.13501.18568.camel@rex>  <4D4828F0.9020203@windriver.com>
Date: Wed, 02 Feb 2011 14:28:56 +0000
Message-ID: <1296656936.1544.3387.camel@rex>
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
X-List-Received-Date: Wed, 02 Feb 2011 14:29:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 09:38 -0600, Mark Hatle wrote:
> I'm still used to the RPM world where locales are included in the main package
> and "tagged" so they will or won't be included automatically.  I forget they are
> separated out in Poky by default.
> 
> So skipping them makes sense to me...

Some further numbers to backup my comments:

"time bitbake poky-image-sato -k"

Before patch:

real 129m40.482s
user 480m16.520s
sys 66m9.170s

After patch:

real 117m7.704s
user 455m40.330s
sys 55m1.390s

The patch in question:

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 856858c..fbc1463 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -607,7 +607,7 @@ python package_do_filedeps() {
 
 	# Determine dependencies
 	for pkg in packages.split():
-		if pkg.endswith('-dbg'):
+		if pkg.endswith('-dbg') or pkg.find('-locale-') != -1 or pkg.find('-localedata-') != -1 or pkg.find('-gconv-') != -1  or pkg.find('-charmap-') != -1 or pkg.startswith('kernel-module-') != -1:
 			continue
 
 		# Process provides


So I think this is a sufficient improvement for us to include it unless
there are any objections from anyone.

> > FWIW, the waitpid above is from the binary locale generation, not from
> > filedeps and we know that is "slow" in the libc case although the cross
> > locale generation speeds it up a lot. The reason process_deps is showing
> > so badly on the profile is not because that python function is slow (as
> > it usually the case) but because its reading from a pipe which blocks on
> > the output of the rpmdeps process.
> 
> Is there a faster mechanism we could use -- or is this actually efficient, but
> not showing it in the trace?

I was thinking this is ok efficiency wise, it just means the function
will look to take a long time on the graphs. The result above surprises
me though as we shrunk the kernel (sys) time by over 10 minutes. This
could mean we're trashing a lot with context switching using this
approach. There is no reason we can't log to a file and then read the
file for processing rather than context switch.

> > I did take a look at the perfile_rpmdeps.sh script and rpmdeps itself. I
> > suspect we might be faster if we called "rpmdeps --requires --provides
> > -v" on each file ourselves and handle the prefix the -v option adds to
> > differentiate between the requires and provides. There is a sed
> > operation in the script I didn't 100% understand that we'd need to
> > account for too. Watching cpu usage whilst manually running the script
> > was not encouraging :/.
> 
> The sed actually accomplished two things.  The first is removes instances of the
> dependency "rpmlib(...)".  This dependency is added by RPM to track specific rpm
> versioning requirements.  Things such as symlink validation, compression
> methods, etc.  None of these are needed within the Poky environment.

Ok, this makes sense. We could always just skip these in the python
processing code.

> The second thing is does is translates the dependency equations into a Poky
> style equation.
> 
> In rpm versioned dependencies are normally like:
> 
> foo = 1.2-3
> 
> However in Poky the format is different:
> 
> foo (= 1.2-3)
> 
> So the sed finds these, and simply moves them into parens.
> 
> We may be able to move the sed out of the direct loop and make it a single call
> over the full run.  I think this will work, and it's likely more efficient as well.

Agreed, either we make it a single call, or we can easily adapt the
python to handle this conversion too.

> As for calling rpmdeps with the -v, we can switch that mode if it makes it
> quicker to process the results, it just becomes slightly more complicated to
> process.

My thoughts here are that we could well half the execution time by doing
everything in one exec call, not two. The additional overhead for
handling the prefix in python is negligible.

>   With the method I'm using now, all of the dependencies return on a
> single line prefixed by the filename.  If we switch to "-v", then we would
> likely need to do "filename:\ndep1\ndep2\n" etc..  I'm sure we could process
> that in python, but the difficulty wasn't worth it at the time.

Fair enough but I think there is something odd going on with that
function we need to get to the bottom of as it does seem to be eating a
large amount of time, possibly when it needn't.

Cheers,

Richard


