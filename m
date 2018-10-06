Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C043E00B3E; Sat,  6 Oct 2018 09:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A97CE008D0
	for <poky@yoctoproject.org>; Sat,  6 Oct 2018 09:02:29 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id c10-v6so6019383pgq.4
	for <poky@yoctoproject.org>; Sat, 06 Oct 2018 09:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SDwDTEvBT5i6jiHT8L8oe3R4Ne/1fsY0MnyyhCcAsHI=;
	b=I4+qUvreC7umGpH/mULChMSdlXGHWqSDE8/Sxw1UdJfPRxhpp6xKuXwKwrdcuNeLiB
	QBb4U3w53osAurqfNSinxncF/6b4pj4L3ZX/NT4OFes0OZO9eohYUJRQVXHazD/BU2Dq
	T55z33LKalBY/XORpID0BIUTMBqmx1kzDdvfRAt3zHEyHPwbUHbFUPG+x/x5cj4py9nn
	TmCHbnvQfDDKO/kHB6f7uEYoNLtg/fZuoxYBLQ/Lx/5EUI2EGfAka2kBgjZpgev6vQM2
	1VoCj7A37RsGwqHDbDI4xJVm4a9BYZaOKHKK2rb+hUo0vku45cdLzPObtFxOrlaGLRZh
	8PuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=SDwDTEvBT5i6jiHT8L8oe3R4Ne/1fsY0MnyyhCcAsHI=;
	b=lufHb6SPn9D2WEEmjO5hxhmQwMpkxaQoGhOBYKt8BTRlyLJ6154eQClQnQBDt1nT2z
	H1XQkjcBE2oyBm1ISJbiG4A/tc5a10cwFj4+CsihO16fsoi+gMX9lM5ffjs3+Js3Mtws
	0ooBA5yKXFfoWsN+868dygMuz/6SgmWZZ7BjKlc23kfXJQQ/vmm2oV8h8hRUGgR5ObP1
	nbUR/eeSq92QB81QcW73TKwdbOn5iVPipViLSczNV53gmzd++KhBxago8Npw7JXn5ICp
	bwNUZLrxd8f6sCwmPr66s6VOEVoypQ2AGqQvlHzPtRgwGkKu1cmwW/N6tadh0JMlcVTs
	vouA==
X-Gm-Message-State: ABuFfoh0NM5z/PY9BMXSNOcDQrxsIzjBrZjcFB4UQ4Wk0YlfIOc2YnlP
	QVCDistX8CQlXOffyvBNBrOhJ+Aa
X-Google-Smtp-Source: ACcGV60dIuCcwsY1Cmoacjfb6xWfb4BrV1CiXap6fhGjlagezQ2CXnWAJoKlNpMcOSUHpr3Xlt/nbw==
X-Received: by 2002:a63:de46:: with SMTP id
	y6-v6mr14489026pgi.198.1538841748853; 
	Sat, 06 Oct 2018 09:02:28 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:f86a:8ddf:15d3:7044?
	([2601:202:4180:c33:f86a:8ddf:15d3:7044])
	by smtp.gmail.com with ESMTPSA id
	d10-v6sm12708031pgp.26.2018.10.06.09.02.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Oct 2018 09:02:27 -0700 (PDT)
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, Alex.Gonzalez@digi.com
References: <20181005120055.GC7228@agonzal-linux>
	<982a032d-362e-cc1a-c84d-2496a0a21171@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <54e188df-f109-3e56-c154-d8b42e206480@gmail.com>
Date: Sat, 6 Oct 2018 09:02:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <982a032d-362e-cc1a-c84d-2496a0a21171@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [rocko] Backport request for meta/recipes-kernel/cryptodev
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
X-List-Received-Date: Sat, 06 Oct 2018 16:02:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 10/05/2018 01:49 PM, Randy MacLeod wrote:
> Hi Alex,
>
> Armin maintains the rocko branch so best to CC him.
>
> Also, I've moved this to the oe-core list where
> we handle oe-core commits. Poky is composed of
> several layers to make things easier to build
> but we use the other email lists for development.
>
> Armin,
>
> This is a simple patch and I was able
> to cherry-pick the corresponding oe-core commit:
>
>   270a1e9bcf26a43f5cbdc5b901c4c6f79495311d
>
> back to rocko-next, and then run:
>   bitbake -c patch linux-yocto.
> The change is a no-op for the standard rocko kernel so that's
> all I did to test (actually, I'm starting a linux-yocto build
> but I'd be shocked if it failed).
>
> Will you add this to your rocko-next queue or
> would you like Alex to re-submit following the guidelines:
>    http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>

Thanks Randy,

its in my queue.

- armin
>
> ../Randy
>
>
> On 10/05/2018 08:00 AM, Gonzalez, Alex wrote:
>> Hi,
>>
>> Could you please backport commit
>> c568e89c3d316e5c10369c6ff48e871828bad783 to
>> rocko?
>>
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c568e89c3d316e5c10369c6ff48e871828bad783
>>
>>
>> This will allow to build cryptodev with kernels >= 4.17.
>>
>> Thanks,
>> Alex
>>
>
>


