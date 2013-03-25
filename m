Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C8AE014D0
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 06:15:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 804B9F81209; Mon, 25 Mar 2013 07:15:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E078F811E1;
	Mon, 25 Mar 2013 07:15:31 -0600 (MDT)
Message-ID: <51504DF2.3030206@mlbassoc.com>
Date: Mon, 25 Mar 2013 07:15:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Calibrating touch screen
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
X-List-Received-Date: Mon, 25 Mar 2013 13:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a target running Poky/Yocto which has a touch screen.
When I try to run the 'xtscal' program, I get this error:
   # xtscal
   XCALIBRATE extension missing: Resource temporarily unavailable

Any ideas what I need to build/install to make this work?

On a related note, my screen is a small LCD which has a native
layout of 320x240.  However, I need to run it in portrait mode
of 240x320.  I have this mostly working using xrandr but now
my old touch screen calibrations no longer work (they were for
the landscape setup).  This is my main reason for getting xtscal
to work.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

