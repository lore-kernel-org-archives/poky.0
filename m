Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id D00A74C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:11:01 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 298CB12EC1FE;
	Mon, 17 Jan 2011 07:51:29 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D343BB7.4050404@mlbassoc.com>
References: <4D32E4D2.5030002@mlbassoc.com>
	<1295256226.2321.1.camel@scimitar>  <4D343BB7.4050404@mlbassoc.com>
Date: Mon, 17 Jan 2011 13:10:51 +0000
Message-ID: <1295269851.6501.2.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 17 Jan 2011 13:11:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-17 at 05:53 -0700, Gary Thomas wrote:
> On 01/17/2011 02:23 AM, Joshua Lock wrote:
> > Hi Gary,
> >
> > On Sun, 2011-01-16 at 05:30 -0700, Gary Thomas wrote:
> >> I'm trying to get various USB WiFi dongles working on my
> >> BeagleBoard (or look-alike).  Many of these require runtime
> >> downloads of firmware.  However, these files don't seem to
> >> be installed in Poky:
> >>     phy1 ->  rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
> >>     rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
> >>     phy1 ->  rt2x00lib_request_firmware: Error - Failed to request Firmware.
> >>
> >> Is there some way to enable this?
> >
> > There's a linux-firmware recipe
> > (meta/recipes-kernel/linux-firmware/linux-firmware_git.bb) which you'll
> > have to modify to package the required firmware (at the moment we only
> > package firmware for the Libertas sd8686) and ensure that the packages
> > are included in your images.
> 
> I don't see anywhere that linux-firmware-sd8686 is included in
> an image.  Am I missing something?

You need to have something pull in the required linux-firmware, for
example the igep0020 and igep0030 machines add linux-firmware-sd8686 to
the MACHINE_EXTRA_RRECOMMENDS.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


