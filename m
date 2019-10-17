Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62DBFE00D5F; Thu, 17 Oct 2019 01:15:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D79E00A5C
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 01:15:41 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 46v26H0D8lz5tlV;
	Thu, 17 Oct 2019 10:15:34 +0200 (CEST)
Date: Thu, 17 Oct 2019 10:15:33 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: Sean Nyekjaer <sean@geanix.com>
Message-ID: <20191017081533.rq35ea5gippf54iv@qschulz>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
	<9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
MIME-Version: 1.0
In-Reply-To: <9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
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
X-List-Received-Date: Thu, 17 Oct 2019 08:15:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sean,

On Wed, Oct 16, 2019 at 10:27:23AM +0200, Sean Nyekjaer wrote:
> 
> 
> On 11/06/2019 16.46, Quentin Schulz wrote:
> > Hi all,
> > 
> > I've been hit with a rather unsettling bug when building an image with
> > PACKAGE_CLASSES = "ipk" in Thud 2.6.2.
> > 
> > The error message is the following:
> > ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
> > '/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  --force_postinstall --prefer-arch-to-version   --force-maintainer --force-overwrite install packagegroup-base-extended packagegroup-core-boot plop run-postinsts' returned 2:
> > Collected errors:
> >   * Solver encountered 2 problem(s):
> >   * Problem 1/2:
> >   *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
> >   *
> >   * Solution 1:
> >   *   - do not ask to install a package providing plop
> > 
> >   * Problem 2/2:
> >   *   - nothing provides bluez5 needed by packagegroup-base-bluetooth-1.0-r83.stream1832prime
> >   *
> >   * Solution 1:
> >   *   - do not ask to install a package providing packagegroup-base-extended
> 
> Hi all,
> 
> After this series was applied to thud, our BAD_RECOMMENDATIONS is included
> in our rootfs :(
> 
> We have in our distro conf:
> BAD_RECOMMENDATIONS_append = " udev-hwdb"
> 
> If I revert this series on current thud HEAD, we are back to what is
> expected :) An image without udev-hwdb
> 

Thanks for letting the community know. I can confirm we're having the
same issue here though I haven't taken the time to check whether it's
because of this series. I believe you though :)

I think there isn't much more than a week left before the last dot
version of thud is out making me say that we should probably revert this
series.

The reasoning is the following:
Situation before the patch series, as explained in the cover letter:
in some specific cases, a few packages in BAD_RECOMMENDATIONS trigger a
build error (see above) but overall the mechanism works.
Situation after the patch series (2.6.3): BAD_RECOMMENDATIONS is not
taken into account at all (but build is working, but not a surprise per
se since BAD_RECOMMENDATIONS was the culprit).

Now it's down to maintainers but I'd advocate for reverting it if we
can't fix it in the meantime because I personnally would rather have the
same buggy behavior (but working BAD_RECOMMENDATIONS in 99% of the time)
from 2.6.0, 2.6.1 and 2.6.2 than having a BAD_RECOMMENDATIONS not
working at all as it is for 2.6.3.

Thanks for reporting.
Sorry for messing up.

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com

