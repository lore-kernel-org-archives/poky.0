Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EA60E00C4D; Thu, 21 Jun 2018 12:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0CADE00942
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 12:53:58 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id d5-v6so4050891oib.5
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 12:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=a9cTW7a+RRdCBWyS8fpJ2/FMEkgtD9m1Bkk1iRQzRmE=;
	b=OmjXbaXLAoMh55024WyDpKICEPPQIlkvoJvud3hnOs+MnSKtaowCAiVO7N4GMs30zr
	Ng+gHNN/zE0c9ygJ6SRdANlcXFKcVdHl1Zwo6sIZC0cfeEg4SZDMw4Hi0Tuhsu7SvPm6
	J2zzr5fo7/QfXVdDbaTr1LG7ddMlam+RsiIp86hIZ8RuqflXMpUPNuKtJ2Qcx99ymEdO
	gewBP1miHm+iBjjAe0KDM405XaykLY2QNw5r9MsMylY45fQbwRfG01jRBvv5+ERFymhf
	dnQGuLRSs5bqRcanGatbF58W7MzE8PrEUCd91oqkzm4KHWg+FmqFsBRTGtnENIhygIPN
	9LeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=a9cTW7a+RRdCBWyS8fpJ2/FMEkgtD9m1Bkk1iRQzRmE=;
	b=s+Lu5sl8bvTU4q3aFlVjouXCzatpGMv9ovQyybb3HegAM0SUcwvisJ3B49Lyx+zqBL
	+dYSwQGZrCsvMyhLHk0xBy7K5ZVKm6qkROVznUKZlr36DJnYhxYlb5waB+FGTu5CpSrd
	tO2wixsqiI6DwgQXkLR9rANeI4G6H3cnpx6epUSoTfOeO1hBtBwYzKWkJgzeUApfjksR
	VDLI+WVdBjrbrPk8OE3KcSctkYSog8KrqCmJjArWLlX+uUXVoiIHH0zoNZ3iqGe+9R7M
	6nyPa4710pvjCkRdfKCJFieixFiw6kpPtQqbZLzuOOR7iYHALprwag8UTISkZyzNnPCc
	v8zQ==
X-Gm-Message-State: APt69E0te/RWUShfJMUG3ADoRp18uJFd+ZVax5QntsCXg72gp19CC561
	9ujLsMhmPXDnZbi9qujBITtGJdRI1laduMLxzLE=
X-Google-Smtp-Source: ADUXVKLrcwbLse03DNrVcU2zFOqex/PZCgcSxEIK+7Z8ZHy2eFwswm5CkgYPJV2olmb1Z3l5pzalGAOtRIVR5aw7kFc=
X-Received: by 2002:aca:fd55:: with SMTP id
	b82-v6mr13908981oii.321.1529610837980; 
	Thu, 21 Jun 2018 12:53:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP; Thu, 21 Jun 2018 12:53:57
	-0700 (PDT)
In-Reply-To: <6A9F147ED85DE04C91F3A60DD073E943025EAA33@ORO-MBOX-05.luxoft.com>
References: <47c97294-f857-295d-485e-d572f7e27b8a@microchip.com>
	<CANNYZj9w8G4G60gWG_JHa2-Y5efOtQhaTTgoVez6w6rumz87xw@mail.gmail.com>
	<4c7c2f8d-c45e-e2b2-e264-a91153996e26@microchip.com>
	<6A9F147ED85DE04C91F3A60DD073E943025EAA33@ORO-MBOX-05.luxoft.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 21 Jun 2018 22:53:57 +0300
Message-ID: <CANNYZj9Kn0oq9oF8h=vg+g3ZqV=J3T_qDF-c+J8Bu=OaQKHVeQ@mail.gmail.com>
To: "Kravchuk, Oleksandr" <OKravchuk@luxoft.com>
Cc: Alexandre Belloni <alexandre.belloni@free-electrons.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: iso-codes: issue with do_fetch on pkg-isocodes.alioth.debian.org
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
X-List-Received-Date: Thu, 21 Jun 2018 19:54:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Patches are now in ross/mut, so they'll make it to master soon, and
can be backported thereafter.

When you are getting frustrated with patches seemingly ignored, check
these branches first :)

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/mut
http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Dmaster-next

Alex

2018-06-21 16:42 GMT+02:00 Kravchuk, Oleksandr <OKravchuk@luxoft.com>:
> Actually, I have made all the requested changes. There were no comments a=
fterwards.
>
> --
> Yes, this is my signature
> ________________________________________
> From: poky-bounces@yoctoproject.org [poky-bounces@yoctoproject.org] on be=
half of Nicolas Ferre [nicolas.ferre@microchip.com]
> Sent: Thursday, June 21, 2018 16:29
> To: Alexander Kanavin; poky@yoctoproject.org; Richard Purdie; Khem Raj
> Cc: Alexandre Belloni
> Subject: Re: [poky] iso-codes: issue with do_fetch on pkg-isocodes.alioth=
.debian.org
>
> On 15/06/2018 at 11:48, Alexander Kanavin wrote:
>> 2018-06-15 11:30 GMT+03:00 Nicolas Ferre <nicolas.ferre@microchip.com>:
>>> I have an issue with building "sumo" right now: It's a Fecher issue it =
seems. I actually don't know if it's reported yet (forgive me if it is...).
>>
>> Debian has shut down the server where this and some other recipes were
>> fetched from. Patches were floating on oe-core list, but nothing made
>> it in yet.
>
> Yes, I understand the discussion around v3 patch there but actually what
> about merging this one for now?
>
> http://lists.openembedded.org/pipermail/openembedded-core/2018-June/15161=
8.html
> (thanks Oleksandr)
>
> Current situation actually breaks my build if I want to use a "sumo"
> branch or tell people to use it... (hopefully older branch versions are
> already fetched on my side).
>
> Best regards,
> --
> Nicolas Ferre
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
> ________________________________
>
> This e-mail and any attachment(s) are intended only for the recipient(s) =
named above and others who have been specifically authorized to receive the=
m. They may contain confidential information. If you are not the intended r=
ecipient, please do not read this email or its attachment(s). Furthermore, =
you are hereby notified that any dissemination, distribution or copying of =
this e-mail and any attachment(s) is strictly prohibited. If you have recei=
ved this e-mail in error, please immediately notify the sender by replying =
to this e-mail and then delete this e-mail and any attachment(s) or copies =
thereof from your system. Thank you.

