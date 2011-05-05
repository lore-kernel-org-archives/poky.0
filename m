Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C03F4C810CE
	for <poky@yoctoproject.org>; Thu,  5 May 2011 09:40:15 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p45Ee93T019924
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 5 May 2011 07:40:09 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 5 May 2011 07:40:09 -0700
Message-ID: <4DC2B6C8.2010801@windriver.com>
Date: Thu, 5 May 2011 09:40:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<1304604592.17396.122.camel@elmorro>
In-Reply-To: <1304604592.17396.122.camel@elmorro>
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Thu, 05 May 2011 14:40:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/5/11 9:09 AM, Tom Zanussi wrote:
> On Thu, 2011-05-05 at 04:25 -0700, chinmaya hoshing wrote:
>> Hi,
>>
>> I am trying to port Poky to the "sandybridge platform"  for "sugarbay"
>> machine.
>> I am getting error for cups package following is the error log:
> 
> Seems other people are seeing the same error on other platforms too:
> 
> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-May/001794.html
> 
> Can you file a bug report with the steps to reproduce?

When you file a bug, be sure to include the Linux distribution you are using on
your host, and also indicate if you have a 32-bit, 64-bit or combination install.

The problem is either in RPM or pseudo (most likely).

--Mark

> Thanks,
> 
> Tom
> 
> 
>>
>> Processing google-chrome...
>> | Processing bzip2...
>> | Processing cups...
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint):
>> busybox-udhcpc" from tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb
>> "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2"
>> from tsort relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from
>> tsort relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0"
>> from tsort relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint):
>> busybox-syslog" from tsort relations.
>> | error: removing busybox-syslog-1.17.3-r2.snb
>> "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from
>> tsort relations.
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1"
>> from tsort relations.
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1"
>> from tsort relations.
>> |
>> Manifest: /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from
>> tsort relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0"
>> from tsort relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint):
>> busybox-udhcpc" from tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb
>> "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2"
>> from tsort relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing busybox-syslog-1.17.3-r2.snb
>> "Requires(post): /bin/sh" from tsort relations.
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint):
>> busybox-syslog" from tsort relations.
>> | error: LOOP:
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1"
>> from tsort relations.
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1"
>> from tsort relations.
>> | error: LOOP:
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from
>> tsort relations.
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from
>> tsort relations.
>> | Preparing...
>>  /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768: line 507: 22206 Segmentation fault      rpm --dbpath /var/lib/rpm --define='_openall_before_chroot 1' --root ${target_rootfs} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" -D "_dbpath /var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D "__dbi_txn create nofsync private" -Uhv ${target_rootfs}/install/install_solution.manifest
>> | ERROR: Function 'do_rootfs' failed
>> (see /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768 for further information)
>> NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
>> ERROR:
>> '/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb' failed
>> ERROR: Task 179
>> (/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb, do_rootfs) failed with exit code '1'
>>
>>
>> Can you help me to find the solution !!!!!!
>>
>>
>> Chinmaya
>>
>>
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


