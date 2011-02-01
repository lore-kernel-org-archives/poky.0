Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 148414C800A9
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 09:39:00 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11FcQdY027857;
	Tue, 1 Feb 2011 07:38:26 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 07:38:26 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 07:38:25 -0800
Message-ID: <4D4828F0.9020203@windriver.com>
Date: Tue, 01 Feb 2011 09:38:24 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1296520080.13501.15996.camel@rex>	
	<1296520850.13501.16052.camel@rex> <4D476541.7040703@windriver.com>
	<1296558321.13501.18568.camel@rex>
In-Reply-To: <1296558321.13501.18568.camel@rex>
X-OriginalArrivalTime: 01 Feb 2011 15:38:25.0754 (UTC)
	FILETIME=[10DB3BA0:01CBC226]
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
X-List-Received-Date: Tue, 01 Feb 2011 15:39:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/1/11 5:05 AM, Richard Purdie wrote:
> On Mon, 2011-01-31 at 19:43 -0600, Mark Hatle wrote:
>> On 1/31/11 6:40 PM, Richard Purdie wrote:
>>> On Tue, 2011-02-01 at 00:28 +0000, Richard Purdie wrote:

...

>>> Mark: Is there a way we could batch up the information rather than go
>>> file by file? I'm going to look at this for other areas to improve too
>>> but thats obviously one worthy of attention.
>>
>> The way the routine works today is via a script call perfile_rpmdeps.sh.  The
>> package.bbclass calls this script twice for each package-split.
>>
>> I.e. if we have base, base-dbg and base-libs, it will run for a total of 6
>> times.  Each pair it is simply passed the path to the packages-split directory.
>>
>> Within the script itself, it is doing a find operation:
>>
>>         find "$@" | process $process_type
>>
>> The output of the file is passed to "process" which is just a wrapper that calls
>> the rpmdeps program with the correct parameters.  We could optimize this a bit
>> by ignoring directories and symlinks.  But we still want to process all of the
>> files in the system.
>>
>> Another optimization (that we do NOT have) that is done by default in RPM, is to
>> only process files that are +x.  We have chosen not to do this as most of our
>> libraries are not set +x.  An alternative is to use 'file' and check the type of
>> each file, however identifying the file type is likely to take longer then
>> simply running the per-file deps commands.  Another possible optimization is
>> only scan certain directories (or the opposite, skip certain directories...) the
>> only issue here is missing files that may be dlopened or loaded via RPATH
>> because they are in a non-standard location.
>>
>> So what I'd recommend is we start by adding "-type f" to the find.  That is
>> likely to help some.
>>
>> Maybe then add a check for either sitting in /lib or /usr/lib _or_ mode is +x?
>> We would likely need to audit the system somehow and tag ELF files that are
>> neither...
> 
> I did a little investigating and my brain dump on it follows...
> 
> I noticed that rpmdeps doesn't help us with any locale information in
> the libc case so I tried this patch:

I'm still used to the RPM world where locales are included in the main package
and "tagged" so they will or won't be included automatically.  I forget they are
separated out in Poky by default.

So skipping them makes sense to me...

> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index 856858c..476a84a 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -607,7 +607,7 @@ python package_do_filedeps() {
>  
>         # Determine dependencies
>         for pkg in packages.split():
> -               if pkg.endswith('-dbg'):
> +               if pkg.endswith('-dbg') or pkg.find('-locale-') != -1 or pkg.find('-localedata-') != -1 or pkg.find('-gconv-') != -1  or pkg.find('-charmap-') != -1:
>                         continue
>  
>                 # Process provides
> 
> The result was:
> 
> Tue Feb  1 10:06:46 2011    profile-eglibc_2.12.bb-do_package.log
> 
>          8106962 function calls (7768817 primitive calls) in 594.886 CPU seconds
> 
>    Ordered by: internal time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>       403  308.929    0.767  308.929    0.767 {posix.waitpid}
>    134054   72.907    0.001   72.907    0.001 {method 'read' of 'file' objects}
>       828   34.643    0.042   34.795    0.042 package_do_filedeps:12(process_deps)
>       866   29.347    0.034   29.347    0.034 {posix.system}
>    225558   23.459    0.000   23.459    0.000 {posix.stat}
>     85562   18.980    0.000   18.980    0.000 {posix.chmod}
>    171317   17.198    0.000   17.198    0.000 {posix.lstat}
>     55393   14.378    0.000   14.378    0.000 {open}
>     25824   13.719    0.001   13.719    0.001 {posix.rename}
>      2280    5.383    0.002    5.383    0.002 {method 'readlines' of 'file' objects}
>      6403    4.877    0.001    5.762    0.001 insane.bbclass:1(package_qa_hash_style)
>     19214    4.843    0.000    4.843    0.000 {posix.mkdir}
>      2947    3.867    0.001    3.867    0.001 {posix.popen}
> 
> So overall we dropped from 878 seconds to 595 seconds and
> package_do_filedeps:12(process_deps) dropped from 322 to 34 seconds. 

This makes sense.  The locale files don't have any dependencies in them, as far
as I am aware...  and it is a ton of files to process within glibc...

> FWIW, the waitpid above is from the binary locale generation, not from
> filedeps and we know that is "slow" in the libc case although the cross
> locale generation speeds it up a lot. The reason process_deps is showing
> so badly on the profile is not because that python function is slow (as
> it usually the case) but because its reading from a pipe which blocks on
> the output of the rpmdeps process.

Is there a faster mechanism we could use -- or is this actually efficient, but
not showing it in the trace?

> I did take a look at the perfile_rpmdeps.sh script and rpmdeps itself. I
> suspect we might be faster if we called "rpmdeps --requires --provides
> -v" on each file ourselves and handle the prefix the -v option adds to
> differentiate between the requires and provides. There is a sed
> operation in the script I didn't 100% understand that we'd need to
> account for too. Watching cpu usage whilst manually running the script
> was not encouraging :/.

The sed actually accomplished two things.  The first is removes instances of the
dependency "rpmlib(...)".  This dependency is added by RPM to track specific rpm
versioning requirements.  Things such as symlink validation, compression
methods, etc.  None of these are needed within the Poky environment.

The second thing is does is translates the dependency equations into a Poky
style equation.

In rpm versioned dependencies are normally like:

foo = 1.2-3

However in Poky the format is different:

foo (= 1.2-3)

So the sed finds these, and simply moves them into parens.

We may be able to move the sed out of the direct loop and make it a single call
over the full run.  I think this will work, and it's likely more efficient as well.

As for calling rpmdeps with the -v, we can switch that mode if it makes it
quicker to process the results, it just becomes slightly more complicated to
process.  With the method I'm using now, all of the dependencies return on a
single line prefixed by the filename.  If we switch to "-v", then we would
likely need to do "filename:\ndep1\ndep2\n" etc..  I'm sure we could process
that in python, but the difficulty wasn't worth it at the time.

> So these findings along with your thoughts should give us some avenues
> to explore. Do you thing skipping locale packages is ok to do? Maybe
> kernel modules too?

locales should be fine.  Skipping kernel modules should be fine as well.  I
don't believe there is any data that is learned from the .ko files.

--Mark

> There are also other things to pick off in that profile list such as the
> 200,000 stat calls (from sstate?), the insane check thats showing up and
> what all the read calls are doing.
> 
> Cheers,
> 
> Richard
> 
> 


