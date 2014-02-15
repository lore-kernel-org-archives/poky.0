Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3E5E0044C
	for <poky@yoctoproject.org>; Fri, 14 Feb 2014 17:31:12 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 685B7825; Sat, 15 Feb 2014 02:31:19 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from localhost (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 1FB067AC;
	Sat, 15 Feb 2014 02:31:19 +0100 (CET)
Date: Sat, 15 Feb 2014 02:31:08 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20140215013107.GB2932@piout.net>
References: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
	<CAJTo0LZb-LEWRa_zEgSe7wFGkogpiyT0X-_pUSf6iEmZOQnuaQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZb-LEWRa_zEgSe7wFGkogpiyT0X-_pUSf6iEmZOQnuaQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>, jimwall@q.com, brian@crystalfontz.com
Subject: Re: [for-dora][PATCH] matchbox-keyboard: daemonize launch
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
X-List-Received-Date: Sat, 15 Feb 2014 01:31:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 15/02/2014 at 01:21:41 +0000, Burton, Ross wrote :
> I know this has been sitting unmerged because I said I'd review it and
> didn't, sorry about that.
> 
> On 7 January 2014 04:02, Alexandre Belloni
> <alexandre.belloni@free-electrons.com> wrote:
> > -if [ "$CMD" ]; then
> > -    # Delay to make sure the window manager is active
> > -    # by waiting for the desktop to say its finished loading
> > -    dbus-wait org.matchbox_project.desktop Loaded
> > -    exec $CMD
> > -fi
> 
> Whilst I agree that using .shbg is unwise I'm not sure this is the
> best approach.  Why not just rename the script to .sh (gaining a small
> optimisation by not forking when running it) and simply have this
> block to be:
> 
> if [ "$CMD" ]; then
>     # Delay to make sure the window manager is active
>     # by waiting for the desktop to say its finished loading
>     ( dbus-wait org.matchbox_project.desktop Loaded && $CMD ) &
> fi
> 

I can try that and I think it is clever. It may take some time though as
I will need to dig up the platform I used to be able to test :)


-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

