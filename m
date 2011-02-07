Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6016D4C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 10:54:51 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id DFE2116602C5; Mon,  7 Feb 2011 09:54:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 66B821660246;
	Mon,  7 Feb 2011 09:54:48 -0700 (MST)
Message-ID: <4D5023D8.7090106@mlbassoc.com>
Date: Mon, 07 Feb 2011 09:54:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D500535.3070505@mlbassoc.com> <1297094804.1350.16816.camel@rex>
	<4D501B82.4080505@mlbassoc.com> <4D501DFC.6020206@windriver.com>
In-Reply-To: <4D501DFC.6020206@windriver.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: eglibc configurability
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
X-List-Received-Date: Mon, 07 Feb 2011 16:54:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 09:29 AM, Mark Hatle wrote:
> Could you find the related init script and point me to the contents.  I don't
> see any initscripts in the eglibc integration.  The only thing I see is a switch
> in the locale generation between on target, on host and via QEMU.  I'm wondering
> if maybe this is being triggered?

This could be what I'm seeing.  I have ENABLE_BINARY_LOCALE_GENERATION disabled
in my local.conf (I had troubles with QEMU-ARM on Fedora in the past and this
was the way around it).  It looks like that may be pushing the locale compilation
to the target.  I see these scripts on my target:
-rwxr-xr-x    1 root     root           456 Feb  4 22:18 /var/lib/opkg/info/locale-base-en-gb.postinst
-rwxr-xr-x    1 root     root           456 Feb  4 22:19 /var/lib/opkg/info/locale-base-en-us.postinst

One of which looks like this:
------------------------------------------------------------------------------------------
# cat /var/lib/opkg/info/locale-base-en-gb.postinst
#!/bin/sh

if [ "x$D" != "x" ]; then
         exit 1
fi

rm -rf /tmp/locale/usr/lib/locale
mkdir -p /tmp/locale/usr/lib/locale
if [ -f /usr/lib/locale/locale-archive ]; then
         cp /usr/lib/locale/locale-archive /tmp/locale/usr/lib/locale/
fi
localedef --inputfile=/usr/share/i18n/locales/en_GB --charmap=UTF-8 --prefix=/tmp/locale en_GB
mkdir -p /usr/lib/locale/
mv /tmp/locale/usr/lib/locale/locale-archive /usr/lib/locale/
rm -rf /tmp/locale/usr/lib/locale
------------------------------------------------------------------------------------------

I'd like to use this (from libc-package.bbclass)
# Caller should set GLIBC_INTERNAL_USE_BINARY_LOCALE to one of:
#  "compile" - Use QEMU to generate the binary locale files
#  "precompiled" - The binary locale files are pregenerated and already present
#  "ondevice" - The device will build the locale files upon first boot through the postinst

If I can figure out how to make it use "precompiled", that would be the best.  Since
the default is "ondevice", this explains _what_ it's doing.

> On 2/7/11 10:19 AM, Gary Thomas wrote:
>> On 02/07/2011 09:06 AM, Richard Purdie wrote:
>>> On Mon, 2011-02-07 at 07:44 -0700, Gary Thomas wrote:
>>>> I often run small (slow) embedded systems with only a ramdisk
>>>> based file system.  When I use Poky for this, one side effect
>>>> is that some packages need to be "configured" on bootup, which
>>>> in the case of a ramdisk based operation means every time.
>>>>
>>>> I notice that the eglibc package brings in a couple of these
>>>> which are problematic (mostly in how long they take to run)
>>>> Looking at meta/conf/distro/include/poky-eglibc.inc:
>>>>
>>>> LIBC_DEPENDENCIES = "libsegfault \
>>>>                         eglibc \
>>>>                         eglibc-dbg \
>>>>                         eglibc-dev \
>>>>                         eglibc-utils \
>>>>                         eglibc-thread-db \
>>>>                         eglibc-localedata-i18n \
>>>>                         eglibc-gconv-ibm850 \
>>>>                         eglibc-gconv-cp1252 \
>>>>                         eglibc-gconv-iso8859-1 \
>>>>                         eglibc-gconv-iso8859-15 \
>>>>                         locale-base-en-us \
>>>>                         locale-base-en-gb "
>>>>
>>>> On my OMAP-L138 target, configuring locale-base-* takes
>>>> a long time, upwards of 35 seconds each.
>>>>
>>>> Are multiple locale-base packages really necessary?
>>>> How could I best (in the Poky spirit) limit this?  In the
>>>> minimum, I'd like to only have one locale, saving at least
>>>> 35 seconds of boot time.
>>>>
>>>> Ideas?  Comments?
>>>
>>> Shouldn't the cross locale generation be generating the locales at build
>>> time meaning the locales shouldn't be generated on the device?
>>
>> I'm not sure the details, I just know that it prints these
>> messages on boot:
>>     Configuring dbus-1.
>>      Adding system startup for /etc/init.d/dbus-1.
>>     Configuring locale-base-en-gb.
>>     Configuring locale-base-en-us.
>>
>> The last two are my concern since they take 35 seconds each to run.
>> It's a deeply embedded system and does not need multi-locale support
>> at any level.
>>
>> In any case, my comment was that there doesn't seem to be any way
>> to control/configure this at initial build time.  Per the previous
>> reply, I don't see how LIMIT_BUILT_LOCALES affects this at all.
>>
>>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

