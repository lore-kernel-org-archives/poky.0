Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7223E00AE4; Tue, 29 May 2018 03:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136D2E009AC
	for <poky@yoctoproject.org>; Tue, 29 May 2018 03:41:27 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs25.server.lan (via HTTP); Tue, 29 May 2018 12:41:26 +0200
MIME-Version: 1.0
Message-ID: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
From: "Arno Steffens" <star@gmx.li>
To: "pokyyoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 29 May 2018 12:41:26 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:sYQTJ7oTLGo9M1UXug1AWfOmbTV9KICYyCAEKhHACNb
	Qro+aDHQcK70eG6feJQb+1PZqbLYkR7VnE7y87mIlQEpiWly4c
	l8NYAEEQPAI3FgX3/itAtQZiZDdF9UIZ9NbObOvrRUXFQO+QME
	khB862mRyoc8J8+dgyuI2/woGhzlURg/dwWKa9Vy6gDzOUtWDP
	KBYqzFVjC7HknXOQ6yRoAzT5l7cANW0Pa3DNFIGQOFrBRjRDge
	aTa35/aFjLOPDINkOT0LxlS4AkGdh/CNRCgdWUD2lY1FdfwpIr U0vGqA=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Y0o1CuuUkrk=:WuCfBfF9x5KX/o0cSLKIML
	k1Zgew/HMt8Qdo9cqkQTqZ0n5yOF14Jyb2e+lyMqchkNPHHr046kKXZ8r154a7sJzmAQJbgw8
	m7N+sKOLumflfOKUuhmMwjg59uqV7BRIflS+Y/VqT00VJhCnWQd5nDUQ8E49bSltCfRLPkDVQ
	afqw3P0eQvwDUANE13y4HVUAgPQEttHGf808lbeAlNPCG/+I2AFENU+VJGDVB2ti/bO/JncZx
	93szHt07oy4U7iN3yv9Oszxz6gLqCu9hSzjr5ddgRBPZqRBNQcy1W92ks/5Ntw0KyAUl7Hg/3
	anJSE7H/Ufw1DME0gfJAmSJT0kUg3qtRakXSzIDzIpUF5LU5R+ZVK9Iua5Qzt9f0MBlx6O2Z9
	4XJ9SzMNyHht8Ba9THrHWls0BRtNbhpwEy/QK5nq63H+exQNRjGjcUwgFHtKwiXhmUxsrgMAV
	anYp3m/oKn0ZyLOMSPnQcZQzISJtq8bl93qfAr9Gc0mS1me6eVJj
Subject: Give others users than "root" access to GPIO (or commands)
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
X-List-Received-Date: Tue, 29 May 2018 10:41:28 -0000
Content-Type: text/plain; charset=UTF-8

I have to add a user other than root to start a program which operates with i2c, spi, gpio.
For this I added an init-script /etc/rc5.d to make it /dev/* r/w for "others".
That works for i2c and spi but not for GPIO. As most of the files the user has to access will only created after the exporting the GPIOs (more or less doing echo xxx > /sys/class/gpio/export).
But this new created /sys/class/gpio/xxx is not writable by user.

Maybe I am doing it completely wrong, but how can I achieve this to become possible?
I checked the mega-manual, but there is not much mentioned about groups (27.36. extrausers.bbclass).
Best regards
Arno

Maybe I also have to give this user the permission to reboot, which is right now only possible for root

