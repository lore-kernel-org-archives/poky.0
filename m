Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D9B0E00A75; Wed, 30 May 2018 03:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D3AE00A75
	for <poky@yoctoproject.org>; Wed, 30 May 2018 03:01:46 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs52.server.lan (via HTTP); Wed, 30 May 2018 12:01:38 +0200
MIME-Version: 1.0
Message-ID: <trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
From: "Arno Steffens" <star@gmx.li>
To: ChenQi <Qi.Chen@windriver.com>
Date: Wed, 30 May 2018 12:01:38 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
	<54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:VsnI+Jmy8naQjGPIlIPzp4xm2KOhNR/OkvKyCSU9/3u
	RJC9UNVvV56PpE1kn4BYnFTS0IWOqoWu4lYczmLZsqDBnMdwVK
	y2+dRi2fS15hv/TpQiNJ+P5AwmH6Dp3Uj98mKkhZoY16VXDFwc
	XJo7xE5py3wIq4x5kiAE3FSYXnEkE5FfK2dDFk4bPIDHPammIJ
	1n1oBBmHSAObdYPALnExspD16/IzMtpoZ/+Ib0DfU340IYzUQM
	pIcn0+EQputsnGRXLkI9oalvnkJsxwPzjY1jaT7r33Lb+X8Fzx 6dLKTk=
X-UI-Out-Filterresults: notjunk:1;V01:K0:PPsH/2HDyF4=:V/FAFuG6Ak1l4+qyjmCraV
	N6Bztj70pYVddaNm38sAUcd73vQjEKyL4eQDGtsUT72CHLlckjgddklroqblHU0pB/+WpE2Gh
	x1YqN0KPWi6EExIhc8A36wDvztn3+LTREQyGUoK2YBZRIvomOXOaWWqf7pnEi0kXNf1Kv//zG
	Jb0OB3GI2Ff37Xv2Zz4OsbkQEIABtLCGYXsPtyNar9nSaGBPxYfWhj4fR/Du0HidTs3myCoke
	MXYWtXPu8kLfQS+MCOCL0YzI5XDQYxYdqgvGtuE/R1lUP8EtyGHSO6mBg15Gw6dVct3yL/dnq
	WM3qx6dPIiO6Wj901VwLb30xc/vK4QQ6G0apaBzMFD5MBvUYXqfbUr+v0TfU4pU/jtuiVNlU7
	wKEW1XC9E7DWXxgOMVs6Z49uHMX+Ik2UBTzBZgZfGrUHA1oPfMw1X9rTYsOyzj0Tg8JLXvjIB
	nBTXTh5MINlKYEVxtuFt+IrB0MypbZm/55UOCxLoiYQ46fvqPVU+
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
X-List-Received-Date: Wed, 30 May 2018 10:01:48 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Mittwoch, 30. Mai 2018 um 08:03 Uhr
> Von: ChenQi <Qi.Chen@windriver.com>
> An: "Arno Steffens" <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
> Betreff: Re: [poky] Give others users than "root" access to GPIO (or commands)
>
> On 05/29/2018 06:41 PM, Arno Steffens wrote:
> > I have to add a user other than root to start a program which operates with i2c, spi, gpio.
> > For this I added an init-script /etc/rc5.d to make it /dev/* r/w for "others".
> > That works for i2c and spi but not for GPIO. As most of the files the user has to access will only created after the exporting the GPIOs (more or less doing echo xxx > /sys/class/gpio/export).
> > But this new created /sys/class/gpio/xxx is not writable by user.
> >
> > Maybe I am doing it completely wrong, but how can I achieve this to become possible?
> > I checked the mega-manual, but there is not much mentioned about groups (27.36. extrausers.bbclass).
> > Best regards
> > Arno
> >
> > Maybe I also have to give this user the permission to reboot, which is right now only possible for root
> 
> 
> Not sure about your environment. But if you want normal user to do some 
> operation requiring root privilege, consider using a SETUID program.
> 
> 1) Create a progrem to do the actual work that require root privilege.
> 2)  If your only want your program to be run by some specific user, do 
> the user checking in the program.
> 3) Install your program to be SETUID. `chmod +s xxx'
> 
> You can check dbus-daemon-launch-helper in dbus for a reference.
> 
> Best Regards,
> Chen Qi

Thanks Chen,
sounds easy but I get to my surprise a problem with a shared library (cannot open shared object file: No such file or directory) - althought the LD_LIBRARY_PATH is set (/opt/lib) and the file available?
Best regards
Arno


