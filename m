Return-Path: <net147@gmail.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59077E0043C
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 07:41:03 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id un15so389494pbc.29
	for <poky@yoctoproject.org>; Wed, 04 Sep 2013 07:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=mXgUjrE+2YGWB9S/Oawo5EtbAVaAkBRDfDWf//EaTWo=;
	b=LhNB46CCOd1VD04tO/yPZIM/oJuIxazNEpxsE4NSZvwz2v05U1SjZSsC07Yc/gkFcc
	vu2VOt0yOeZGqClHfhzCyDVKlQ28+jriAh7u4qjhL+J4jmewNK1AGxdi7Y37uKbyCKTw
	D5tEFEBbpdJ5Pl49b0f0Y0W3iJy1qSw4LtAmnVR8RPCfE1hbsa4DLHp5pMVRqmoH4XCv
	uTnHZRkan5zv6JmoJbgHmYvYchbaBSsTZaQatkjg7/+pMCP1UKpodwP0cLelF8g3Le1L
	8NhvK1vSu+zwji2snMIie/eSbzm4JjsFCrQx5AOYHot3/kNVTcuL0MkU8hO+W5JODdnz
	krjg==
X-Received: by 10.68.252.33 with SMTP id zp1mr3626280pbc.95.1378305235132;
	Wed, 04 Sep 2013 07:33:55 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by mx.google.com with ESMTPSA id
	ve9sm29204542pbc.19.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 07:33:54 -0700 (PDT)
Message-ID: <522743A2.6070609@gmail.com>
Date: Thu, 05 Sep 2013 00:28:50 +1000
From: Jonathan Liu <net147@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
	<CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
	<CADkTA4OiNjkfiE4oa-AMb_NFX1P9JNoG4SkwP3xmFpoqyTubEA@mail.gmail.com>
	<CANwerB0PQgJQSqR4S_b0N77w2vejVZsO967AgzJgyDveu8aUcA@mail.gmail.com>
	<CANwerB3wV4R_1pR-hhQeZK-FabdF2oCzozgqoSjNKX_ZOoZ_WA@mail.gmail.com>
	<CANwerB3KCBuaq87oSWaze1B+_+DYmzokKoV1dk=S7Gj8EnLS4g@mail.gmail.com>
	<52272D84.6050405@windriver.com>
	<CAJTo0LZt4Wmre2XOjLtTFPnmOOMvC+x0Gu-EDEQSFB_F_XkFFw@mail.gmail.com>
In-Reply-To: <CAJTo0LZt4Wmre2XOjLtTFPnmOOMvC+x0Gu-EDEQSFB_F_XkFFw@mail.gmail.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86: tune for i586 instead of atom
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
X-List-Received-Date: Wed, 04 Sep 2013 14:41:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/09/2013 12:25 AM, Burton, Ross wrote:
> On 4 September 2013 13:54, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>>> I have confirmed it is CONFIG_MATOM=y that was causing the boot issue.
>> That would definitely make a difference. If you are using the genericx86
>> PC, the default tuning was atom+ IIRC (a line has to be drawn somewhere),
>>   and you can discuss that with the Intel guys.
>>
>> But you can easily carry a configuration fragment in your own layer that
>> disables that option if you want that same BSP to work on your platform.
> I'd be inclined to say that the line for genericx86 is "atom onwards"
> and Pentium is sufficiently different to justify its own BSP.
>
> Ross
Is CONFIG_MATOM=y being used for genericx86?
Using CONFIG_MATOM=y with Linux 3.10 seems to require MOVBE instruction 
which is only available on Intel Atom...

Regards,
Jonathan

