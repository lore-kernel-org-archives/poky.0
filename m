Return-Path: <rjohnweber@gmail.com>
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79106E0071D;
	Mon, 11 Mar 2013 20:53:42 -0700 (PDT)
Received: by mail-yh0-f53.google.com with SMTP id q3so745913yhf.26
	for <multiple recipients>; Mon, 11 Mar 2013 20:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=LdJmR909Kv/pGOgWf94LUXqxDCD1zJS0RlkXYxrq9v8=;
	b=iWJeJqf4s1EyGqAda7p0kpU3XVGwc/OdkxAYG1jESdgLfOQFcQi24TaLmdWyXVfW2P
	8T2fwFct6PB7eUyteCkoPXtnMJDX9dNG1q+S5aNv8ZOwWsSdMjuZA5lQ7ihAw+WXvGpa
	PfXlI318iJrkt5tJ707kj3yyhELz10M+YV7LQmExD0OSqaJYdUM5wZiO/jhIxCtt1tbW
	ugnb/gmkplwNM0b/uEyU0eZh8mDecCsO/cDIyapMn+SzyCj6RGUXjSAJdO9q009iglCC
	FDk6Zh2YAB9MAPQZefWi94gNIIdZKyNMF0HIDK1N0eHHyoYLl5YQHbMkPIKV/UhwYDcs
	/sXQ==
X-Received: by 10.236.80.70 with SMTP id j46mr7460394yhe.152.1363060421687;
	Mon, 11 Mar 2013 20:53:41 -0700 (PDT)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id w2sm27740639yhh.7.2013.03.11.20.53.40
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Mar 2013 20:53:41 -0700 (PDT)
Message-ID: <513EA6C3.2020609@gmail.com>
Date: Mon, 11 Mar 2013 22:53:39 -0500
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <51375B7C.9010106@gmail.com> <20130306224808.6efe1351@e6520eb>
	<5137BB73.2050607@gmail.com> <20130306230451.228caae1@e6520eb>
	<5138BE79.7060106@gmail.com> <5138D360.2020000@gmail.com>
	<CAP9ODKqaVVqHi9_90kO6bGuf8zk0MWk40a7M8RQ9MQi1tNgKxQ@mail.gmail.com>
	<513A0558.6020703@gmail.com>
	<CAP9ODKrZCYXVXGU8cWOyrUVGrrA-LnDMkT4+M8-yddnQVDEj_g@mail.gmail.com>
In-Reply-To: <CAP9ODKrZCYXVXGU8cWOyrUVGrrA-LnDMkT4+M8-yddnQVDEj_g@mail.gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] Firmware loading
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
X-List-Received-Date: Tue, 12 Mar 2013 03:53:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Bug is reported:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4013


On 3/8/13 11:36 AM, Otavio Salvador wrote:
> On Fri, Mar 8, 2013 at 12:35 PM, John Weber <rjohnweber@gmail.com> wrote:
>> I could, but I think that these issues are probably resolved by using
>> upstream sources, so I'm not sure if this is a bug for greater Yocto or not.
>> Does it make sense to file a bug, even if it is closed just for
>> informational purposes?
>
> We cannot; due GPU issues. So please report a bug about it.
>
>> I do think that this will be a problem for the following systems:
>> - Using a version of udev > 176 (I suspect this, as that is when udev moved
>> to an internal-only firmware loading capability, but I know it is a problem
>> for 182)
>>
>> - Using a kernel < 3.7 (3.7 incorporated a filesystem firmware loading
>> feature which bypasses udev)
>> - Drivers loading their firmware in the module init stage  (as the brcmfmac
>> does)
>>
>> I'd like to create a recipe to at least get this working in Yocto/Poky
>> master for this and submit it to meta-freescale that would do the following:
>> - Patch the kernel to remove the staging drivers and add the
>> net/wirelesss/brcm80211 backport
>> - Fetch the firmware from a *remote repository* and load it into the
>> kernel's firmware directory
>> - Patch the defconfig to add the extra firmware to load into the kernel
>
> Read other reply please.
>

