Return-Path: <eu@felipetonello.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35327E00559
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 09:57:40 -0800 (PST)
Received: by mail-oa0-f50.google.com with SMTP id n16so1283404oag.23
	for <poky@yoctoproject.org>; Wed, 09 Jan 2013 09:57:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=xYICOzPNC2lM8IgC2j6lSzau4h5T702LACRdqPfize4=;
	b=ew1QR5/tltHFPywra2DJL9wdBEGEAObWA9Gfc9AOlXP6zd7ilTKi6fGDrGbIedgk3Y
	sOa7/3kF8hvlB/giCxinAnu8W+cJoccW5siGWJjZCF7J0j0FXexbVxrriNLtgPooPMZT
	VcQt8ehmUPAzXo05tDbG5i1dhYncSjOQFABxeOf0jBk2s34DAKUe3Ue/9lJAlr357Pgg
	siffhH3HFTTTWM051+9Krj7KGioQlPaOc+YRLxeE2R3kLx0WoDGfoqJzsADBozTFgNCL
	SlybdcBDv+JX73/NPpxnCjKgPMOFq16+1q442VaNd5ZxRUzvu4Z1RLS0M9VpZmivZlEj
	1S0g==
X-Received: by 10.60.8.134 with SMTP id r6mr38291228oea.53.1357754259475;
	Wed, 09 Jan 2013 09:57:39 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id w10sm37355192oeg.2.2013.01.09.09.57.37
	(version=SSLv3 cipher=OTHER); Wed, 09 Jan 2013 09:57:38 -0800 (PST)
Message-ID: <50EDAFC3.8090100@felipetonello.com>
Date: Wed, 09 Jan 2013 09:58:27 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
	<50ECD310.90504@windriver.com> <50ED01A5.4030402@felipetonello.com>
	<50ED275C.2030605@windriver.com>
In-Reply-To: <50ED275C.2030605@windriver.com>
X-Gm-Message-State: ALoCoQle76+32mLrDxheEYwGrTcAQv7M5MUwf5Uz99A25amHd5+xqyvUQgJU5a7qzWetMAvvG8jv
Subject: Re: [PATCH] initscripts: added save-rtc to runlevel S
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
X-List-Received-Date: Wed, 09 Jan 2013 17:57:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hi Chen,

Thank you for your answer.

On 01/09/2013 12:16 AM, ChenQi wrote:
 > On 01/09/2013 01:35 PM, Felipe Ferreri Tonello wrote:
 >> Hi Chen,
 >>
 >> On 01/08/2013 06:16 PM, ChenQi wrote:
 >>> On 01/09/2013 08:18 AM, eu@felipetonello.com wrote:
 >>>> From: "Felipe F. Tonello" <ftonello@cercacor.com>
 >>>>
 >>>> It is necessary to add save-rtc.sh to runlevel S so the system is
 >>>> updated when
 >>>> it boots up.
 >>> Hi ftonello,
 >>> What do you mean by "system is updated"?
 >> I meant system clock.
 >>
 >> What is happening now is that when you turn off the device, without
 >> system halt, the next time the device is booted up the system clock is
 >> not in sync with the rtc.
 > Hi Felipe,
 >
 > I'm sorry, but I really don't see why this patch works.
 > Below is my understanding for the system clock, hardware clock and
 > /etc/timestamp.
 > (The file name 'save-rtc.sh' is somewhat misleading, 'save-timestamp.sh'
 > would be a more reasonable one.)
 >
 > /etc/timestamp is used to provide a reasonable reference for system time.
 > The initial contents in this file is the building time of the image.
 >
 > The system clock should always be in sync with the rtc as long as the
 > /etc/init.d/hwclock.sh is present, whose main purpose is to sync system
 > clock and hardware clock.
 > No matter whether the system is shutdown normally or crashes, the system
 > clock is according to the hardware clock by hwclock.sh.

Is there anything special to enable hwclock.sh?

I understand what you say, but here that patch was the only way to have 
system clock (down to minutes, also, or even seconds, don't recall) sync 
up with the rtc.

Btw, this patch I did few months ago. So I don't remember exactly what 
was happening.

Do you know by the top of your mind how is this process? Because, as I 
remember, save-rtc.sh was never been called. I'm not sure.

Felipe


