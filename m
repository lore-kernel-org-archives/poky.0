Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4E624C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 06:34:34 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 57BB41660298; Tue,  5 Jul 2011 05:34:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 084C1166020B;
	Tue,  5 Jul 2011 05:34:33 -0600 (MDT)
Message-ID: <4E12F6C8.9040806@mlbassoc.com>
Date: Tue, 05 Jul 2011 05:34:32 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E12F363.6070708@mlbassoc.com> <1309865186.20015.692.camel@rex>
In-Reply-To: <1309865186.20015.692.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: eglibc build problem
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
X-List-Received-Date: Tue, 05 Jul 2011 11:34:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/05/2011 05:26 AM, Richard Purdie wrote:
> On Tue, 2011-07-05 at 05:20 -0600, Gary Thomas wrote:
>> I have a distribution which is derived from Poky.  It has been
>> building great until recently, but now it fails when building
>> 'eglibc' for the target with this error:
>>
>> $ cat /home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/temp/log.do_install_locale.13725
>> cp: cannot stat `/home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/image/usr/bin/localedef': No such file or directory
>> ERROR: Function 'do_install_locale' failed (see /home/local/p60_latest/tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/temp/log.do_install_locale.13725 for further
>> information)
>>
>> Looking around in the eglibc build, I can't see localedef being built:
>> $ find tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/ -name "locale*"
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/localedata
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/locale
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.os.d
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.o.d
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.os
>> tmp/work/armv7a-amltd-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-amltd-linux-gnueabi/intl/localealias.o
>>
>> However, if I build for the BeagleBoard using the same Poky tree,
>> it does work and I see:
>> $ find tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/ -name "locale*"
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/localedata
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.os
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.o
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.os
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.o
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.os.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale.o
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale-spec.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localedef.o
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localename.os.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/localeconv.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/locale/locale-spec.o
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.os.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.o.d
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.os
>> tmp/work/armv7a-poky-linux-gnueabi/eglibc-2.13-r3+svnr14157/build-arm-poky-linux-gnueabi/intl/localealias.o
>>
>> Any ideas what would keep the localedef stuff from being built for my
>> board whereas it is built for a standard board?
>>
>> As I said, this has been working great up until some time recently.
>> I can't see any hint in the commit logs of what might have changed
>> to break it.  ... that will teach me to take a 2 week holiday!
>
> I'm going to guess that your distro overrides DISTRO_FEATURES and you
> are missing some of the new libc settings...

Thanks, that does look promising.

That said, would this not then be a bug?  DISTRO_FEATURES does not imply
localedefs, but the recipe still expects it to be there?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

