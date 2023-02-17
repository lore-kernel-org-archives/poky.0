Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web10.7691.1676644429683679913
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 06:33:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=eAcQmhco;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AE264240008;
	Fri, 17 Feb 2023 14:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1676644427;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q8d6WVF+tDcn3AjJVaySgmb5OjHxL2Q1ZGg5PauJ+x4=;
	b=eAcQmhcoO1llH7kMP06O3vEIkU9Ulzzd7I2msaLIA09rwupNCbzkMrFIBhg0Ud411pkZss
	riET6AVWmPlC5fq8v02VOmdefoNLLpc0gcEeLxYFI7w5+jdvPXR/hQVIdKL3PCKv4ASZTn
	1URZXlh3FtA4CuXKE2/3v8cOpo/BipL0gHcXN8bPN11CTeaixJUqiLN4bFlTU3ZIrcJEv/
	wKJL4Bu18yJxtFZEoLZ+CXzn5fhcnP61cnJ8jpc8v4OdFB9Vn94qLrbPnBBnn7VOGyY6C7
	1t7Phbfq5hP6SYHXX8TrANFYjNT6KdyIy5fShAnPlIETov7UK4Os6Zbl+O3UYw==
Message-ID: <2294c423-602e-c2ab-3bbc-cfd4c9d06983@bootlin.com>
Date: Fri, 17 Feb 2023 15:33:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Cc: Kamel Fezzani <kamfezz@gmail.com>, poky@lists.yoctoproject.org
Subject: Re: [poky] Test dunfell LTS release on UBUNTU LTS 22.04 #yocto
To: Steve Sakoman <steve@sakoman.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <BooD.1676632109346078064.HPtY@lists.yoctoproject.org>
 <CANNYZj8DU7twqWsXKq3F95efV80i3jQHRF1bBnNk8kZR_xR+pA@mail.gmail.com>
 <CAOSpxdZsZ-LE6-y-M3=0Tg79=UYNX61v3F+WhomwHEheQp83JA@mail.gmail.com>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAOSpxdZsZ-LE6-y-M3=0Tg79=UYNX61v3F+WhomwHEheQp83JA@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 17.02.23 at 15:21, Steve Sakoman wrote:
> On Fri, Feb 17, 2023 at 2:24 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
>> The list of distributions is simply what the yocto CI is using to run
>> test builds. It doesn't mean that 22.04 will not work, but you may run
>> into issues, mostly caused by newer ubuntu compiler building an older
>> set of native recipes in dunfell. If you have compelling reasons to
>> move to 22.04, you can also install buildtools tarball which will
>> insulate you from the host tools: scripts/install-buildtools
> You should be fine with 22.04 and dunfell.
>
> I've been using it for my local test builds for a few weeks now, and
> was just preparing a patch to enable it on the autobuilder.
>
> Once I have a week or two of testing on the autobuilder I'll send a
> patch to add 22.04 to the "officially supported" list.


Very nice, thanks!
I'll be happy to take a documentation patch.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

