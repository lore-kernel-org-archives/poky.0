Return-Path: <andrei@gherzan.ro>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6359EE0030B
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 08:10:37 -0800 (PST)
Received: by eaac13 with SMTP id c13so1567465eaa.35
	for <poky@yoctoproject.org>; Sun, 11 Dec 2011 08:10:36 -0800 (PST)
Received: by 10.213.17.145 with SMTP id s17mr2838709eba.14.1323619836274;
	Sun, 11 Dec 2011 08:10:36 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id z54sm62840880eeh.5.2011.12.11.08.10.35
	(version=SSLv3 cipher=OTHER); Sun, 11 Dec 2011 08:10:35 -0800 (PST)
Message-ID: <4EE4D5FA.3050604@gherzan.ro>
Date: Sun, 11 Dec 2011 18:10:34 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
In-Reply-To: <CANdftmOckSa7hg1OByDod3C9df5YzP2scQ7eVZ8bZM-mSQE+Kg@mail.gmail.com>
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
X-List-Received-Date: Sun, 11 Dec 2011 16:10:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I tried something else today.

I created from scratch a new image-minimal and i added wpa-supplicant to 
IMAGE_INSTALL - rpm's names are wpa-supplicant-[stuff]. After finishing 
this image i could see that gnutls-extra is again in rootfs even if i 
excluded GPLv3 from build. After searching a little i could see that 
gnutls is a dependency for wpa-supplicant and, in the generated gnutls 
spec, that gnutls-extra is required by gnutls-bin.

If bin requires extra than this build should have ended with an error... 
no provider as GPLv3 excluded. Am i right?

