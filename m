Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4306F4C800B0
	for <poky@yoctoproject.org>; Wed,  4 May 2011 09:15:07 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p44EF4Lb032124;
	Wed, 4 May 2011 15:15:04 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31885-04; Wed,  4 May 2011 15:15:00 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p44EEttk032111
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 May 2011 15:14:55 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DC08D31.7000001@mlbassoc.com>
References: <4DC08D31.7000001@mlbassoc.com>
Date: Wed, 04 May 2011 15:14:54 +0100
Message-ID: <1304518494.21461.155.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: gstreamer not playing nice with gconf?
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
X-List-Received-Date: Wed, 04 May 2011 14:15:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-03 at 17:18 -0600, Gary Thomas wrote:
> I'm having troubles with GConf and gstreamer on my Poky/Yocto system.
> 
> On my desktop, gstreamer has installed some proper defaults:
>    % gconftool-2 -R /system//gstreamer
>    /system/gstreamer/0.10:
>      /system/gstreamer/0.10/audio:
>        /system/gstreamer/0.10/audio/profiles:
>          /system/gstreamer/0.10/audio/profiles/aac:
>            extension = m4a
>            name = CD Quality, AAC
>            active = true
>            ...
>      /system/gstreamer/0.10/default:
>        musicaudiosink_description = Default
>        videosink = autovideosink
>        visualization = autoaudiosink
>        audiosink = autoaudiosink
>        musicaudiosink = autoaudiosink
>        chataudiosink_description = Default
>        audiosrc_description = Default
>        audiosink_description = Default
>        chataudiosink = autoaudiosink
>        audiosrc = alsasrc
>        videosrc = v4l2src
> 
> However, on my Poky/Yocto system, I don't get any of this:
>    # gconftool-2 -R /system//gstreamer
>    #
> (in other words, it's not there)
> 
> I can see that /etc/gconf/schemas/gstreamer-0.10.schemas was installed,
> but it doesn't seem to be processed.  Other schemas in that directory
> are processed when the gconfd starts up.
> 
> Am I missing something in how this works?  I'm trying to run a GNome
> application (cheese) which needs to get at the gstreamer videosink
> default, but it's not available which causes it to fail.
> 
> Ideas?

Missing gconf postinstall for gstreamer? I'm just guessing though...

Cheers,

Richard


