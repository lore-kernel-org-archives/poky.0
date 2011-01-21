Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E5364C81065
	for <poky@lists.pokylinux.org>; Fri, 21 Jan 2011 08:11:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LEDaBW005454; Fri, 21 Jan 2011 14:13:37 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id NgtMSgKT2aSY; Fri, 21 Jan 2011 14:13:36 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0LECQ8L005412
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 21 Jan 2011 14:12:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D3850B3.2030100@mlbassoc.com>
References: <4D3850B3.2030100@mlbassoc.com>
Date: Fri, 21 Jan 2011 14:10:24 +0000
Message-ID: <1295619024.14388.30678.camel@rex>
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
X-List-Received-Date: Fri, 21 Jan 2011 14:11:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-20 at 08:11 -0700, Gary Thomas wrote:
> My target platform/distro uses IPK and I have a local kernel
> recipe which is based on the pre linux-yocto recipe that was
> used by Poky.  When I build & package the kernel, I have
> terrible performance - this is new, it used to be just fine.
> 
> Here's what I mean.  Building for my kernel and timing the
> various steps, e.g.
>    % time bitbake virtual/kernel -c compile
> 
> My kernel:
>    compile            1m49s
>    deploy             0m16s
>    populate_sysroot   0m38s
>    package           23m20s
> 
> Just to compare, using OTS Poky for BeagleBoard:
>    compile            5m07s
>    deploy             0m36s
>    populate_sysroot   0m29s
>    package            5m02s
> 
> That's a five-fold difference in the time to build & package
> the kernel.

This is a serious and worrying number. I just tried a test where I ran:

bitbake virtual/kernel -c package | ../predate.sh 

where predate.sh contains:

#!/bin/bash
while read line ; do
    echo "$(date): ${line}"
done

and I added a bb.error to the package functions interation loop in
package.bbclass.

I saw:

Fri Jan 21 13:58:00 GMT 2011: NOTE: Running task 667 of 667 (ID: 14, /media/build2/builds/rptest/meta/recipes-kernel/linux/linux-yocto_git.bb, do_package)
Fri Jan 21 13:58:00 GMT 2011: NOTE: package linux-yocto-2.6.37+git0+e3895db37bd65ea97e59b70ea936c84b398d3f3e_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_package: Started
Fri Jan 21 13:58:00 GMT 2011: ERROR: Running perform_packagecopy
Fri Jan 21 13:58:02 GMT 2011: ERROR: Running package_do_split_locales
Fri Jan 21 13:58:02 GMT 2011: ERROR: Running populate_packages
Fri Jan 21 13:58:02 GMT 2011: WARNING: <string>:5: RuntimeWarning: tmpnam is a potential security risk to your program
Fri Jan 21 13:58:02 GMT 2011: 
Fri Jan 21 13:58:18 GMT 2011: ERROR: Running package_do_filedeps
Fri Jan 21 13:59:08 GMT 2011: ERROR: Running package_do_shlibs
Fri Jan 21 13:59:10 GMT 2011: ERROR: Running package_do_pkgconfig
Fri Jan 21 13:59:10 GMT 2011: ERROR: Running read_shlibdeps
Fri Jan 21 13:59:11 GMT 2011: ERROR: Running package_depchains
Fri Jan 21 13:59:11 GMT 2011: ERROR: Running emit_pkgdata
Fri Jan 21 13:59:11 GMT 2011: ERROR: Running do_package_qa
Fri Jan 21 14:00:42 GMT 2011: NOTE: package linux-yocto-2.6.37+git0+e3895db37bd65ea97e59b70ea936c84b398d3f3e_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_package: Succeeded
Fri Jan 21 14:00:42 GMT 2011: NOTE: Tasks Summary: Attempted 667 tasks of which 615 didn't need to be rerun and 0 failed.

so it did this in 2.6 minutes which doesn't seem unreasonable.

Are you seeing the slow package step in current master and when you made
the timings above, were they the only task running or were there others
active too?

Cheers,

Richard


