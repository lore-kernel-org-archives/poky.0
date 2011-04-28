Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C1AA4C804D4
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 16:23:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Apr 2011 14:23:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,283,1301900400"; d="scan'208";a="739890887"
Received: from vorpal.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 28 Apr 2011 14:23:01 -0700
From: Joshua Lock <josh@linux.intel.com>
To: C Michael Sundius <msundius@sundius.com>
In-Reply-To: <BANLkTi=FVHHE0+HjkhbRKy-z173cJGghog@mail.gmail.com>
References: <BANLkTi=FVHHE0+HjkhbRKy-z173cJGghog@mail.gmail.com>
Date: Thu, 28 Apr 2011 14:18:57 -0700
Message-ID: <1304025537.2171.426.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: poky@yoctoproject.org
Subject: Re: building images
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
X-List-Received-Date: Thu, 28 Apr 2011 21:23:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Michael,

On Wed, 2011-04-27 at 11:40 -0700, C Michael Sundius wrote:
> I'm wondering if when bitbake builds an image, that is to say if all
> the necessary package recipes have already been completely built, if
> just when creating the image, does bitbake make use of the
> staging/sysroot directory at all? or does it only install packages and
> run some scripts for pre and post processing of the image?.... 

There was some work to support this, you can see the
BUILD_IMAGES_FROM_FEEDS variable used in the rootfs_ipk.bbclass and
rootfs_rpm.bbclass.

I'm not sure how tested this is but the basics of the infrastructure is
there. There's even a graphical tool (puccho, run with 'bitbake -u
puccho') that was developed to provide a UI to the BUILD_FROM_FEEDS
infrastructure.

Once again, not my code but sounds like we have at least a start to the
functionality you're looking for.

<snip>

> My problem is that some of our customers will not adopt OE for
> developing applications. (I think they should, but we just can't
> guarantee that they will, nor do I think we should force them). 
> 
> 
> If we provide:
> 
> 
> 1) an SDK that includes:
> - all of our interfaces,
> - all of our utilities and branding info
> - the tool chain,
> - some or all the other native utilities (or maybe just take chances
> that the build host is not Fedora Core 3!)

You can easily build your customers a "native-tools" tarball, look at
the meta/recipes-core/meta/external-python-tarball.bb recipe for how
Richard enabled users without Python 2.6 to use Poky.

Hope this helps,
Joshua

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


