Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 008EB4C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 06:53:12 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5817D1660392; Mon, 17 Jan 2011 05:53:12 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2383316602D5;
	Mon, 17 Jan 2011 05:53:11 -0700 (MST)
Message-ID: <4D343BB7.4050404@mlbassoc.com>
Date: Mon, 17 Jan 2011 05:53:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4D32E4D2.5030002@mlbassoc.com> <1295256226.2321.1.camel@scimitar>
In-Reply-To: <1295256226.2321.1.camel@scimitar>
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
X-List-Received-Date: Mon, 17 Jan 2011 12:53:13 -0000
X-Groupsio-MsgNum: 2353
Content-Type: multipart/mixed; boundary="------------070407030200080605000606"

--------------070407030200080605000606
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 02:23 AM, Joshua Lock wrote:
> Hi Gary,
>
> On Sun, 2011-01-16 at 05:30 -0700, Gary Thomas wrote:
>> I'm trying to get various USB WiFi dongles working on my
>> BeagleBoard (or look-alike).  Many of these require runtime
>> downloads of firmware.  However, these files don't seem to
>> be installed in Poky:
>>     phy1 ->  rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
>>     rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
>>     phy1 ->  rt2x00lib_request_firmware: Error - Failed to request Firmware.
>>
>> Is there some way to enable this?
>
> There's a linux-firmware recipe
> (meta/recipes-kernel/linux-firmware/linux-firmware_git.bb) which you'll
> have to modify to package the required firmware (at the moment we only
> package firmware for the Libertas sd8686) and ensure that the packages
> are included in your images.

I don't see anywhere that linux-firmware-sd8686 is included in
an image.  Am I missing something?

I tried to add the module I need using a .bbappend file (attached).
It doesn't seem to be processed though - any ideas why?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------070407030200080605000606
Content-Type: text/plain;
 name="linux-firmware_git.bbappend"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="linux-firmware_git.bbappend"

#DESCRIPTION = "Firmware files for use with Linux kernel"
#SECTION = "kernel"
#LICENSE = "Proprietary"

PV = "0.0+git${SRCPV}"

#
# Additional firmware modules 
#

#---------------------------------------------------------------------------------------
# LinkSys
#
LICENSE_${PN}-rt73 = "Firmware:LICENCE.rtlwifi_firmware.txt"
PROVIDES += "linux-firmware-rt73"

do_install_append() {
	install -d  ${D}/lib/firmware/
	# LinkSys via rt73
	install -m 0666 rt73.bin ${D}/lib/firmware
	install -m 0666 LICENCE.rtlwifi_firmware.txt ${D}/lib/firmware/
}

PACKAGES = "${PN}-rt73"
FILES_${PN}-rt73 = "/lib/firmware/rt73.bin /lib/firmware/LICENCE.rtlwifi_firmware.txt"
RPROVIDES_${PN}-rt73 = "${PN}-rt73"
#---------------------------------------------------------------------------------------


--------------070407030200080605000606--
