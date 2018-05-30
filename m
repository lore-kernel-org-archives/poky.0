Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D336E00CE9; Wed, 30 May 2018 00:21:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29064E00CE5
	for <poky@yoctoproject.org>; Wed, 30 May 2018 00:21:30 -0700 (PDT)
Received: from ted ([192.168.3.30]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4U7LGRW027323
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 30 May 2018 08:21:28 +0100
Message-ID: <1527664876.16911.125.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Arno Steffens <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 30 May 2018 08:21:16 +0100
In-Reply-To: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: Give others users than "root" access to GPIO (or commands)
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
X-List-Received-Date: Wed, 30 May 2018 07:21:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-05-29 at 12:41 +0200, Arno Steffens wrote:
> I have to add a user other than root to start a program which
> operates with i2c, spi, gpio.
> For this I added an init-script /etc/rc5.d to make it /dev/* r/w for
> "others".
> That works for i2c and spi but not for GPIO. As most of the files the
> user has to access will only created after the exporting the GPIOs
> (more or less doing echo xxx > /sys/class/gpio/export).
> But this new created /sys/class/gpio/xxx is not writable by user.
> 
> Maybe I am doing it completely wrong, but how can I achieve this to
> become possible?
> I checked the mega-manual, but there is not much mentioned about
> groups (27.36. extrausers.bbclass).
> Best regards
> Arno
> 
> Maybe I also have to give this user the permission to reboot, which
> is right now only possible for root

You have one reply/potential solution. Another option is to set udev
rules (or the equivalent in systemd) such that when the device files
are created they get the permissions/ownership you need.

Cheers,

Richard

