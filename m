Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02FB04C800AC
	for <poky@yoctoproject.org>; Fri,  6 May 2011 05:04:52 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p46A4o4H024421
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 May 2011 03:04:50 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 6 May 2011 03:04:49 -0700
Message-ID: <4DC3C7B4.1000705@windriver.com>
Date: Fri, 6 May 2011 18:04:36 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
In-Reply-To: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Fri, 06 May 2011 10:04:53 -0000
Content-Type: multipart/alternative;
	boundary="------------010303090402060704020303"

--------------010303090402060704020303
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2011?05?05? 19:25, chinmaya hoshing wrote:
> Hi,
>
> I am trying to port Poky to the "sandybridge platform"  for "sugarbay" 
> machine.
> I am getting error for cups package following is the error log:
>
> Processing google-chrome...
> | Processing bzip2...
> | Processing cups...
> | error: LOOP:
> | error: removing busybox-1.17.3-r2.snb "Requires(hint): 
> busybox-udhcpc" from tsort relations.
> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): 
> /bin/sh" from tsort relations.
> | error: LOOP:
> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" 
> from tsort relations.
> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from 
> tsort relations.
> | error: LOOP:
> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from 
> tsort relations.
> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" 
> from tsort relations.
> | error: LOOP:
> | error: removing busybox-1.17.3-r2.snb "Requires(hint): 
> busybox-syslog" from tsort relations.
> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): 
> /bin/sh" from tsort relations.
> | error: LOOP:
> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from 
> tsort relations.
> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from 
> tsort relations.
> | error: LOOP:
> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" 
> from tsort relations.
> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" 
> from tsort relations.
> | Manifest: 
> /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
> | error: LOOP:
> | error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from 
> tsort relations.
> | error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" 
> from tsort relations.
> | error: LOOP:
> | error: removing busybox-1.17.3-r2.snb "Requires(hint): 
> busybox-udhcpc" from tsort relations.
> | error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): 
> /bin/sh" from tsort relations.
> | error: LOOP:
> | error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" 
> from tsort relations.
> | error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from 
> tsort relations.
> | error: LOOP:
> | error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): 
> /bin/sh" from tsort relations.
> | error: removing busybox-1.17.3-r2.snb "Requires(hint): 
> busybox-syslog" from tsort relations.
> | error: LOOP:
> | error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" 
> from tsort relations.
> | error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" 
> from tsort relations.
> | error: LOOP:
> | error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from 
> tsort relations.
> | error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from 
> tsort relations.
> | Preparing...               
>  /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768: 
> line 507: 22206 Segmentation fault      rpm --dbpath /var/lib/rpm 
> --define='_openall_before_chroot 1' --root ${target_rootfs} 
> --predefine "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" 
> --predefine "_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" 
> -D "_dbpath /var/lib/rpm" --noscripts --notriggers --noparentdirs 
> --nolinktos -D "__dbi_txn create nofsync private" -Uhv 
> ${target_rootfs}/install/install_solution.manifest
I tried to break the loop dependencies, then the "error: LOOP" message 
disappear.
But rpm still Segmentation fault, it is so hard to debug, can anyone 
give some advices?

