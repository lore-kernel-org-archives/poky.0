Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 538B04C80FA5
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 10:40:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGgONu006804; Mon, 31 Jan 2011 16:42:25 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id J6xdMPSi5pDV; Mon, 31 Jan 2011 16:42:24 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGgJam006801
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 16:42:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
Date: Mon, 31 Jan 2011 16:40:09 +0000
Message-ID: <1296492009.13501.13668.camel@rex>
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
X-List-Received-Date: Mon, 31 Jan 2011 16:40:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 23:24 +0800, Lu, Lianhao wrote:
> Lu, Lianhao wrote on 2011-01-30:
> > Tian, Kevin wrote on 2011-01-30:
> > Here is what I found using the master with the latest commit 
> > ffd12fc476d6061ba1e019a1e789cf1a2d3c82e6.
> > 
> > 1. set PACKAGE_CLASSES to "package_rpm package_ipk" and target machine 
> > to "qemumips" in conf/local.conf 2. bitbake poky-image-minimal from 
> > scratch, then bitbake meta-toolchain incrementally. Both got built successfully.
> > 3. set PACKAGE_CLASSES to "package_ipk package_rpm"
> > 4. bitbake poky-image-minimal incrementally, and it succeeded.
> > 5. bitbake meta-toolchain incrementally, it failed complaining about 
> > unsatisfied dependencies to eglibc during opkg installation. See 
> > attached file "log.do_populate_sdk" for details. This failure is then reproducible every time.
> > 6. set PACKAGE_CLASSES back to "package_rpm package_ipk"
> > 7. bitbake poky-image-minimal incrementally, it failed complaining 
> > about unsatisfied dependencies to eglibc during rpm installation. See 
> > attached file "log.do_rootfs" for details. This failure is then reproducible every time.
> > 
> 
> Just as Richard said, we've confirmed that this issue was caused by a
> race problem. We saw this issue because the libgcc's
> do_package_write_xxx task got executed before the eglibc's do_pacakge
> task finished. This problem might be there for some time, but somehow
> it was not exposed until the recent commit of adding a non stamp task
> do_populate_lic.(see the email chain named after "summary about recent
> do_populate_sdk failures" for details).  We should add dependency so
> that the task package_write_xxx of libgcc and libstdc++ is dependent
> upon "virtual/libc:do_package". 
> 
> Is there any package other than libgcc and gcc-runtime have such race
> problem with libc? I think many packages are implicitly dependent on
> virtual/libc, how those packages do_package_write_xxx's dependency
> upon libc's do_package get assured?

debian.bbclass ensures that things don't package until all a package's
dependencies have packaged:

do_package_write_ipk[rdeptask] = "do_package"
do_package_write_deb[rdeptask] = "do_package"
do_package_write_tar[rdeptask] = "do_package"
do_package_write_rpm[rdeptask] = "do_package"

This doesn't work in the special case of libgcc and libc since the cross
compiler bootstrap process confuses the dependency issues a lot. We need
to inject some manual dependencies at that point. We could probably even
make it RDEPENDS on libc but at this point I'm going to manually create
these dependencies to be safe and make the code clearer:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=21f2dae46b481dbf34f6874ae814dcd23fc86d54

Cheers,

Richard


