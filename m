Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AAFAB4C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 10:30:42 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p17GTooq017616;
	Mon, 7 Feb 2011 08:29:50 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 7 Feb 2011 08:29:50 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 7 Feb 2011 08:29:49 -0800
Message-ID: <4D501DFC.6020206@windriver.com>
Date: Mon, 07 Feb 2011 10:29:48 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D500535.3070505@mlbassoc.com> <1297094804.1350.16816.camel@rex>
	<4D501B82.4080505@mlbassoc.com>
In-Reply-To: <4D501B82.4080505@mlbassoc.com>
X-OriginalArrivalTime: 07 Feb 2011 16:29:49.0680 (UTC)
	FILETIME=[3D7F7F00:01CBC6E4]
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
X-List-Received-Date: Mon, 07 Feb 2011 16:30:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Could you find the related init script and point me to the contents.  I don't
see any initscripts in the eglibc integration.  The only thing I see is a switch
in the locale generation between on target, on host and via QEMU.  I'm wondering
if maybe this is being triggered?

--Mark

On 2/7/11 10:19 AM, Gary Thomas wrote:
> On 02/07/2011 09:06 AM, Richard Purdie wrote:
>> On Mon, 2011-02-07 at 07:44 -0700, Gary Thomas wrote:
>>> I often run small (slow) embedded systems with only a ramdisk
>>> based file system.  When I use Poky for this, one side effect
>>> is that some packages need to be "configured" on bootup, which
>>> in the case of a ramdisk based operation means every time.
>>>
>>> I notice that the eglibc package brings in a couple of these
>>> which are problematic (mostly in how long they take to run)
>>> Looking at meta/conf/distro/include/poky-eglibc.inc:
>>>
>>> LIBC_DEPENDENCIES = "libsegfault \
>>>                        eglibc \
>>>                        eglibc-dbg \
>>>                        eglibc-dev \
>>>                        eglibc-utils \
>>>                        eglibc-thread-db \
>>>                        eglibc-localedata-i18n \
>>>                        eglibc-gconv-ibm850 \
>>>                        eglibc-gconv-cp1252 \
>>>                        eglibc-gconv-iso8859-1 \
>>>                        eglibc-gconv-iso8859-15 \
>>>                        locale-base-en-us \
>>>                        locale-base-en-gb "
>>>
>>> On my OMAP-L138 target, configuring locale-base-* takes
>>> a long time, upwards of 35 seconds each.
>>>
>>> Are multiple locale-base packages really necessary?
>>> How could I best (in the Poky spirit) limit this?  In the
>>> minimum, I'd like to only have one locale, saving at least
>>> 35 seconds of boot time.
>>>
>>> Ideas?  Comments?
>>
>> Shouldn't the cross locale generation be generating the locales at build
>> time meaning the locales shouldn't be generated on the device?
> 
> I'm not sure the details, I just know that it prints these
> messages on boot:
>    Configuring dbus-1.
>     Adding system startup for /etc/init.d/dbus-1.
>    Configuring locale-base-en-gb.
>    Configuring locale-base-en-us.
> 
> The last two are my concern since they take 35 seconds each to run.
> It's a deeply embedded system and does not need multi-locale support
> at any level.
> 
> In any case, my comment was that there doesn't seem to be any way
> to control/configure this at initial build time.  Per the previous
> reply, I don't see how LIMIT_BUILT_LOCALES affects this at all.
> 
> 