> | ERROR: Function 'do_rootfs' failed (see 
> /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768 
> for further information)
> NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
> ERROR: 
> '/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb 
> <http://poky-image-minimal-black.bb>' failed
> ERROR: Task 179 
> (/home/sandybridge/poky/meta/recipes-core/images/poky-image-minimal-black.bb 
> <http://poky-image-minimal-black.bb>, do_rootfs) failed with exit code '1'
>
> Can you help me to find the solution !!!!!!
>
> Chinmaya
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------010303090402060704020303
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    On 2011&#24180;05&#26376;05&#26085; 19:25, chinmaya hoshing wrote:
    <blockquote
      cite="mid:BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <div dir="ltr"><span class="Apple-style-span"
          style="border-collapse: collapse; font-family:
          arial,sans-serif; font-size: 13px;"><span
            style="border-collapse: collapse; font-family:
            arial,sans-serif; font-size: 13px;">Hi,<br>
            <br>
            I am trying&nbsp;<span>to</span>&nbsp;port Poky&nbsp;<span>to</span>&nbsp;the
            "sandybridge platform" &nbsp;for "sugarbay" machine.</span></span>
        <div><span class="Apple-style-span" style="border-collapse:
            collapse; font-family: arial,sans-serif; font-size: 13px;"><span
              style="border-collapse: collapse; font-family:
              arial,sans-serif; font-size: 13px;"></span>
            <div>
              <span style="border-collapse: collapse; font-family:
                arial,sans-serif; font-size: 13px;">I am getting error
                for cups package following is the error log:</span></div>
            <div><span style="border-collapse: collapse; font-family:
                arial,sans-serif; font-size: 13px;"><br>
              </span></div>
            <div><span style="border-collapse: collapse; font-family:
                arial,sans-serif; font-size: 13px;">
                <div>Processing google-chrome...</div>
                <div>| Processing bzip2...</div>
                <div>| Processing cups...</div>
                <div>| error: LOOP:</div>
                <div>| error: removing busybox-1.17.3-r2.snb
                  "Requires(hint): busybox-udhcpc" from tsort relations.</div>
                <div>| error: removing busybox-udhcpc-1.17.3-r2.snb
                  "Requires(post): /bin/sh" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing nss-dev-3.12.9-r2.snb "Requires:
                  nss = 3.12.9-r2" from tsort relations.</div>
                <div>| error: removing nss-3.12.9-r2.snb "Requires:
                  nss-dev &gt;= 3.12.9" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing nspr-4.8.7-r0.snb "Requires:
                  nspr-dev &gt;= 4.8.7" from tsort relations.</div>
                <div>| error: removing nspr-dev-4.8.7-r0.snb "Requires:
                  nspr = 4.8.7-r0" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing busybox-1.17.3-r2.snb
                  "Requires(hint): busybox-syslog" from tsort relations.</div>
                <div>| error: removing busybox-syslog-1.17.3-r2.snb
                  "Requires(post): /bin/sh" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing libudev0-164-r1.snb "Requires:
                  udev = 164-r1" from tsort relations.</div>
                <div>| error: removing udev-164-r1.snb "Requires:
                  libudev0 &gt;= 164" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing libdbus-1-3-1.4.1-r1.snb
                  "Requires(hint): dbus-1" from tsort relations.</div>
                <div>| error: removing dbus-1-1.4.1-r1.snb "Requires:
                  libdbus-1-3 &gt;= 1.4.1" from tsort relations.</div>
                <div>| Manifest:
/home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest</div>
                <div>| error: LOOP:</div>
                <div>| error: removing nspr-4.8.7-r0.snb "Requires:
                  nspr-dev &gt;= 4.8.7" from tsort relations.</div>
                <div>| error: removing nspr-dev-4.8.7-r0.snb "Requires:
                  nspr = 4.8.7-r0" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing busybox-1.17.3-r2.snb
                  "Requires(hint): busybox-udhcpc" from tsort relations.</div>
                <div>| error: removing busybox-udhcpc-1.17.3-r2.snb
                  "Requires(post): /bin/sh" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing nss-dev-3.12.9-r2.snb "Requires:
                  nss = 3.12.9-r2" from tsort relations.</div>
                <div>| error: removing nss-3.12.9-r2.snb "Requires:
                  nss-dev &gt;= 3.12.9" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing busybox-syslog-1.17.3-r2.snb
                  "Requires(post): /bin/sh" from tsort relations.</div>
                <div>| error: removing busybox-1.17.3-r2.snb
                  "Requires(hint): busybox-syslog" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing dbus-1-1.4.1-r1.snb "Requires:
                  libdbus-1-3 &gt;= 1.4.1" from tsort relations.</div>
                <div>| error: removing libdbus-1-3-1.4.1-r1.snb
                  "Requires(hint): dbus-1" from tsort relations.</div>
                <div>| error: LOOP:</div>
                <div>| error: removing udev-164-r1.snb "Requires:
                  libudev0 &gt;= 164" from tsort relations.</div>
                <div>| error: removing libudev0-164-r1.snb "Requires:
                  udev = 164-r1" from tsort relations.</div>
                <div>| Preparing... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  &nbsp;/home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768:
                  line 507: 22206 Segmentation fault &nbsp; &nbsp; &nbsp;rpm --dbpath
                  /var/lib/rpm --define='_openall_before_chroot 1'
                  --root ${target_rootfs} --predefine
                  "_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo"
                  --predefine "_rpmrc_platform_path
                  ${target_rootfs}/etc/rpm/platform" -D "_dbpath
                  /var/lib/rpm" --noscripts --notriggers --noparentdirs
                  --nolinktos -D "__dbi_txn create nofsync private" -Uhv
                  ${target_rootfs}/install/install_solution.manifest</div>
              </span></div>
          </span></div>
      </div>
    </blockquote>
    I tried to break the loop dependencies, then the "error: LOOP"
    message disappear.<br>
    But rpm still Segmentation fault, it is so hard to debug, can anyone
    give some advices?<br>
    <br>
    <blockquote
      cite="mid:BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><span class="Apple-style-span" style="border-collapse:
            collapse; font-family: arial,sans-serif; font-size: 13px;">
            <div><span style="border-collapse: collapse; font-family:
                arial,sans-serif; font-size: 13px;">
                <div>| ERROR: Function 'do_rootfs' failed (see
                  /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768
                  for further information)</div>
                <div>NOTE: package poky-image-minimal-black-1.0-r0: task
                  do_rootfs: Failed</div>
                <div>ERROR:
                  '/home/sandybridge/poky/meta/recipes-core/images/<a
                    moz-do-not-send="true"
                    href="http://poky-image-minimal-black.bb">poky-image-minimal-black.bb</a>'
                  failed</div>
                <div>ERROR: Task 179
                  (/home/sandybridge/poky/meta/recipes-core/images/<a
                    moz-do-not-send="true"
                    href="http://poky-image-minimal-black.bb">poky-image-minimal-black.bb</a>,
                  do_rootfs) failed with exit code '1'</div>
                <div><br>
                </div>
                <div>Can you help me to find the solution&nbsp;!!!!!!</div>
                <div><br>
                </div>
                <div>Chinmaya</div>
              </span></div>
          </span><br>
        </div>
      </div>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010303090402060704020303--
