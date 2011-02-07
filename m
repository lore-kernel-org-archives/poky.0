Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5CD24C80878
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 09:54:11 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7E6EC16602C5; Mon,  7 Feb 2011 08:54:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9C2FC16602A7;
	Mon,  7 Feb 2011 08:54:09 -0700 (MST)
Message-ID: <4D5015A1.3080702@mlbassoc.com>
Date: Mon, 07 Feb 2011 08:54:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <4D500535.3070505@mlbassoc.com>
	<9DA5872FEF993D41B7173F58FCF6BE9412060A17@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9412060A17@orsmsx504.amr.corp.intel.com>
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
X-List-Received-Date: Mon, 07 Feb 2011 15:54:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 08:45 AM, Kamble, Nitin A wrote:
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>> Sent: Monday, February 07, 2011 6:44 AM
>> To: Poky
>> Subject: [poky] eglibc configurability
>>
>> I often run small (slow) embedded systems with only a ramdisk
>> based file system.  When I use Poky for this, one side effect
>> is that some packages need to be "configured" on bootup, which
>> in the case of a ramdisk based operation means every time.
>>
>> I notice that the eglibc package brings in a couple of these
>> which are problematic (mostly in how long they take to run)
>> Looking at meta/conf/distro/include/poky-eglibc.inc:
>>
>> LIBC_DEPENDENCIES = "libsegfault \
>>                        eglibc \
>>                        eglibc-dbg \
>>                        eglibc-dev \
>>                        eglibc-utils \
>>                        eglibc-thread-db \
>>                        eglibc-localedata-i18n \
>>                        eglibc-gconv-ibm850 \
>>                        eglibc-gconv-cp1252 \
>>                        eglibc-gconv-iso8859-1 \
>>                        eglibc-gconv-iso8859-15 \
>>                        locale-base-en-us \
>>                        locale-base-en-gb "
>>
>> On my OMAP-L138 target, configuring locale-base-* takes
>> a long time, upwards of 35 seconds each.
>>
>> Are multiple locale-base packages really necessary?
>> How could I best (in the Poky spirit) limit this?  In the
>> minimum, I'd like to only have one locale, saving at least
>> 35 seconds of boot time.
>>
>> Ideas?  Comments?
>
> Gary,
>    Look at the LIMIT_BUILT_LOCALES variable in local.conf. I think that would give you what are you looking for. Also you can enable the mklibs optimizations for such images, which would save image size.

That variable does not seem to be used in the eglibc recipes,
only the older [deprecated] glibc.  Or did I miss something?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

