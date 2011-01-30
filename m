Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 054A54C8026D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 04:13:48 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0UAFlwg027166; Sun, 30 Jan 2011 10:15:47 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id g-Ibs2VPv5dM; Sun, 30 Jan 2011 10:15:47 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0UAFeFQ027150
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sun, 30 Jan 2011 10:15:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
Date: Sun, 30 Jan 2011 10:13:26 +0000
Message-ID: <1296382406.13501.7899.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Sun, 30 Jan 2011 10:13:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-29 at 17:33 -0800, Zhang, Jessica wrote:
> My poky-image-sato-sdk against the latest master is consistently
> failed at last step of do_rootfs, here's the error:
>  
>  Processing task-poky-qt-demos...
> | error: Failed dependencies:
> |  eglibc >= 2.12 is needed by libstdc++6-4.5.1-r2.armv5te
> |  eglibc >= 2.12 is needed by libgcc1-4.5.1-r0.armv5te
> | Function 'do_rootfs' failed
> (see /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)
> | ERROR: Function 'do_rootfs' failed
> (see /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)
> 
> Has anybody run into same issue or any idea?

This looks like a race issue we once had. Grepping the gcc include files
revealed:

gcc-configure-cross.inc:do_package_write_ipk[depends] += "virtual/libc:do_package"

which was added to address this problem. Of course now, libgcc and
libstdc++ are built by libgcc and gcc-runtime so I think the correct
approach is to make both of these dependent on the libc packaging to
finish.

This also shouldn't be ipk specific, in the modern world we can depend
on do_package_write.

The problem is that "eglibc" gets renamed to libc at package time. If
the package step hasn't run, the renaming isn't applied to the
dependencies that libgcc and libstdc++ have on libc and you see this
error. If you rebuild those packages, the image should work. Since its a
race, some builds will work, some won't. Using rm_work will make this
bug more likely to appear at a guess.

Cheers,

Richard






