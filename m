Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 797984C8109B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:28:34 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3D2061660315; Mon, 17 Jan 2011 06:28:29 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 964A2166030E;
	Mon, 17 Jan 2011 06:28:28 -0700 (MST)
Message-ID: <4D3443FC.5060201@mlbassoc.com>
Date: Mon, 17 Jan 2011 06:28:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4D32E4D2.5030002@mlbassoc.com>	 <1295256226.2321.1.camel@scimitar>
	<4D343BB7.4050404@mlbassoc.com> <1295269851.6501.2.camel@scimitar>
In-Reply-To: <1295269851.6501.2.camel@scimitar>
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
X-List-Received-Date: Mon, 17 Jan 2011 13:28:34 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/17/2011 06:10 AM, Joshua Lock wrote:
> On Mon, 2011-01-17 at 05:53 -0700, Gary Thomas wrote:
>> On 01/17/2011 02:23 AM, Joshua Lock wrote:
>>> Hi Gary,
>>>
>>> On Sun, 2011-01-16 at 05:30 -0700, Gary Thomas wrote:
>>>> I'm trying to get various USB WiFi dongles working on my
>>>> BeagleBoard (or look-alike).  Many of these require runtime
>>>> downloads of firmware.  However, these files don't seem to
>>>> be installed in Poky:
>>>>      phy1 ->   rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
>>>>      rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
>>>>      phy1 ->   rt2x00lib_request_firmware: Error - Failed to request Firmware.
>>>>
>>>> Is there some way to enable this?
>>>
>>> There's a linux-firmware recipe
>>> (meta/recipes-kernel/linux-firmware/linux-firmware_git.bb) which you'll
>>> have to modify to package the required firmware (at the moment we only
>>> package firmware for the Libertas sd8686) and ensure that the packages
>>> are included in your images.
>>
>> I don't see anywhere that linux-firmware-sd8686 is included in
>> an image.  Am I missing something?
>
> You need to have something pull in the required linux-firmware, for
> example the igep0020 and igep0030 machines add linux-firmware-sd8686 to
> the MACHINE_EXTRA_RRECOMMENDS.

Thanks.  Doing it this way wasn't totally clear from "ensure that the
packages are included in your images."

It's working now.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

