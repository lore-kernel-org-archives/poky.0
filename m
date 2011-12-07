Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2553E0030C
	for <poky@yoctoproject.org>; Wed,  7 Dec 2011 07:54:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DBB70F811F6; Wed,  7 Dec 2011 08:54:09 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 102ADF811F0;
	Wed,  7 Dec 2011 08:53:47 -0700 (MST)
Message-ID: <4EDF8C0A.3020301@mlbassoc.com>
Date: Wed, 07 Dec 2011 08:53:46 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <4EDCFB28.9010402@mlbassoc.com>
	<CA+M6bX=gB2sUq9N-GXOxpgTHeR_Rp1mFvcvE85ZpAvnhf5dwfg@mail.gmail.com>
In-Reply-To: <CA+M6bX=gB2sUq9N-GXOxpgTHeR_Rp1mFvcvE85ZpAvnhf5dwfg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build glib-2.0
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
X-List-Received-Date: Wed, 07 Dec 2011 15:54:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-12-05 12:47, Tom Rini wrote:
> On Mon, Dec 5, 2011 at 10:11 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> OE Build Configuration:
>> BB_VERSION        = "1.15.0"
>> TARGET_ARCH       = "arm"
>> TARGET_OS         = "linux-gnueabi"
>> MACHINE           = "cobra3530p60"
>> DISTRO            = "amltd"
>> DISTRO_VERSION    = "1.1+snapshot-20111205"
>> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
>> TARGET_FPU        = "vfp-neon"
>> meta
>> meta-yocto        = "master:e5b9ac3b71b6c16fb9a629f12e4d83103db2d5b0"
>>   ...
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
>> ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
>> | ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> |
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/run.do_install.8610:
>> line 96: oe_runmake: command not found
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed
>>
>
> Have you made any changes recently?  Often this is a mismatch ', `, "
> or similar somewhere.
>

No local changes, it just wasn't working.  I updated master (again) to
   meta
   meta-yocto        = "master:f17e0ae38b2e6c4cbe7f0f9d76c3e1a386335fd1"
and now it builds.  Don't know what the problem was, but I'm happy with
it working once again.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

