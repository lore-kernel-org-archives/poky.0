Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D656E01091; Sun, 15 Jul 2018 14:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E10E00BAF
	for <poky@lists.yoctoproject.org>; Sun, 15 Jul 2018 14:38:47 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6FLcean009556
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sun, 15 Jul 2018 22:38:43 +0100
Message-ID: <109427be0674defbec8585794fa8210864bcf347.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>, poky-bounces@yoctoproject.org
Date: Sun, 15 Jul 2018 22:38:40 +0100
In-Reply-To: <CAJTo0LYnL+aP4_Fd0jbHxmL2LJaZiMhYOF4mA19h1JfZnqNwbw@mail.gmail.com>
References: <20180715151719.16899-1-richard.purdie@linuxfoundation.org>
	<CAJTo0LYnL+aP4_Fd0jbHxmL2LJaZiMhYOF4mA19h1JfZnqNwbw@mail.gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: poky@lists.yoctoproject.org
Subject: Re: [PATCH] oeqa/selftest/systemd_boot: Never use cleansstate in QA tests without special handling of SSTATE_DIR
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
X-List-Received-Date: Sun, 15 Jul 2018 21:38:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2018-07-15 at 20:29 +0100, Burton, Ross wrote:
> On 15 July 2018 at 16:17,  <poky-bounces@yoctoproject.org> wrote:
> > Removing things straight from the live sstate directory is prone to
> > issues
> > since other builds may be relying on the artefact presence.
> > 
> > Also, cleansstate is very slow on the huge sstate that the
> > autobuilder has
> > on slow NFS drives. This may well be causing long buildtimes in oe-
> > selftest
> > as the time taken to remove the artefact by be long.
> 
> Argh, I thought we vetted selftest for this sort of thing already.

This one was added in the last 12 months since its in sumo/rocko but
not before so we missed it :(.

> Does the test still do the right thing with this?  Several instances
> where it really wanted to build in the past I've replaced with
> bitbake foo -C unpack or similar.

As far as I can tell it wanted to ensure the item ends up deployed, in
which case the -c clean and then the build should be fine. Whether it
comes from sstate or not I'm not sure is relevant but I didn't look
really closely at the test.

Cheers,

Richard

