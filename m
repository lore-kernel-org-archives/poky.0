Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8623E4C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 03:23:54 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id A8A9212EC207
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 04:04:21 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D32E4D2.5030002@mlbassoc.com>
References: <4D32E4D2.5030002@mlbassoc.com>
Date: Mon, 17 Jan 2011 09:23:46 +0000
Message-ID: <1295256226.2321.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Kernel firmware?
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
X-List-Received-Date: Mon, 17 Jan 2011 09:23:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Gary,

On Sun, 2011-01-16 at 05:30 -0700, Gary Thomas wrote:
> I'm trying to get various USB WiFi dongles working on my
> BeagleBoard (or look-alike).  Many of these require runtime
> downloads of firmware.  However, these files don't seem to
> be installed in Poky:
>    phy1 -> rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
>    rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
>    phy1 -> rt2x00lib_request_firmware: Error - Failed to request Firmware.
> 
> Is there some way to enable this?

There's a linux-firmware recipe
(meta/recipes-kernel/linux-firmware/linux-firmware_git.bb) which you'll
have to modify to package the required firmware (at the moment we only
package firmware for the Libertas sd8686) and ensure that the packages
are included in your images.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


