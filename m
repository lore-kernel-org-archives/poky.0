Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D956E4C80050
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 11:25:51 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAHPpjM028615
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 17:25:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 28513-02 for <poky@yoctoproject.org>;
	Fri, 10 Dec 2010 17:25:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAHPhDv028609
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 17:25:44 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: poky <poky@yoctoproject.org>
Date: Fri, 10 Dec 2010 17:25:30 +0000
Message-ID: <1292001930.14420.84.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Cleanup task for bitbake.conf and Poky core cross and cross-canadian
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
X-List-Received-Date: Fri, 10 Dec 2010 17:25:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Working on the canadian task, I'm reminded that some of the core
variables are a bit of a mess. There is a roadmap in mind to try and
clean this up which is something like the following:

Split target library generation away from the toolchain (gcc-runtime) [done]
Fix cross-canadian recipes to use TARGET_ARCH in PN [done]
Fix cross recipes to use TARGET_ARCH in PN

Once these two things are done it should allow us to start using
MULTIMACH_HOST_SYS instead of MULTIMACH_TARGET_SYS for the following
core variables in bitbake.conf: STAMP, WORKDIR, PKGDATA_DIR,
STAGING_KERNEL_DIR. 

The idea is if something is built to run on arch XXX then it should live
in the XXX workdir. Currently *-cross run on the HOST/BUILD architecture
but live in the target workdir.

Once we do this I think a lot of the mangling done in cross and
cross-canadian.bbclass should be able to be removed for variables like
STAGING_DIR_TARGET, STAGING_DIR_HOST, MULTIMACH_TARGET_SYS, PKGDATA_DIR,
PKGHIST_DIR, PKG_CONFIG_DIR, PKG_CONFIG_SYSROOT_DIR.

Also of note is that if we can obtain a sysroot per target machine and
default to that model, this means parts of bitbake.conf like:

# This should really be MULTIMACH_TARGET_SYS but that breaks "all" and machine 
# specific packages - hack around it for now.
STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}"

are no longer needed.

I thought I'd at least document these things since I just touched upon
them again with the cross-canadian changes.

Cheers,

Richard


