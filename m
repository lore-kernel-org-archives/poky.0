Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A3ADE006C7
	for <poky@yoctoproject.org>; Fri,  4 May 2012 07:09:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 61A59F81220; Fri,  4 May 2012 08:09:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 573F6F8120D;
	Fri,  4 May 2012 08:09:45 -0600 (MDT)
Message-ID: <4FA3E329.5000005@mlbassoc.com>
Date: Fri, 04 May 2012 08:09:45 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Setting busybox options/configuration
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
X-List-Received-Date: Fri, 04 May 2012 14:09:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I recall seeing some discussion about this, but not the conclusion.
Is there a way to [easily] override/adjust the busybox configuration?
In particular, I'd like to override CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS
to settings that are more appropriate for my hardware.

Currently, I'm just editing the config file using this snippet in
a .bbappend file:

do_prepare_config_append () {
   sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
}

Crude, but it works.  If there's a better way, I'll gladly use it.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

