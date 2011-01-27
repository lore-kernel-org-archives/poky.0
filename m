Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1204C4C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 16:04:10 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RM67sr023126; Thu, 27 Jan 2011 22:06:08 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VwuFKPMhGMXN; Thu, 27 Jan 2011 22:06:07 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RM60E9023122
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 22:06:02 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
Date: Thu, 27 Jan 2011 22:03:36 +0000
Message-ID: <1296165816.27814.8796.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] Added rpm support in meta-toolchain
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
X-List-Received-Date: Thu, 27 Jan 2011 22:04:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Lianhao,

On Thu, 2011-01-27 at 10:51 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> The purpose of this series of patches is to add rpm support in meta-toolchain creation,
> and also to fix bug #227.
> 
> It makes the task populate_sdk in meta/recipes-core/meta/meta-toolchain.bb more generic
> to support installing packages from ipk, rpm, and deb files in creating meta-toolchain 
> tarball, and move the populate_sdk task out of meta-toolchain.bb recipe into a bbclass.
> 
> It added populate_sdk_xxx.bbclass for different package file format.
> 
> The meta-toolchain installing process involes 2 set of packages, one is the host sdk 
> set which contains packages of applications(e.g. cross-canadian compilers, qemu, etc.) and 
> relevant run-time libraries, the other is the target sdk set which contains packages of target
> arch's libraries and header files to create a target rootfs for cross compiling purpose.So
> the patches also modifes and/or adds functions in package_deb.bbclass & package_rpm.bbclass 
> to update the package index and to generate different installing configuration files for the 
> tow different sets.
> 
> It also fixed a bug in cross-canadian.bbclass to enable the package_deb.bbclass generate correct
> deb package files for cross-canadian recipies.

Its great to see this but I think we need to restructure the code a
little more aggressively and create some general functions to complete
this properly.

What I mean is that both rootfs_ipk and populate_sdk_ipk share code,
rootfs_deb and populate_sdk_deb share code and likewise for rpm.

What we need is a generic function where we specify where the target
directory is and a list of packages we want to install along with some
architecture information and it then goes and does it. Those functions
would like in package_xxx.bbclass. We should do similar things well in
one place rather than in two with slightly different implementations.

Do you agree?

Cheers,

Richard




