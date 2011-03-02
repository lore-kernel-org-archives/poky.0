Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E0414C800A4
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 05:50:21 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D6C9D16603C5; Wed,  2 Mar 2011 04:50:19 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 669F016603A2;
	Wed,  2 Mar 2011 04:50:18 -0700 (MST)
Message-ID: <4D6E2EFA.2060207@mlbassoc.com>
Date: Wed, 02 Mar 2011 04:50:18 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>	<C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
	<AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
In-Reply-To: <AANLkTikfVT=RbM7EdTE2Ua4OeX8x-+dNff8Owk1Gvipb@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Wed, 02 Mar 2011 11:50:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 03/02/2011 04:35 AM, v sailaja wrote:
> Hi Lianhao,
>
> There are *krb5-dev-1.6.3-r6.core2.rpm* and *krb5-dbg-1.6.3-r6.core2.rpm*  in /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms.
> But  there is*no specific rpm on krb5* like *krb5-1.6.3-r6.rpm*.
>
> Again its showing an error as follows:
>
> _*error:*_
>
> readhdr:          2781      2.267168 MB      0.206626 secs
> |    hdrload:        194461    256.103876 MB      1.118980 secs
> |    hdrget:        3861605      0.000000 MB      6.181097 secs
> | *Processing krb5...
> | Unable to find package krb5!
> | ERROR: Task failed: ('function do_rootfs failed', '/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313')
> NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
> ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb/>, do_rootfs) failed with 1
> ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb/>' failed
>
>
> I am facing the same problem with some more packages like *xcb-proto*
>
>   Processing xcb-proto...
> | *Unable to find package xcb-proto!*
> | ERROR: Task failed: ('function do_rootfs failed', '/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.16360')
> NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
> ERROR: Task 191 (/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb>, do_rootfs) failed with 1
> ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb>' failed.

What recipe/package is including xcb-proto?  As far as I can see, this is a developmental
header only package.  The only uses I could find were for xcb-proto-native

Similarly, there are only the -dev and -dbg variants of this package built (it's been
this way for many months at least).  Here's what I have from a fully working build:
   $ ls /local/p60_poky/tmp/deploy/ipk/*/xcb-proto*
   /local/p60_poky/tmp/deploy/ipk/armv7a/xcb-proto-dbg_1.6-r0_armv7a.ipk
   /local/p60_poky/tmp/deploy/ipk/armv7a/xcb-proto-dev_1.6-r0_armv7a.ipk

>
>     Hi SAI,
>
>     Does the “bitbake krb5” succeed? If it does, the rpm file it generated should be  under the directory tmp/deploy/rpm/core2 if you set MACHINE to atom-pc in conf/local.conf. Or
>     you may check at the directory “/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms”, the RPM file is actually created here and later gets
>     copied to tmp/deploy/rpm.
>
>     Best Regards,
>
>     Lianhao
>
>     *From:*v sailaja [mailto:vsailub4u@gmail.com <mailto:vsailub4u@gmail.com>]
>     *Sent:* Tuesday, March 01, 2011 6:46 PM
>     *To:* Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     *Subject:* got error while trying to pull the krb5 package into poky
>
>     Hi,
>
>     I tried with the following
>
>
>                    bitbake krb5  -c cleanall
>                    bitbake krb5
>     But again I am getting the same error and krb5 rpm file is not generated at  tmp/deploy/rpm.
>
>
>       The value is
>
>     *PACKAGE_CLASSES ?= "package_rpm package_ipk"*
>
>     *
>     error:*
>       Generating solve db for /home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...
>     |    total:               1      0.000000 MB      0.871674 secs
>     |    order:               1      0.000000 MB      0.090471 secs
>     |    fingerprint:       537      0.007286 MB      0.081155 secs
>     |    install:           278      0.000000 MB      0.179576 secs
>     |    dbadd:             278      0.000000 MB      0.081411 secs
>     |    dbget:            8678      1.128312 MB      0.016757 secs
>     |    dbput:            5035      2.213572 MB      0.020290 secs
>     |    readhdr:          2781      2.267168 MB      0.206626 secs
>     |    hdrload:        194461    256.103876 MB      1.118980 secs
>     |    hdrget:        3861605      0.000000 MB      6.181097 secs
>     | *Processing krb5...
>     | Unable to find package krb5!
>     | ERROR: Task failed: ('function do_rootfs failed', '/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313')
>     NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
>     ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb/>, do_rootfs) failed with 1
>     ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb <http://poky-image-minimal-akshat.bb/>' failed
>
>
>
>     Please help me in finding the solution.
>     Any help  would be greatly apprecited.
>
>     Thanks & Regards,
>     SAI
>
>
>
>
>
>
>         Hi SAI,
>
>         Please try the following to rebuild the krb5 to see if the rpm is generated:
>
>         -bitbake krb5  -c cleanall
>
>         -bitbake krb5
>
>         This should generate the rpm file under the directory of “tmp/deploy/rpm”.
>
>         b.t.w. what’s the value set to the variable PACKAGE_CLASSES in your conf/local.conf?
>
>         Best Regards,
>
>         Lianhao Lu
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

