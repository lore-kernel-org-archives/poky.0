Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40EB84C8004D
	for <poky@lists.pokylinux.org>; Wed, 23 Feb 2011 17:57:26 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NNvLPR020693;
	Wed, 23 Feb 2011 23:57:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20504-03; Wed, 23 Feb 2011 23:57:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NNvBBL020687
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 23 Feb 2011 23:57:14 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D652570.1030409@mlbassoc.com>
References: <4D652570.1030409@mlbassoc.com>
Date: Wed, 23 Feb 2011 23:57:04 +0000
Message-ID: <1298505424.26736.75.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: git and BB_NO_NETWORK
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
X-List-Received-Date: Wed, 23 Feb 2011 23:57:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-23 at 08:19 -0700, Gary Thomas wrote:
> This is related to bug #752
> 
> Richard has made some changes which nearly fixes that bug, except
> for the mtd-utils_1.4.1.bb recipe.  The problem with this recipe
> is that it specifies a git tag, not a fixed revision.  The fetcher
> fails in this case as it has to interrogate the git tree to find
> the tag and that's not allowed because of BB_NO_NETWORK=1
> 
> I tried to move this to a fixed revision which corresponds to tag v1.4.1
> like this:
> 
> diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
> index 5e6db0e..2c4e276 100644
> --- a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
> +++ b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
> @@ -6,11 +6,12 @@ LICENSE = "GPLv2+"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>                       file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
> 
> -SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=v${PV} \
> +SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git \
>                  file://add-exclusion-to-mkfs-jffs2-git-2.patch;patch=1"
> 
>   S = "${WORKDIR}/git/"
> 
> +PV = "1.4.1${SRCPV}"
>   PR = "r1"
> 
>   EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
> 
> I also added this to my fixed-revisions.inc
> SRCREV_pn-mtd-utils ??= "3c3674a6e1d3f59554b0ff68ca59be2fd4134e0c"
> 
> Finally, I had to move recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
> to recipes-devtools/mtd/mtd-utils or else it could not be found.
> 
> Is there an easier way to solve these issues?  Once I understand the whole process, I can
> propose a patch.

I think these issues were discussed and resolved in the bugzilla?

http://bugzilla.pokylinux.org/show_bug.cgi?id=752

In future please try and keep the discussions in one place, not both, or
state on the bugzilla you're moving it to email.

Cheers,

Richard



