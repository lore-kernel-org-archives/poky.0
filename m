Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B68F14C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 02:02:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I72H9a009362;
	Mon, 18 Apr 2011 08:02:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08813-10; Mon, 18 Apr 2011 08:02:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I72CZe009356
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 08:02:12 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Akshat Saha <akshat.embedded@gmail.com>
In-Reply-To: <BANLkTimC2=uXFQiy8bt8UU2Q4OzwcMGFTg@mail.gmail.com>
References: <BANLkTimC2=uXFQiy8bt8UU2Q4OzwcMGFTg@mail.gmail.com>
Date: Mon, 18 Apr 2011 08:02:05 +0100
Message-ID: <1303110125.5518.59.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Unable to get kernel modules
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
X-List-Received-Date: Mon, 18 Apr 2011 07:02:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-18 at 11:50 +0530, Akshat Saha wrote:
> Hi,
> 
> 
> I am building my image with : bitbake poky-image-minimal-live
> But after booting/installing this image, lsmod, does not show any
> modules loaded into the kernel. Also, the
> folder /lib/modules/2.6.34.7-wr-standard in the rfs does not contains
> the following files/folders:
>       * modules.builtin  
>       * modules.order
>       * kernel
> Though they are present in
> the tmp/sysroots/core2-poky-linux/lib/modules/2.6.34.7-wr-standard.
> 
> 
> Also, while building, modules-2.6.34.7-wr-standard-r12-atom-pc.tgz is
> formed in tmp/deploy/images, which consists of the above mentioned
> files/folders, but does not seem to be integrated into the image.
> 
> 
> Can anyone please suggest/guide me how to integrate loadable modules
> into the image. 

By default the minimal image doesn't include all the kernel modules. You
can add them to the minimal image by adding "kernel-modules" to
IMAGE_INSTALL in meta/recipes-core/images/poky-image-minimal.bb

Cheers,

Richard


