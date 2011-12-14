Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 183A6E00305
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 23:26:45 -0800 (PST)
Received: by yenm10 with SMTP id m10so478711yen.35
	for <poky@yoctoproject.org>; Tue, 13 Dec 2011 23:26:45 -0800 (PST)
Received: by 10.236.129.202 with SMTP id h50mr9790301yhi.1.1323847604950;
	Tue, 13 Dec 2011 23:26:44 -0800 (PST)
Received: from [128.224.170.203] ([89.121.200.106])
	by mx.google.com with ESMTPS id o7sm2760262yhl.15.2011.12.13.23.26.42
	(version=SSLv3 cipher=OTHER); Tue, 13 Dec 2011 23:26:43 -0800 (PST)
Message-ID: <4EE84FB0.3040205@gherzan.ro>
Date: Wed, 14 Dec 2011 09:26:40 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
	<4EE4D5FA.3050604@gherzan.ro> <1323641532.2731.5.camel@ted>
	<CANdftmPSkw9fEcucJcZPLm4kFticM6t7-pe4HUZoRxgsuj8t0w@mail.gmail.com>
	<4EE68351.5090600@gherzan.ro>
	<CAMKF1srCZg4-S-4EPsbCifk7Kr=SuDvsoqX0ww9p8WGdy=53Fg@mail.gmail.com>
	<CANdftmPXu-zrbaha3Gc5bP7=cZX29bqe8Nw2437XTgeEqJacQw@mail.gmail.com>
	<20111213094002.GA6336@ad.chargestorm.se>
	<CANdftmPpQAjkTiZ0KzaxjmjsXMgTr0Oy=pH3WjTUhv_oyjeatQ@mail.gmail.com>
	<CAMKF1so_12LcZ5ZhAVf7+AsM+t-DTgsutroFbsCy10==NnN_pg@mail.gmail.com>
In-Reply-To: <CAMKF1so_12LcZ5ZhAVf7+AsM+t-DTgsutroFbsCy10==NnN_pg@mail.gmail.com>
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Wed, 14 Dec 2011 07:26:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

> thats a bug.
>
It certainly looks like one.
Shouldn't this gnutls be removed from WHITELIST?

