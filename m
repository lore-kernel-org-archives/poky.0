Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86685E0140C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 07:49:19 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-63-53.range86-170.btcentralplus.com
	[86.170.63.53]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 004AF9C07
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 15:49:17 +0100 (BST)
Message-ID: <4FD756ED.8020308@r-finger.com>
Date: Tue, 12 Jun 2012 15:49:17 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FD753B2.9060705@yahoo.fr>
In-Reply-To: <4FD753B2.9060705@yahoo.fr>
Subject: Re: Running script after installation (postinst)
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
X-List-Received-Date: Tue, 12 Jun 2012 14:49:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

On 12/06/12 15:35, Patrick wrote:
> In one of our recipes we need to execute a small script after the
> installation of the package. Following yocto dev manual point 4.3.6 we
> have added a pkg_postinst function.
> 
> This doesn’t work properly as the script is executed at first start-up
> and not after installation. Below are an example of this recipe.
> 
> Do you have any idea why this script is started as first boot time and
> not after installation ?

It will be run both times (often postinst scripts have to be run on the
actual HW). You can chose when your code takes effect by testing the $D
variable; when it is set, your script is being run during the rootfs
creation, when it is unset, it is being run on the first boot. There are
many examples of this in the Yocto recipes.

Your particular script will not work as is at rootfs time, since it is
trying to modify '/etc', which at that point is the host /etc directory.

Tomas

