Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9AAEE01200
	for <poky@yoctoproject.org>; Tue, 30 Aug 2011 10:38:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 876E61660134; Tue, 30 Aug 2011 11:38:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D60001660132;
	Tue, 30 Aug 2011 11:38:19 -0600 (MDT)
Message-ID: <4E5D200B.20209@mlbassoc.com>
Date: Tue, 30 Aug 2011 11:38:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Debugging udev
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
X-List-Received-Date: Tue, 30 Aug 2011 17:38:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm having trouble with udev creating all the devices I need in
my system.  Based on the latest master, using udev 164.

My system is based on the 3.0 kernel (mainline, not yocto) with
Video4Linux enabled with OMAP3 ISP.  This creates a bunch of
special devices:
   # ls /sys/class/video4linux/
   v4l-subdev0  v4l-subdev3  v4l-subdev6  video0       video3       video6
   v4l-subdev1  v4l-subdev4  v4l-subdev7  video1       video4
   v4l-subdev2  v4l-subdev5  v4l-subdev8  video2       video5
However, udev is not actually creating the device nodes.

Any ideas why?
Any hints on how to debug this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

