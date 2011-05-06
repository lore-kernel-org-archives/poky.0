Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9498C4C8007E
	for <poky@yoctoproject.org>; Fri,  6 May 2011 10:18:15 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p46FIEIZ011755
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 6 May 2011 08:18:14 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 6 May 2011 08:18:14 -0700
Message-ID: <4DC41135.4070708@windriver.com>
Date: Fri, 6 May 2011 10:18:13 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<4DC3C7B4.1000705@windriver.com>
In-Reply-To: <4DC3C7B4.1000705@windriver.com>
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
X-List-Received-Date: Fri, 06 May 2011 15:18:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On 5/6/11 5:04 AM, Kang Kai wrote:
> On 2011年05月05日 19:25, chinmaya hoshing wrote:
>> Hi,
>>
>> I am trying to port Poky to the "sandybridge platform"  for "sugarbay" machine.
>> I am getting error for cups package following is the error log:
>>
>> Processing google-chrome...
>> | Processing bzip2...
>> | Processing cups...
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from
>> tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort
>> relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort
>> relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from
>> tsort relations.
>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
>> relations.
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort
>> relations.
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from
>> tsort relations.
>> | Manifest:
>> /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort
>> relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from
>> tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort
>> relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from
>> tsort relations.
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from
>> tsort relations.
>> | error: LOOP:
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from
>> tsort relations.
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort
>> relations.
>> | error: LOOP:
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort
>> relations.
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
>> relations.
>> | Preparing...              
>>  /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768:
>> line 507: 22206 Segmentation fault      rpm --dbpath /var/lib/rpm
>> --define='_openall_before_chroot 1' --root ${target_rootfs} --predefine
>> "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine
>> "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" -D "_dbpath
>> /var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D
>> "__dbi_txn create nofsync private" -Uhv
>> ${target_rootfs}/install/install_solution.manifest

The loops have nothing to do with the segfault.

> I tried to break the loop dependencies, then the "error: LOOP" message disappear.
> But rpm still Segmentation fault, it is so hard to debug, can anyone give some
> advices?

If you can get me a reproducer I'll work on trying to identify the segfault and
work through it.  (What I likely need is a copy of your deploy directory, and
the items from the tmp/work/<machine>/<image>)

Two ways to attempt to figure out what is going on:

1) Manually reproduce it
Note, you should be able to reproduce this outside of the build system.  The
basic steps are:

run pseudo, and setup the environment for the rootfs image creation.
run the failed script above in gdb
wait until it segfaults and report on the segfault location...


2) Capture a core...

On the command line run: ulimit -c unlimited

Run the bitbake command that fails

Look for the dumped core file, likely in tmp/work/<machine>/<image> "somewhere".
 Should be named "core.XXXXXX" where XXXXXX is a pid.

Run gdb on the core file similar to:

gdb <path>/tmp/sysroots/x86_64-linux/usr/bin/rpm.real <path>/core.XXXXXX

assuming that is successful, you should be able to type "bt" and figure out
where the crash occurred.


Again let me know if you get any reasonable results and I can further investigate.

--Mark

>> | ERROR: Function 'do_rootfs' failed (see
>> /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768
>> for further information)
>> NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
>> ERROR:
>> '/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb
>> <http://poky-image-minimal-black.bb>' failed
>> ERROR: Task 179
>> (/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb
>> <http://poky-image-minimal-black.bb>, do_rootfs) failed with exit code '1'
>>
>> Can you help me to find the solution !!!!!!
>>
>> Chinmaya
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


