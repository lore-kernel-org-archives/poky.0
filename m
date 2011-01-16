Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80D294C8086E
	for <poky@lists.pokylinux.org>; Sun, 16 Jan 2011 06:30:12 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 455FC1660388; Sun, 16 Jan 2011 05:30:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id CF4391660356;
	Sun, 16 Jan 2011 05:30:10 -0700 (MST)
Message-ID: <4D32E4D2.5030002@mlbassoc.com>
Date: Sun, 16 Jan 2011 05:30:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Kernel firmware?
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
X-List-Received-Date: Sun, 16 Jan 2011 12:30:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to get various USB WiFi dongles working on my
BeagleBoard (or look-alike).  Many of these require runtime
downloads of firmware.  However, these files don't seem to
be installed in Poky:
   phy1 -> rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
   rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
   phy1 -> rt2x00lib_request_firmware: Error - Failed to request Firmware.

Is there some way to enable this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

