Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 862D7E00CC4; Tue, 29 May 2018 23:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F593E00A26
	for <poky@yoctoproject.org>; Tue, 29 May 2018 23:00:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w4U60iZT003439
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 May 2018 23:00:45 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 29 May 2018 23:00:43 -0700
To: Arno Steffens <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
Date: Wed, 30 May 2018 14:03:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
X-Originating-IP: [128.224.162.218]
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
X-List-Received-Date: Wed, 30 May 2018 06:00:51 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/29/2018 06:41 PM, Arno Steffens wrote:
> I have to add a user other than root to start a program which operates with i2c, spi, gpio.
> For this I added an init-script /etc/rc5.d to make it /dev/* r/w for "others".
> That works for i2c and spi but not for GPIO. As most of the files the user has to access will only created after the exporting the GPIOs (more or less doing echo xxx > /sys/class/gpio/export).
> But this new created /sys/class/gpio/xxx is not writable by user.
>
> Maybe I am doing it completely wrong, but how can I achieve this to become possible?
> I checked the mega-manual, but there is not much mentioned about groups (27.36. extrausers.bbclass).
> Best regards
> Arno
>
> Maybe I also have to give this user the permission to reboot, which is right now only possible for root


Not sure about your environment. But if you want normal user to do some 
operation requiring root privilege, consider using a SETUID program.

1) Create a progrem to do the actual work that require root privilege.
2)  If your only want your program to be run by some specific user, do 
the user checking in the program.
3) Install your program to be SETUID. `chmod +s xxx'

You can check dbus-daemon-launch-helper in dbus for a reference.

Best Regards,
Chen Qi


