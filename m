Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFC6D4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 08:40:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11EgTu8020492
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 14:42:29 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 43U2-iN0dwDv for <poky@yoctoproject.org>;
	Tue,  1 Feb 2011 14:42:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11EgNpW020484
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Tue, 1 Feb 2011 14:42:25 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 01 Feb 2011 14:40:09 +0000
Message-ID: <1296571209.13501.19436.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: More profiling of do_package data for the kernel
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
X-List-Received-Date: Tue, 01 Feb 2011 14:40:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

For fun I had a look at the profile output for the kernel package task.
This was the profile to start with (unpatched master):

Tue Feb  1 12:24:52 2011    profile-linux-yocto_git.bb-do_package.log

         2112128 function calls (1890268 primitive calls) in 168.598 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
      462   60.430    0.131   60.497    0.131 package_do_filedeps:12(process_deps)
    56915   49.288    0.001   49.288    0.001 {method 'read' of 'file' objects}
      235   16.455    0.070   16.455    0.070 {posix.system}
    55960    7.073    0.000    7.073    0.000 {posix.stat}
    40782    4.787    0.000    4.787    0.000 {posix.lstat}
    11128    4.394    0.000    4.394    0.000 {open}
    16697    4.099    0.000    4.099    0.000 {posix.chmod}
     4657    3.238    0.001    3.238    0.001 {posix.rename}
     1237    2.061    0.002    2.473    0.002 insane.bbclass:1(package_qa_hash_style)
     6408    1.759    0.000    1.759    0.000 {posix.mkdir}
     1568    1.539    0.001    1.539    0.001 {method 'readline' of 'file' objects}
     1030    1.471    0.001    1.471    0.001 {posix.popen}
    15379    1.267    0.000    1.267    0.000 {posix.listdir}

I then blacklisted kernel-modules-* to stop do_filedeps being called for these:

Tue Feb  1 12:27:49 2011    profile-linux-yocto_git.bb-do_package.log

         2048167 function calls (1826539 primitive calls) in 97.784 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
    56915   51.834    0.001   51.834    0.001 {method 'read' of 'file' objects}
    55958    6.682    0.000    6.682    0.000 {posix.stat}
      235    6.068    0.026    6.068    0.026 {posix.system}
    40782    4.580    0.000    4.580    0.000 {posix.lstat}
    16697    4.104    0.000    4.104    0.000 {posix.chmod}
     4657    3.055    0.001    3.055    0.001 {posix.rename}
    11128    3.035    0.000    3.035    0.000 {open}
     6406    2.072    0.000    2.072    0.000 {posix.mkdir}
    15379    2.067    0.000    2.067    0.000 {posix.listdir}
     1237    2.063    0.002    2.482    0.002 insane.bbclass:1(package_qa_hash_style)
     1568    1.477    0.001    1.477    0.001 {method 'readline' of 'file' objects}
     2790    1.013    0.000    1.013    0.000 {method 'execute' of 'sqlite3.Cursor' objects}
      568    0.887    0.002    0.887    0.002 {posix.popen}

We saved a minute or so time wise.

I the noticed we were spending all the time in the "read" method above
which actually refers to a shell task we run, which turns out to be
sstate_create_package(). I rewrote that function in python using
tarfile:

Tue Feb  1 14:33:08 2011    profile-linux-yocto_git.bb-do_package.log

         3211615 function calls (2992709 primitive calls) in 198.325 CPU seconds

   Ordered by: internal time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
    43571  148.128    0.003  148.128    0.003 {built-in method compress}
      235    5.784    0.025    5.784    0.025 {posix.system}
    54869    5.457    0.000    5.457    0.000 {posix.lstat}
    55941    5.317    0.000    5.317    0.000 {posix.stat}
    16697    3.967    0.000    3.967    0.000 {posix.chmod}
    14085    3.044    0.000    3.044    0.000 {open}
    93916    2.742    0.000    2.742    0.000 {method 'read' of 'file' objects}
     4657    2.604    0.001    2.604    0.001 {posix.rename}
    97385    1.909    0.000    1.909    0.000 {method 'write' of 'file' objects}
     1237    1.509    0.001    1.841    0.001 insane.bbclass:1(package_qa_hash_style)
    20823    1.397    0.000    1.397    0.000 {posix.listdir}
     6406    1.225    0.000    1.225    0.000 {posix.mkdir}
     1568    1.169    0.001    1.169    0.001 {method 'readline' of 'file' objects}

so calling the shell's tar is definitely more efficient!

Cheers,

Richard


