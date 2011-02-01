Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E81DD4C80FA4
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:41:09 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p110h95A025374; Tue, 1 Feb 2011 00:43:09 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6QaAAbYoUcrz; Tue,  1 Feb 2011 00:43:09 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p110h1TK025370
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 00:43:03 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
In-Reply-To: <1296520080.13501.15996.camel@rex>
References: <1296520080.13501.15996.camel@rex>
Date: Tue, 01 Feb 2011 00:40:50 +0000
Message-ID: <1296520850.13501.16052.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Tue, 01 Feb 2011 00:41:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 00:28 +0000, Richard Purdie wrote:
> One thing that is bugging me whilst I've been debugging some issues
> we're having with the libc/libgcc package dependency issue is how long
> do_package takes for libc. The question is where does it spend the time?
> Answer, I have no idea.
> 
> I hacked together the patch below to find out. Its ugly and uses the
> boilerplate profiling code from cooker, cut and pasted here to profile
> the actual tasks that run.
> 
> I've yet to look at the results but it should allow us to optimise the
> python tasks a bit if we can see where they spend time. I'm hoping this
> lets others look at that too and also it give us some hints as to how we
> might improve the core when turning on profiling in bitbake.

For eglibc this worked out as:

Tue Feb  1 00:33:21 2011    profile-eglibc_2.12.bb-do_package.log

         8339733 function calls (8001600 primitive calls) in 877.972 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
     3206  321.887    0.100  322.422    0.101 package_do_filedeps:12(process_deps)
      403  311.208    0.772  311.208    0.772 {posix.waitpid}
   134054   69.860    0.001   69.860    0.001 {method 'read' of 'file' objects}
   225554   23.367    0.000   23.367    0.000 {posix.stat}
      866   20.279    0.023   20.279    0.023 {posix.system}
    85562   19.406    0.000   19.406    0.000 {posix.chmod}
   168083   16.691    0.000   16.691    0.000 {posix.lstat}
    25824   14.399    0.001   14.399    0.001 {posix.rename}
    55391   13.731    0.000   13.731    0.000 {open}
     5325    9.019    0.002    9.019    0.002 {posix.popen}
     2279    5.490    0.002    5.490    0.002 {method 'readlines' of 'file' objects}
     6403    5.187    0.001    6.346    0.001 insane.bbclass:1(package_qa_hash_style)
    19214    5.046    0.000    5.046    0.000 {posix.mkdir}

so its spending a third of the time in package_do_filedeps(), a lot of
which is in waitpid waiting for the process that was spawned.

Mark: Is there a way we could batch up the information rather than go
file by file? I'm going to look at this for other areas to improve too
but thats obviously one worthy of attention.

Cheers,

Richard


