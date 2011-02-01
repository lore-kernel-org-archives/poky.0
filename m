Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78B904C8007E
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 19:43:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p111hUw6027313;
	Mon, 31 Jan 2011 17:43:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 17:43:30 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 17:43:29 -0800
Message-ID: <4D476541.7040703@windriver.com>
Date: Mon, 31 Jan 2011 19:43:29 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1296520080.13501.15996.camel@rex>
	<1296520850.13501.16052.camel@rex>
In-Reply-To: <1296520850.13501.16052.camel@rex>
X-OriginalArrivalTime: 01 Feb 2011 01:43:30.0027 (UTC)
	FILETIME=[6D79EBB0:01CBC1B1]
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
X-List-Received-Date: Tue, 01 Feb 2011 01:43:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/31/11 6:40 PM, Richard Purdie wrote:
> On Tue, 2011-02-01 at 00:28 +0000, Richard Purdie wrote:
>> One thing that is bugging me whilst I've been debugging some issues
>> we're having with the libc/libgcc package dependency issue is how long
>> do_package takes for libc. The question is where does it spend the time?
>> Answer, I have no idea.
>>
>> I hacked together the patch below to find out. Its ugly and uses the
>> boilerplate profiling code from cooker, cut and pasted here to profile
>> the actual tasks that run.
>>
>> I've yet to look at the results but it should allow us to optimise the
>> python tasks a bit if we can see where they spend time. I'm hoping this
>> lets others look at that too and also it give us some hints as to how we
>> might improve the core when turning on profiling in bitbake.
> 
> For eglibc this worked out as:
> 
> Tue Feb  1 00:33:21 2011    profile-eglibc_2.12.bb-do_package.log
> 
>          8339733 function calls (8001600 primitive calls) in 877.972 CPU seconds
> 
>    Ordered by: internal time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>      3206  321.887    0.100  322.422    0.101 package_do_filedeps:12(process_deps)
>       403  311.208    0.772  311.208    0.772 {posix.waitpid}
>    134054   69.860    0.001   69.860    0.001 {method 'read' of 'file' objects}
>    225554   23.367    0.000   23.367    0.000 {posix.stat}
>       866   20.279    0.023   20.279    0.023 {posix.system}
>     85562   19.406    0.000   19.406    0.000 {posix.chmod}
>    168083   16.691    0.000   16.691    0.000 {posix.lstat}
>     25824   14.399    0.001   14.399    0.001 {posix.rename}
>     55391   13.731    0.000   13.731    0.000 {open}
>      5325    9.019    0.002    9.019    0.002 {posix.popen}
>      2279    5.490    0.002    5.490    0.002 {method 'readlines' of 'file' objects}
>      6403    5.187    0.001    6.346    0.001 insane.bbclass:1(package_qa_hash_style)
>     19214    5.046    0.000    5.046    0.000 {posix.mkdir}
> 
> so its spending a third of the time in package_do_filedeps(), a lot of
> which is in waitpid waiting for the process that was spawned.
> 
> Mark: Is there a way we could batch up the information rather than go
> file by file? I'm going to look at this for other areas to improve too
> but thats obviously one worthy of attention.

The way the routine works today is via a script call perfile_rpmdeps.sh.  The
package.bbclass calls this script twice for each package-split.

I.e. if we have base, base-dbg and base-libs, it will run for a total of 6
times.  Each pair it is simply passed the path to the packages-split directory.

Within the script itself, it is doing a find operation:

        find "$@" | process $process_type

The output of the file is passed to "process" which is just a wrapper that calls
the rpmdeps program with the correct parameters.  We could optimize this a bit
by ignoring directories and symlinks.  But we still want to process all of the
files in the system.

Another optimization (that we do NOT have) that is done by default in RPM, is to
only process files that are +x.  We have chosen not to do this as most of our
libraries are not set +x.  An alternative is to use 'file' and check the type of
each file, however identifying the file type is likely to take longer then
simply running the per-file deps commands.  Another possible optimization is
only scan certain directories (or the opposite, skip certain directories...) the
only issue here is missing files that may be dlopened or loaded via RPATH
because they are in a non-standard location.

So what I'd recommend is we start by adding "-type f" to the find.  That is
likely to help some.

Maybe then add a check for either sitting in /lib or /usr/lib _or_ mode is +x?
We would likely need to audit the system somehow and tag ELF files that are
neither...

--Mark

> Cheers,
> 
> Richard
> 


