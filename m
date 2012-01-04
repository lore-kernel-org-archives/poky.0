Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D04E01366
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 03:59:22 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7A37FF81225; Wed,  4 Jan 2012 04:59:20 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 470C5F81223;
	Wed,  4 Jan 2012 04:59:18 -0700 (MST)
Message-ID: <4F043F16.7000507@mlbassoc.com>
Date: Wed, 04 Jan 2012 04:59:18 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F035C93.2020602@mlbassoc.com>
	<20120104061238.GM31275@sakrah.homelinux.org>
In-Reply-To: <20120104061238.GM31275@sakrah.homelinux.org>
Subject: Re: Can't build webkit-gtk
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
X-List-Received-Date: Wed, 04 Jan 2012 11:59:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-03 23:12, Khem Raj wrote:
> On (03/01/12 12:52), Gary Thomas wrote:
>> Using today's master:
>> OE Build Configuration:
>> BB_VERSION        = "1.15.0"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "beagleboard"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.1+snapshot-20120103"
>> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"
>>
>> Build of webkit-gtk fails:
>>
>> Logfile attached.
>>
>> checking for glib-compile-schemas... /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/glib-compile-schemas
>> checking which Unicode backend to use... icu
>> checking for icu-config... /home/local/bb_test2/tmp/sysroots/beagleboard/usr/bin/crossscripts/icu-config
>> checking for ZLIB... yes
>> checking for LIBXML... yes
>> checking for PANGO... yes
>> checking whether to enable spellcheck support... yes
>> checking for ENCHANT... yes
>> checking for GAIL... yes
>> checking for CAIRO... yes
>> checking for GTK... yes
>> checking for XT... yes
>> checking whether to do a debug build... no
>> checking whether to enable optimized builds... yes
>> checking whether to enable support for 3D Rendering... no
>> checking whether to enable WebGL support... yes
>> checking GL/gl.h usability... no
>> checking GL/gl.h presence... no
>> checking for GL/gl.h... no
>> configure: error: OpenGL header not found
>> ERROR: oe_runconf failed
>
> may be add "virtual/libgl" to DEPENDS ?

Has something changed?  This used to build just fine...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

