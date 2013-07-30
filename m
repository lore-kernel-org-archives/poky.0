Return-Path: <eric.nelson@boundarydevices.com>
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52BBAE002EB
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 14:01:07 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id w10so4264928pde.23
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 14:01:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=J2G0leJFodzZXCJmm43ggVcjARMbnf+kiHANKN3IqkQ=;
	b=VGMOlYOobmWptJGGTLAlzRIgwHB5AYRqA6ajELdBmHts+8Uu5WBCGChg/kanDBXAwH
	vjpdHf2w/H3KKFhX8WkE9YbsL01zijPvs8d4A2tycAuPyN52YV7Rzx9ubsOIkBj4JqeW
	8osyayHTEU7LfUeb10SRBLmkVXTiwK7r7Ufe529ZQde99Al+BDGB2AKTLioZd8JX3bXh
	DA3RXb2XftrT5FONVoX+hNvE55YstJRmKRT2svfwkiEjO+HUBlYlSWD9teIMXWCaEan1
	wUyPyMDbCwNztQitOSQejuqSnfMPlHoywfTlQmKaOjfImz++100ye7of4WzXHFII6KsG
	myiQ==
X-Received: by 10.68.36.38 with SMTP id n6mr5747082pbj.15.1375218067339;
	Tue, 30 Jul 2013 14:01:07 -0700 (PDT)
Received: from [29.6.1.42] ([70.96.116.236]) by mx.google.com with ESMTPSA id
	bs3sm84858249pbc.42.2013.07.30.14.01.05 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Jul 2013 14:01:06 -0700 (PDT)
Message-ID: <51F8298E.8030505@boundarydevices.com>
Date: Tue, 30 Jul 2013 14:01:02 -0700
From: Eric Nelson <eric.nelson@boundarydevices.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <1375216507-11576-1-git-send-email-eric.nelson@boundarydevices.com>
	<51F82479.6050909@linux.intel.com>
	<51F827B7.7070201@boundarydevices.com>
	<CAP9ODKpByoHJBRgu91xzNeWYxdO6XSM94Jtt8QZE4OygF2ZGBA@mail.gmail.com>
In-Reply-To: <CAP9ODKpByoHJBRgu91xzNeWYxdO6XSM94Jtt8QZE4OygF2ZGBA@mail.gmail.com>
X-Gm-Message-State: ALoCoQkH+kAnTwm0vOKpQYGTYOWBP0yhfPDoy9wCSIsNf/bs/+9L+Py1TikpYXPQ2dWo/v9Uo5H7
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] gst-plugins-gl: add explicit dependency on libpng
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
X-List-Received-Date: Tue, 30 Jul 2013 21:01:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2013 01:57 PM, Otavio Salvador wrote:
> On Tue, Jul 30, 2013 at 5:53 PM, Eric Nelson
> <eric.nelson@boundarydevices.com> wrote:
>> Hi Saul,
>>
>>
>> On 07/30/2013 01:39 PM, Saul Wold wrote:
>>>
>>>
>>> As this in meta, which is really part of openembedded-core, please send
>>> it to openembedded-core@list.openembedded.org.
>>>
>>> Thanks for the patch
>>>
>>> Sau!
>>>
>>
>> :) So many mailing lists, so little stack space!
>>
>> Is there a different git repository I should base the patch against?
>>
>> Please advise,
>
> If you patch 'meta' only it should apply just fine in oe-core. I often
> do this and I bet most people do not base the patches directly on
> oe-core when they work on poky.
>
> In either case, oe-core GIT is at
> http://cgit.openembedded.org/openembedded-core/
>
Thanks.

Patch in flight.


