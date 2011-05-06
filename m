Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id D5FEF4C8007E
	for <poky@yoctoproject.org>; Fri,  6 May 2011 10:11:23 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5000916602EE; Fri,  6 May 2011 09:11:23 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D9A671660251;
	Fri,  6 May 2011 09:11:21 -0600 (MDT)
Message-ID: <4DC40F99.6020204@mlbassoc.com>
Date: Fri, 06 May 2011 09:11:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<4DC3C7B4.1000705@windriver.com>
In-Reply-To: <4DC3C7B4.1000705@windriver.com>
Cc: poky@yoctoproject.org, chinmaya hoshing <cahoshing@gmail.com>
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
X-List-Received-Date: Fri, 06 May 2011 15:11:24 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/06/2011 04:04 AM, Kang Kai wrote:
> On 2011年05月05日 19:25, chinmaya hoshing wrote:
>> Hi,
>>
>> I am trying to port Poky to the "sandybridge platform" for "sugarbay" machine.
>> I am getting error for cups package following is the error log:
>>
>> Processing google-chrome...
>> | Processing bzip2...
>> | Processing cups...
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort relations.
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from tsort relations.
>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort relations.
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort relations.
>> | error: LOOP:
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort relations.
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from tsort relations.
>> | Manifest: /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
>> | error: LOOP:
>> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort relations.
>> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from tsort relations.
>> | error: LOOP:
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc" from tsort relations.
>> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh" from tsort relations.
>> | error: LOOP:
>> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from tsort relations.
>> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort relations.
>> | error: LOOP:
>> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh" from tsort relations.
>> | error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog" from tsort relations.
>> | error: LOOP:
>> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from tsort relations.
>> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from tsort relations.
>> | error: LOOP:
>> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort relations.
>> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort relations.
>> | Preparing... /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768: line 507: 22206 Segmentation fault rpm --dbpath
>> /var/lib/rpm --define='_openall_before_chroot 1' --root ${target_rootfs} --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine "_rpmrc_platform_path
>> ${target_rootfs}/etc/rpm/platform" -D "_dbpath /var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D "__dbi_txn create nofsync private" -Uhv
>> ${target_rootfs}/install/install_solution.manifest
> I tried to break the loop dependencies, then the "error: LOOP" message disappear.
> But rpm still Segmentation fault, it is so hard to debug, can anyone give some advices?
>
>> | ERROR: Function 'do_rootfs' failed (see /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768 for further information)
>> NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
>> ERROR: '/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb <http://poky-image-minimal-black.bb>' failed
>> ERROR: Task 179 (/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb <http://poky-image-minimal-black.bb>, do_rootfs) failed with exit code '1'
>>
>> Can you help me to find the solution !!!!!!

We need more information about how you are building your image.
Obviously you have added Google Chrome (which might be hard for some to duplicate),
but what else?  What's in your poky-image-minimal-black.bb recipe?

Have you tried to update to a more recent Poky core?  or are you using a release
like Laverne or Bernard?

Note: I built a similar image, using RPM, which included Chrome with
no problems, so without more data it will be hard to help much.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

