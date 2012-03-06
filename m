Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD396E0044C
	for <poky@yoctoproject.org>; Tue,  6 Mar 2012 09:39:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 67734F81280; Tue,  6 Mar 2012 10:39:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AB520F8127E;
	Tue,  6 Mar 2012 10:39:10 -0700 (MST)
Message-ID: <4F564BBE.6030404@mlbassoc.com>
Date: Tue, 06 Mar 2012 10:39:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F5643EB.70909@mlbassoc.com>
In-Reply-To: <4F5643EB.70909@mlbassoc.com>
Subject: Re: How can a package I didn't ask for get included in my image?
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
X-List-Received-Date: Tue, 06 Mar 2012 17:39:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-06 10:05, Gary Thomas wrote:
> Note: I'm not sure the best list to use for this, but I'll start
> here. I build using poky plus my own distro.conf and my own image
> recipes, etc. My example below uses stylized package and target
> names.
>
> I'm trying to figure out why a particular package is ending up
> in my final image. If I build something like this:
> % bitbake my-image
> If I then look, I find packages that were installed that I'm
> never mentioning:
> % grep firmware tmp/work/my-board/my-image/temp/log.do_rootfs
> Installing linux-firmware-wl12xx (0.0+git1+09c949f6d3196a7199eb2c7015bfa5d34ed723b5-r0) to root...
> so I tried to figure out how this is getting in
> % bitbake my-image -g
> % grep firmware *.dot
> ... comes up empty
>
> To be fair, I had originally built this image with this in <my-board>.conf
> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules linux-firmware-wl12xx "
> but that has since been removed. Somehow, it's ghost lingers on...
>
> How can this be?
> How can I get rid of it, short of a complete rebuild?
>
> Thanks for any insight into this mystery.

Found it myself - the variable MACHINE_EXTRA_RRECOMMENDS was referenced
by my core task, something like this:
   RRECOMMENDS_task-my-distro-boot = "\
     ${MACHINE_EXTRA_RRECOMMENDS} \
   "
I hadn't rebuilt that task, so the reference remained.  I'm still not
sure why it didn't end up in the .dot graphs though.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

