Received: from mout.web.de (mout.web.de [212.227.15.3])
 by mx.groups.io with SMTP id smtpd.web12.29966.1654507667476847356
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Jun 2022 02:27:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=Vi5UCNTj;
 spf=pass (domain: web.de, ip: 212.227.15.3, mailfrom: patchesthomas.vie@web.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
	s=dbaedf251592; t=1654507665;
	bh=2Q7+36unlvwB3KAlvefDTqjsU8t1uMDpu5/pZHamCrY=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=Vi5UCNTjd2JGPeEawg6zJosLszAqPFe1wwdNx5DCxYN799bftC04G2klynCcHPF9+
	 uQ3ji+diJCxOcx5arMUeSrjXbD3sx7N3tb6wt8v69RPU/Hsf885KbWhYrwoRuDlG2t
	 lYnHP7aWyBDY3Jx8EAQRtQnGKIkfyHOvpNfzJHyo=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.47] ([93.239.123.46]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1Mf3qY-1nIlnH1HUQ-00gSo0; Mon, 06
 Jun 2022 11:27:45 +0200
Message-ID: <a3e5e6c4-58b8-1094-dad2-f367a8ffe528@web.de>
Date: Mon, 6 Jun 2022 11:27:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [poky] [PATCH]Make linux-libc-headers.inc compatible with 4.14
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <49f6643a-fe07-af5b-00aa-dc7d48320e55@web.de>
 <4ba98903-a53c-8b8f-3b20-e2823794609b@web.de>
 <bacff555c7e4124201eba4a0ba7c5473c28c4b8c.camel@linuxfoundation.org>
From: "Thomas Viehweger" <patchesThomas.Vie@web.de>
In-Reply-To: <bacff555c7e4124201eba4a0ba7c5473c28c4b8c.camel@linuxfoundation.org>
X-Provags-ID: V03:K1:hP1pC2zEFNempXwWgYePOnofT+WU5tN0u/sBwVooh4ysbyUZHHD
 mUk/pwVf9U4VhbUUgX19P2KcTOc+CW8fFAkmdMSTzQ03U+vdnMOcQNPFaKnvLCIHHyu7Vcj
 00bE3R3k1XRg5Or9CqEX99cDMnpY9Y/Up4XAINPQyTHJtj4UtsBtR8fmRCH60gf/jmZ++9j
 FOSlaQXSgnEXh9IMC7tlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v1fEgJMAl0U=:Hyuub8lBMO9vQKPzKzp8bL
 ytLay1AmVSUqOuWy0Gq5DOeUJsRLPX2NAeukjbxpTOeOPfmIkUP8/cofoAirNldo5d50cvIU4
 5MCtmHHbx5+IRaMIK1DPN/2iXUA4SX1TmRjx0FXuUYHOshzYtG7AdB9ManwBsro8EV/iBq02r
 C8ptVIFer2vMOMWRV3wrRdHft0z/jCKZISBHVJCXHtl7DhdnCyI54jwCH0QXA1Y0qC1Ajtebw
 9xKjGKDtw63TNSz9lQA9jb9PtXlTmCpXkSfa5W/STHM0NGD3DGi+uJ4JdIGlvf2LMKxgevlkn
 85avtV6xIxpOHHEWvh6l0y6OQ2xlKCEeplBIMaDBgV5ideTRJIJE92eFEIOpwXiUCk3YINleZ
 jhYoFVAstTOPrHpXgccg7izmdq/eKxUWZQvzJhKba8lwMLJM2H2pm1kWtoIdP7Z6mXxm1GolG
 mOE7ZWDmoLpBREYf55cX/EbuUYxJTA3Z/KoA1y4Sv4isOA76xgFtjwXscbARVz4f78uUxUNv4
 zzTLUk/svJ+f9Q0hgI+ZJRC611QTsBUkb7AuSi1ysjiaDdG/dU4voRp69Q6uCTKy1p9LYVko7
 Aa46EgR4AjNsnXfSzyFLe0RT6fy5uHJGpZvqmvYlMT8VgdKcnv7pOsLajYqD8U/e8L+8HaeUX
 PBo1PJ2TAyoGNEUFuI8nMn0LihwKDl0+rUw7JhF87qBEb+GHUtkAcpsJAvFvW2zVkdfeD5027
 lagoDCt43CDteJSmyo6f2g7JsDeoLg+Q6hkK6y8BBlyfIGHKtb+waAUpUWI+f8tL+80sLAX85
 m0FpTLMDeGYGBS5b/sNi50kfTsToABpQj4qbkLNKvDezEt3LQ3gqEvy5lISdaIMAmmJDv5tiE
 N0yZg4ynh3arLO9kDmkYx6Rc3I2K5tpgR4DEugC2kpDdYrCjQuqgBSwJgOXP6SRcarBDIYMaP
 hnZzLBpEDZFQJK4339KVO2Yb1dbp7PHaHwvkjHYEnu3md++huC/YobMAdZsf//XcrfRF4pucE
 ccxeSJGVjjWIQz+rzZ2HogpTOYnqp/4pq1CXcFeuL2eDYpfuEOabnj+yzvio1RJpXt6FPUFO5
 P+WLSiaHoXHdI+SQSEz4TP5atseYRh+6pnuq/JxZOBp/lDPB3r12Ftu1Q==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable


> You should be able to use the most recent linux-libc-headers even with
> an older kernel. I don't understand this desire people have to use lots
> of different versions of it but we're not doing it. We do not want a
> different userspace per kernel.
>
> There is a warning in the recipe about it and I'm not taking patches
> like this unless someone explains a really good reason why the
> userspace needs to be built with an older set of headers.

Yes, I have seen the warnings in the receipt. I know that newer kernels
shall
be compatible with older userspace. E.g. pyro-userspace should work with
kirkstone kernels.
But are you really sure that kirkstone userspace (e.g. glibc compiled with
5.16 kernel headers) does not try to use features which the older kernel
does not provide?
So, to ask the other way: what is the reason why kirkstone uses the newer
kernel-headers?
Shouldn't the userspace be compiled with the headers of the minimum
supported kernel headers instead (for example the oldest supported
longterm - currently 4.9)?

Greetings, Thomas

