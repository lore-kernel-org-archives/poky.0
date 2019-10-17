Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A0AE00D9E; Thu, 17 Oct 2019 01:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B2FE00D5F
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 01:55:00 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 46v2zl387Vz5tlB;
	Thu, 17 Oct 2019 10:54:59 +0200 (CEST)
Date: Thu, 17 Oct 2019 10:54:58 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: richard.purdie@linuxfoundation.org
Message-ID: <20191017085458.ugvi7vaaidhqnica@qschulz>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
	<9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
	<5c67c3fb7ba0c15a70eb4ab9266604f8a90be214.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <5c67c3fb7ba0c15a70eb4ab9266604f8a90be214.camel@linuxfoundation.org>
User-Agent: NeoMutt/20180716
Cc: andriy.danylovskyy@streamunlimited.com, poky@yoctoproject.org
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Oct 2019 08:55:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Richard,

On Thu, Oct 17, 2019 at 09:23:18AM +0100, richard.purdie@linuxfoundation.org wrote:
> On Wed, 2019-10-16 at 10:27 +0200, Sean Nyekjaer wrote:
> > 
> > On 11/06/2019 16.46, Quentin Schulz wrote:
> > > Hi all,
> > > 
> > > I've been hit with a rather unsettling bug when building an image
> > > with
> > > PACKAGE_CLASSES = "ipk" in Thud 2.6.2.
> > > 
> > > The error message is the following:
> > > ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
> > > '/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-
> > > native/usr/bin/opkg --volatile-cache -f
> > > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t
> > > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o
> > > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  
> > > --force_postinstall --prefer-arch-to-version   --force-maintainer
> > > --force-overwrite install packagegroup-base-extended packagegroup-
> > > core-boot plop run-postinsts' returned 2:
> > > Collected errors:
> > >   * Solver encountered 2 problem(s):
> > >   * Problem 1/2:
> > >   *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
> > >   *
> > >   * Solution 1:
> > >   *   - do not ask to install a package providing plop
> > > 
> > >   * Problem 2/2:
> > >   *   - nothing provides bluez5 needed by packagegroup-base-
> > > bluetooth-1.0-r83.stream1832prime
> > >   *
> > >   * Solution 1:
> > >   *   - do not ask to install a package providing packagegroup-
> > > base-extended
> > 
> > Hi all,
> > 
> > After this series was applied to thud, our BAD_RECOMMENDATIONS is 
> > included in our rootfs :(
> > 
> > We have in our distro conf:
> > BAD_RECOMMENDATIONS_append = " udev-hwdb"
> > 
> > If I revert this series on current thud HEAD, we are back to what is 
> > expected :) An image without udev-hwdb
> 
> Would someone be able to confirm which patches we need to revert
> please? It may also help narrow down the problem if we could figure out
> which patches specifically need to be reverted to fix it.
> 

@Sean, please confirm so I don't mess up twice in a row :)

e8cd30ba6cec854d85c7ad47edc208107858a5d7 ("OpkgPM: use --add-ignore-recommends to process BAD_RECOMMENDATIONS")
is the one which should be reverted. This commit cannot work without the
one mentioned below because it relies on opkg supporting
--add-ignore-recommends on the command line.

Without this commit,
eecc4121ad3efac4242b023245bccc21439ecc1f ("opkg: add --ignore-recommends flag")
is the equivalent of no-op because nothing will call
--add-ignore-recommends (and anyway, we couldn't use it because, as stated in
the commit log of the patch in that commit, it is compatible only with
libsolv > 0.7.2 which isn't the case in thud).

So first one for sure, the second for cleaning up/not confusing people
if need be.

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com

