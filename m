Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A570D4C800B0
	for <poky@yoctoproject.org>; Wed,  4 May 2011 09:27:41 -0500 (CDT)
Received: by wyb40 with SMTP id 40so1343451wyb.35
	for <poky@yoctoproject.org>; Wed, 04 May 2011 07:27:40 -0700 (PDT)
Received: by 10.227.200.212 with SMTP id ex20mr1238548wbb.52.1304519260362;
	Wed, 04 May 2011 07:27:40 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id x13sm249929wby.8.2011.05.04.07.27.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 04 May 2011 07:27:37 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1304518494.21461.155.camel@rex>
Date: Wed, 4 May 2011 16:27:35 +0200
Message-Id: <50731CCB-F5A3-4D44-B0AB-201CA7228F64@dominion.thruhere.net>
References: <4DC08D31.7000001@mlbassoc.com> <1304518494.21461.155.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
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
X-List-Received-Date: Wed, 04 May 2011 14:27:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 4 mei 2011, om 16:14 heeft Richard Purdie het volgende geschreven:

> On Tue, 2011-05-03 at 17:18 -0600, Gary Thomas wrote:
>> I'm having troubles with GConf and gstreamer on my Poky/Yocto system.
>> 
>> On my desktop, gstreamer has installed some proper defaults:
>>   % gconftool-2 -R /system//gstreamer
>>   /system/gstreamer/0.10:
>>     /system/gstreamer/0.10/audio:
>>       /system/gstreamer/0.10/audio/profiles:
>>         /system/gstreamer/0.10/audio/profiles/aac:
>>           extension = m4a
>>           name = CD Quality, AAC
>>           active = true
>>           ...
>>     /system/gstreamer/0.10/default:
>>       musicaudiosink_description = Default
>>       videosink = autovideosink
>>       visualization = autoaudiosink
>>       audiosink = autoaudiosink
>>       musicaudiosink = autoaudiosink
>>       chataudiosink_description = Default
>>       audiosrc_description = Default
>>       audiosink_description = Default
>>       chataudiosink = autoaudiosink
>>       audiosrc = alsasrc
>>       videosrc = v4l2src
>> 
>> However, on my Poky/Yocto system, I don't get any of this:
>>   # gconftool-2 -R /system//gstreamer
>>   #
>> (in other words, it's not there)
>> 
>> I can see that /etc/gconf/schemas/gstreamer-0.10.schemas was installed,
>> but it doesn't seem to be processed.  Other schemas in that directory
>> are processed when the gconfd starts up.
>> 
>> Am I missing something in how this works?  I'm trying to run a GNome
>> application (cheese) which needs to get at the gstreamer videosink
>> default, but it's not available which causes it to fail.
>> 
>> Ideas?
> 
> Missing gconf postinstall for gstreamer? I'm just guessing though...

Is gst-plugin-gconfelements installed?

