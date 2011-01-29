Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F03A4C8006D
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 07:28:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0TDUNqn031310; Sat, 29 Jan 2011 13:30:23 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id l85KJz5-pqFp; Sat, 29 Jan 2011 13:30:23 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0TDUH9f031306
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 29 Jan 2011 13:30:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1296208216.git.lianhao.lu@intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
Date: Sat, 29 Jan 2011 13:28:07 +0000
Message-ID: <1296307687.13501.4152.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] [BUG# 227] rpm/deb support for meta-toolchain.
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
X-List-Received-Date: Sat, 29 Jan 2011 13:28:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 18:01 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> The purpose of this series of patches is to add rpm/deb support in meta-toolchain creation,
> and also to fix bug #227.
> 
> It makes the task populate_sdk in meta/recipes-core/meta/meta-toolchain.bb more generic
> to support installing packages from ipk, rpm, and deb files in creating meta-toolchain 
> tarball, and move the populate_sdk task out of meta-toolchain.bb recipe into a bbclass.
> 
> It added populate_sdk_xxx.bbclass for different package file format.
> 
> Since there are quite many code duplication between relevant popuplage_sdk_xxx and rootfs_xxx 
> bbclasses, it also moved the common code into the package_xxx.bbclass, based on RP's suggestion. 
> The generic function package_install_internal_xxx() may installs a list of packages, based on the
> information specified by various shell environment variables about where the target directory to
> be installed to, package architecture information, etc.
> 
> It also fixed a bug in cross-canadian.bbclass to enable the package_deb.bbclass generate correct
> deb package files for cross-canadian recipies.

These patches are good, if you have time could you:

a) rebase these patches against the merged rpm changes from Mark Hatle 
   from the rpm update to 5.4

b) Try hard to split out any logical changes you can from the bigger
patches into specific steps. For example, enhancing the log_check
function and moving those around could be a separate commit.

The idea is to make changes in clear logical steps where at all possible
so anyone reviewing the changes (such as Saul, Mark and myself) can then
more quickly "see" the changes are correct and also, if there are
problems, we can bisect the commits to track down which change the
problem is from.

Cheers,

Richard




