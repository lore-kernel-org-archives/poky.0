Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 706A8E00CE5; Wed, 30 May 2018 03:20:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E7ABE00CDF
	for <poky@yoctoproject.org>; Wed, 30 May 2018 03:20:20 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs52.server.lan (via HTTP); Wed, 30 May 2018 12:20:19 +0200
MIME-Version: 1.0
Message-ID: <trinity-ea3d216e-bc9c-45f1-a378-6fa01db95838-1527675619729@3c-app-gmx-bs52>
From: "Arno Steffens" <star@gmx.li>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Date: Wed, 30 May 2018 12:20:19 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1527664876.16911.125.camel@linuxfoundation.org>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
	<1527664876.16911.125.camel@linuxfoundation.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:lxUt3u/ZtB4dc1qX3InmmcySvOgCdWw9kOEx7Dlc50j
	LGUS2fOyVdSxMLDTB0ufa5Kw9ptar0vBy61eEUr5teMWdJuQ8H
	HrSzxELJZDW3afw6hWdOLxBxEdTkV4RhHvOZHRveejSqGQzWEQ
	//aDXusHy2roXod+jXdq//JpH0aUPXFchzGwb9GAmMnT7esqLC
	t84447a2XXo42Q4J3i6TlfdjU8un0m2tIt5eug0CJX4os3VS6F
	niyyFsivR39pWX4bxR0JMuC0ND6u+LR5fHzlwXy7+TcAamdaXB uzjXLw=
X-UI-Out-Filterresults: notjunk:1;V01:K0:o+p+o7cDsYA=:IuMj+z3rJlT1nvyy/5UeeG
	wiU40nwzUrNRW0ElUcpOXiId46YeCg7JYVI5Vd21+xHijpL9sy2MZoNLnZVd4H4ZqQijQil7T
	/4P/WfDAwYQeI0yX9Swf8QHxjN+dojAgvY4fatGL4NqrXztsGs+1wWviLttx3h2+QoU2ndGas
	w6d8yCANM6Yn0qV33pCnopqhswIa9Nd2so6yckbcCIXq20SS4rRgUpPPSpsjltAfgpl6bMmuY
	Z6jvkbH4LZ/n8EvYQqTa7qqqmTRI33FFWy21dM2WepgA0kW8WSj5fclJtXJ9yqkzWeKEgryo+
	U67yBzi2MIhnjNLRsjemd6ecsn6lE4xY1Kf7tr0A7clO+oQz7MHaAu1rRrMXXwk5VkD7f8Z4y
	Yu+c2qxWwP5DBw1Uv432Uq1pvoGSp/YGUY5pP7qC/tym4HXwCE9AtNuHiNvZRjRCby19/5a8I
	hvc+YHs64T07XgZ8JMsE2ys86EC2GFLCr39Txw11WF7CJ6DEQH1F
Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 30 May 2018 10:20:22 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Mittwoch, 30. Mai 2018 um 09:21 Uhr
> Von: "Richard Purdie" <richard.purdie@linuxfoundation.org>
> An: "Arno Steffens" <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
> Betreff: Re: [poky] Give others users than "root" access to GPIO (or commands)
>
> On Tue, 2018-05-29 at 12:41 +0200, Arno Steffens wrote:
> > I have to add a user other than root to start a program which
> > operates with i2c, spi, gpio.
> > For this I added an init-script /etc/rc5.d to make it /dev/* r/w for
> > "others".
> > That works for i2c and spi but not for GPIO. As most of the files the
> > user has to access will only created after the exporting the GPIOs
> > (more or less doing echo xxx > /sys/class/gpio/export).
> > But this new created /sys/class/gpio/xxx is not writable by user.
> > 
> > Maybe I am doing it completely wrong, but how can I achieve this to
> > become possible?
> > I checked the mega-manual, but there is not much mentioned about
> > groups (27.36. extrausers.bbclass).
> > Best regards
> > Arno
> > 
> > Maybe I also have to give this user the permission to reboot, which
> > is right now only possible for root
> 
> You have one reply/potential solution. Another option is to set udev
> rules (or the equivalent in systemd) such that when the device files
> are created they get the permissions/ownership you need.
> 
> Cheers,
> 
> Richard

Richard, what is regarding /dev I agree udev should be the way to go. Read about that but my first hours of experiments hasn't been successful. Have to try harder ...

But howto make commands like reboot, mount or shutdown to be executabel by others:
The setuid bit is already set for /sbin/shutdown.sysvinit which is linked to shutdown but is isn't working for other users than root.

Regards
Arno

