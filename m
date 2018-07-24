Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F8AE006F1; Tue, 24 Jul 2018 01:40:39 -0700 (PDT)
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
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FE18E006F1
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 01:40:38 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id b15-v6so6085293oib.10
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 01:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IzVJUqboqJbnLm5HZ8lTs5ZrREavm2UHGbgR1FWiFoY=;
	b=qCBC93CEX3veA9ITzomqlHVip/gS6vQrpzmzPsvHrUyoVLRe7UIkMSNSg1/2n0/GPL
	Cpf3V7H3yZdJNyWiaEubBoGdJWk25EdVbTb2bZEZtbWoKXLKeBMcM0jqQIDC6SXrjVDv
	Ba3mvmWPROLKcXulkVM7Z47wgCBuB5nhFkii0vOv/DVyWSsobpcUBfOaxdlTyWfMrnfh
	Os45FZWdFpLnFS3ZdlerWHM3sdZRZN1SFHjKiya4A6E8Q/CXyz2Q3xXX0eUx62a795oy
	Aju+6fGhQ5/OFx204IbJ5tB2vcK8L/8JxPVjNE1N0YrGJa5N7zing1P+1xxQFL48KUBb
	WRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IzVJUqboqJbnLm5HZ8lTs5ZrREavm2UHGbgR1FWiFoY=;
	b=aIdItV/cbSleDbJz+nMQT+FaMIZNW2o46NNAFCkLxOW1rUetbVaizGXh1ZOpiRImEl
	lW3dIxo0jFbeYJphNUnm2BJ7ZwhrKJAXDgs+pkTvf/YozeaZXnDv5heRGATz9LUMQoXR
	Lk8U80s/61nz55OrajLN15yfC0i9D1OuwR0h708LreRH6xojvJGgYpR9kNOyhlsFrHS6
	B6q+hQUwozuLJsAgOqteUp5xSfI9O/GrDMgtifxc0BiIH+AyhHC67aiRI/zyUUBlTdbL
	Zjh7dML+kLeYJXSMLP5GiA932bm72sshW2ZWsBgm246G1eLPthr2caC6WIwVGAdVyEh5
	WDqg==
X-Gm-Message-State: AOUpUlEeTtzE7xUHnOBe+UcQFEn/jOuM6N846hpPQ9bcbxv7Vp+HXSRC
	CS/KHqaKQapaidC7hJixqLHJazxS+Nc1KqMQd8aBupdK
X-Google-Smtp-Source: AAOMgpeA+NSWidFvW6Hra6STsB+MeyjwngXCQesD0cf9GKF3ItemKO9GmgOpAjuHxLOnm0oRVMCRu7TgFkmO70vstts=
X-Received: by 2002:aca:e80c:: with SMTP id
	f12-v6mr2428447oih.38.1532421637474; 
	Tue, 24 Jul 2018 01:40:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Tue, 24 Jul 2018 01:40:37
	-0700 (PDT)
In-Reply-To: <1354130903.1354552.1532420980242@mail.yahoo.com>
References: <1986949339.1309580.1532416272151.ref@mail.yahoo.com>
	<1986949339.1309580.1532416272151@mail.yahoo.com>
	<CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
	<1354130903.1354552.1532420980242@mail.yahoo.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Jul 2018 10:40:37 +0200
Message-ID: <CANNYZj_KuHi7gCuunsGWEg0JHdO91ZUJYPkR2-20J+MDQQeEuQ@mail.gmail.com>
To: hardik vala <hardik.vala@aumraj.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Build Error
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
X-List-Received-Date: Tue, 24 Jul 2018 08:40:39 -0000
Content-Type: text/plain; charset="UTF-8"

Your setup is incorrect. Each layer needs to be included only once,
and all layers should point to the same upstream release (e.g. sumo,
or master if you want the latest code).

Alex

2018-07-24 10:29 GMT+02:00 hardik vala <hardik.vala@aumraj.com>:
> one meta provided by poky and other meta is openembedded-core/meta directory
>
> ________________________________
> From: "Burton, Ross" <ross.burton@intel.com>
> To: hardik vala <hardik.vala@aumraj.com>
> Cc: Poky Project <poky@yoctoproject.org>
> Sent: Tuesday, 24 July 2018 1:40 PM
> Subject: Re: [poky] Build Error
>
> On 24 July 2018 at 08:11, hardik vala <hardik.vala@aumraj.com> wrote:
>
>> meta
>> meta-poky
>> meta-yocto-bsp      = "sumo:96fbd39ba32362416c18d90bb7a81eb6a76912e0"
>> meta                = "master:ff0b682b807959521c85716296de7a1d26d7d18f"
>> meta-oe
>> meta-python
>> meta-networking      = "master:0aff7abedc1c7727c88029a123107f4faf5ba4f1"
>> meta-java            = "master:ecb637a8cf5eb0cbff67e9e568858f7bfed061fc"
>
>
> Why do you have meta twice, one with sumo and once with master?  What
> branch do you want to be using?
>
> Ross
>
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

