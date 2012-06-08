Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 296FEE013BB
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 05:46:11 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-63-25.range86-170.btcentralplus.com
	[86.170.63.25]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 3662F9C07
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 13:46:10 +0100 (BST)
Message-ID: <4FD1F411.60808@r-finger.com>
Date: Fri, 08 Jun 2012 13:46:09 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4FD1F20F.6060908@mlbassoc.com>
In-Reply-To: <4FD1F20F.6060908@mlbassoc.com>
Subject: Re: RaspberryPi with Poky
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
X-List-Received-Date: Fri, 08 Jun 2012 12:46:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/06/12 13:37, Gary Thomas wrote:
> First problem: 'core-image-sato-raspberrypi.rpi-sdimg' is broken (no file)

I noticed this the the other day; on further investigation the sdimg
class in meta-raspberrypi is rather nasty, IIRC you need to set up some
stuff by hand on the build machine first and then run the build as root
as well. I am not sure there is any need for the sdimg either, you
should be able to use the tarball to extract the rootfs onto the SD card.

Tomas

