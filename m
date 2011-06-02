Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A275C4C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 10:05:06 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p52F56EZ028329
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 2 Jun 2011 08:05:06 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 2 Jun 2011 08:05:05 -0700
Message-ID: <4DE7A6A1.3020209@windriver.com>
Date: Thu, 2 Jun 2011 10:05:05 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DE7A327.4070303@mlbassoc.com>
In-Reply-To: <4DE7A327.4070303@mlbassoc.com>
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
X-List-Received-Date: Thu, 02 Jun 2011 15:05:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/2/11 9:50 AM, Gary Thomas wrote:
> Next problem :-(  Building on Fedora 13, with today's master
>    commit 484c4e73245c93a08413cd204513bf5c5698b994
>    Author: Saul Wold <sgw@linux.intel.com>
>    Date:   Tue May 31 22:42:49 2011 -0700
> 
>      clutter-1.6: Add patch to update gettext macro version

That should not have anything to o with the error below.. Hmm..

> I now get this error:
> | NOTE: Unpacking /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm to /home/local/p60_bug/tmp/work/i686-linux/rpm-native-5.4.0-r16/
> | /usr/bin/unlzma: (stdin): File format not recognized
> | cpio: premature end of archive
> | ERROR: Function 'Unpack failure for URL: 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;extract=rpm-5.4.0.tar.gz'. Unpack command 
> PATH="/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin/i686-linux:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/local/poky-amltd/scripts" 
> rpm2cpio.sh /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm | cpio -i rpm-5.4.0.tar.gz failed with return value 1' failed
> | ERROR: Function 'Unpack failure for URL: 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;extract=rpm-5.4.0.tar.gz'. Unpack command 
> PATH="/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin/i686-linux:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux/usr/bin:/home/local/p60_bug/tmp/sysroots/i686-linux/sbin:/home/local/p60_bug/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/local/poky-amltd/scripts" 
> rpm2cpio.sh /home/local/p60_bug/downloads/rpm-5.4.0-0.20101229.src.rpm | cpio -i rpm-5.4.0.tar.gz failed with return value 1' failed
> NOTE: package rpm-native-5.4.0-r16: task do_unpack: Failed
> ERROR: Task 184 (virtual:native:/home/local/poky-amltd/meta/recipes-devtools/rpm/rpm_5.4.0.bb, do_unpack) failed with exit code '1'
> 

It looks like the download was incomplete.  I would have expected the md5sum to
fail though...

--Mark

