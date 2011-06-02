Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0D7B4C8055B
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 10:10:16 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4B8801660298; Thu,  2 Jun 2011 09:10:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 05F49166019C;
	Thu,  2 Jun 2011 09:10:15 -0600 (MDT)
Message-ID: <4DE7A7D6.8070300@mlbassoc.com>
Date: Thu, 02 Jun 2011 09:10:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4DE7A327.4070303@mlbassoc.com> <4DE7A6A1.3020209@windriver.com>
In-Reply-To: <4DE7A6A1.3020209@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: More upgrade woes
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
X-List-Received-Date: Thu, 02 Jun 2011 15:10:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/2011 09:05 AM, Mark Hatle wrote:
> On 6/2/11 9:50 AM, Gary Thomas wrote:
>> Next problem :-(  Building on Fedora 13, with today's master
>>     commit 484c4e73245c93a08413cd204513bf5c5698b994
>>     Author: Saul Wold<sgw@linux.intel.com>
>>     Date:   Tue May 31 22:42:49 2011 -0700
>>
>>       clutter-1.6: Add patch to update gettext macro version
>
> That should not have anything to o with the error below.. Hmm..
>
>> I now get this error:
>> | NOTE: Unpacking /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm to /home/local/p60_bug/tmp/work/i686-linux/rpm-native-5.4.0-r16/
>> | /usr/bin/unlzma: (stdin): File format not recognized
>> | cpio: premature end of archive
>> | ERROR: Function 'Unpack failure for URL: 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;extract=rpm-5.4.0.tar.gz'. Unpack command
>> PATH="/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin/i686-linux:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/local/poky-amltd/scripts"
>> rpm2cpio.sh /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm | cpio -i rpm-5.4.0.tar.gz failed with return value 1' failed
>> | ERROR: Function 'Unpack failure for URL: 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;extract=rpm-5.4.0.tar.gz'. Unpack command
>> PATH="/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin/i686-linux:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/local/poky-amltd/scripts"
>> rpm2cpio.sh /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm | cpio -i rpm-5.4.0.tar.gz failed with return value 1' failed
>> NOTE: package rpm-native-5.4.0-r16: task do_unpack: Failed
>> ERROR: Task 184 (virtual:native:/home/local/poky-amltd/meta/recipes-devtools/rpm/rpm_5.4.0.bb, do_unpack) failed with exit code '1'
>>
>
> It looks like the download was incomplete.  I would have expected the md5sum to
> fail though...

I have the file cached locally since 2010-12-29

Even weirder is that if I try another identical build, it runs.
Something strange going on here :-(

I'll keep trying to understand it.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

