Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A318DE0132F
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 15:14:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E4283F81210; Tue, 17 Apr 2012 16:14:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 23735F811E0;
	Tue, 17 Apr 2012 16:14:34 -0600 (MDT)
Message-ID: <4F8DEB4A.7020401@mlbassoc.com>
Date: Tue, 17 Apr 2012 16:14:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com> <1334679589.616.106.camel@ted>
	<4F8DA181.9070005@mlbassoc.com> <1334697649.616.138.camel@ted>
In-Reply-To: <1334697649.616.138.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 17 Apr 2012 22:14:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-17 15:20, Richard Purdie wrote:
> On Tue, 2012-04-17 at 10:59 -0600, Gary Thomas wrote:
>> On 2012-04-17 10:19, Richard Purdie wrote:
>> Well, it seems that the checksums are encouraged, if not required, these days.
>> I was just making sure that they actually work&  in my opinion, it shouldn't
>> matter how you got the file, the checksums should still be checked and match.
>
> You can argue this both ways. I'm leaning that direction although it has
> its risks.
>
>> Sadly, this is much worse.  It even [somehow] reached "through" my
>> mirror setup and deleted the file on the backing store (i.e. the
>> file /work/misc/Poky/sources/busybox-1.19.4.tar.bz2 gets deleted
>> when the checksum fails even though it's part of the own-mirror)
>
> Was that the only issue? I can see how it managed to do that, I agree it
> shouldn't :/.

It sort of worked - at least it didn't pass silently - but the messages
don't say why it failed.  Here's what I get:

NOTE: package busybox-1.19.4-r2: task do_fetch: Started
WARNING: Failed to fetch URL http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2;name=tarball
ERROR: Fetcher failure: Fetch command export HOME="/home/gthomas"; export GIT_CONFIG="/home/local/poky_test/tmp/sysroots/i686-linux/etc/gitconfig"; export 
PATH="/home/local/poky_test/tmp/sysroots/i686-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi:/home/local/poky_test/tmp/sysroots/beagleboard/usr/bin/crossscripts:/home/local/poky_test/tmp/sysroots/i686-linux/usr/sbin:/home/local/poky_test/tmp/sysroots/i686-linux/usr/bin:/home/local/poky_test/tmp/sysroots/i686-linux/sbin:/home/local/poky_test/tmp/sysroots/i686-linux//bin:/home/local/poky-master/scripts:/home/local/poky-master/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/local/poky-master/scripts"; 
/usr/bin/env wget -t 5 -nv --passive-ftp --no-check-certificate -P /home/local/poky_test/downloads 'http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2' could not be run:
None
ERROR: Function failed: Fetcher failure for URL: 'http://www.busybox.net/downloads/busybox-1.19.4.tar.bz2;name=tarball'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/local/poky_test/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/busybox-1.19.4-r2/temp/log.do_fetch.7907
NOTE: package busybox-1.19.4-r2: task do_fetch: Failed
ERROR: Task 2 (/home/local/poky-master/meta/recipes-core/busybox/busybox_1.19.4.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 8 tasks of which 7 didn't need to be rerun and 1 failed.

No indication of checksum failures anywhere.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

