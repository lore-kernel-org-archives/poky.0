Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19C8D4C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 08:41:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDcP6R018685;
	Tue, 15 Mar 2011 13:38:25 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18570-03; Tue, 15 Mar 2011 13:38:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDcF58018679
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 13:38:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gerard van den Bosch <gerard@de-haardt.com>
In-Reply-To: <4D7F4630.3030705@de-haardt.com>
References: <4D7F4630.3030705@de-haardt.com>
Date: Tue, 15 Mar 2011 13:38:06 +0000
Message-ID: <1300196286.30423.1726.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: compile application header file missing
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
X-List-Received-Date: Tue, 15 Mar 2011 13:41:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 11:57 +0100, Gerard van den Bosch wrote:
> Hello,
> 
> I have programmed an application that uses the OpenSLP library and thus 
> needs the header file from it.
> OpenSLP is already compiled and running fine on the target.
> 
> But when I try to compile my application it can't find the header file.
> When I print out the CFLAGS with bitbake myimage -e | grep CFLAGS the 
> BUILD_CFLAGS point to:
> /home/gerard/green-3.3/build/tmp/sysroots/i686-linux/usr/include
> The slp.h is indeed missing, but it is located at:
> /home/gerard/green-3.3/build/tmp/sysroots/armv7a-poky-linux-gnueabi/usr/include
> 
> How can I change the CFLAGS to look in the other folder or force OpenSLP 
> to drop it in the i686 folder?
> 
> I have added OpenSLP to my DEPENDS in the recipe, also tried RDEPENDS 
> but it didn't solve the problem.

You should be adding OpenSLP to DEPENDS. The toolchain should be
automatically searching the arm sysroot /usr/include directory for
include files which is where your file is.

I appreciate this is the green release, in master we have this in
meta/conf/bitbake.conf:

TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"

export CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"

Back in green, this option should be being hardcoded into gcc as the
default sysroot option but you could try explicitly setting it.

Note that BUILD_CFLAGS is the wrong place to look, those are for native
build tools, not target ones. You want to use TARGET_CFLAGS and
TARGET_CFLAGS should be the same as CFLAGS.

After reading the above, if your image *is* using BUILD_CFLAGS and
BUILD_CC instead of CC, that is your real problem, it should be using
the target device compiler, not the build one.

Cheers,

Richard


