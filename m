Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3AC94C80FBB
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:18:10 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 69FD3166026F; Tue,  3 May 2011 17:18:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 622B0166026E;
	Tue,  3 May 2011 17:18:09 -0600 (MDT)
Message-ID: <4DC08D31.7000001@mlbassoc.com>
Date: Tue, 03 May 2011 17:18:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: gstreamer not playing nice with gconf?
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
X-List-Received-Date: Tue, 03 May 2011 23:18:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm having troubles with GConf and gstreamer on my Poky/Yocto system.

On my desktop, gstreamer has installed some proper defaults:
   % gconftool-2 -R /system//gstreamer
   /system/gstreamer/0.10:
     /system/gstreamer/0.10/audio:
       /system/gstreamer/0.10/audio/profiles:
         /system/gstreamer/0.10/audio/profiles/aac:
           extension = m4a
           name = CD Quality, AAC
           active = true
           ...
     /system/gstreamer/0.10/default:
       musicaudiosink_description = Default
       videosink = autovideosink
       visualization = autoaudiosink
       audiosink = autoaudiosink
       musicaudiosink = autoaudiosink
       chataudiosink_description = Default
       audiosrc_description = Default
       audiosink_description = Default
       chataudiosink = autoaudiosink
       audiosrc = alsasrc
       videosrc = v4l2src

However, on my Poky/Yocto system, I don't get any of this:
   # gconftool-2 -R /system//gstreamer
   #
(in other words, it's not there)

I can see that /etc/gconf/schemas/gstreamer-0.10.schemas was installed,
but it doesn't seem to be processed.  Other schemas in that directory
are processed when the gconfd starts up.

Am I missing something in how this works?  I'm trying to run a GNome
application (cheese) which needs to get at the gstreamer videosink
default, but it's not available which causes it to fail.

Ideas?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

