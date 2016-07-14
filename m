Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95879E00C45; Thu, 14 Jul 2016 07:06:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E8EE00951
	for <poky@yoctoproject.org>; Thu, 14 Jul 2016 07:06:31 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id i5so114673516wmg.0
	for <poky@yoctoproject.org>; Thu, 14 Jul 2016 07:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rD/kWgjuGCMNw2LGROMwyHqATpnFn2RtTye6TGJ4Blk=;
	b=F2rYEAm2FUH1kpRp53g4P8OQvIOruDRovCDH8hGSVLHLj+6SOINvUB4q0fUF9EQ+Z0
	k0qy0PNCcXUmWfCHZL4n2D5JvyBgPGKIR76d6pIgBqjX+732c/nWz+YocDzKgbl+3uVu
	c4pG8xOG02GVpqtipZUdMEMFviUcolL3jn9GriXGBWhuj6VN1Wte8LAWOLHMXbVVVhkc
	hy9OuJMKWJ7J5X2iAK6NBr/Hqg/nnK9F+6fpG5pDlHvjTBaQf4WOk5zI+ZIE5D1YIEh8
	meFb4z6rzaCuyKhKf3ew0WATJS4xp0Uug3fhEifTqVmnr3Ei28KeCYRvI85yAJrzRTRw
	L9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rD/kWgjuGCMNw2LGROMwyHqATpnFn2RtTye6TGJ4Blk=;
	b=C4b14pGrEoaDvcnHLXRJPYpTS0oWl49eUftoEEbTpIunILhbQAqPsqO0+EhzwvojDA
	zH8e541xZ+QIIo8Kga7Qe16tm9H1Mov0IdRcBvaYo0C9hAhQ9bUbPtUwqWrIlF+HD/6M
	C10IurSIXcio5NmZwp6N9CuPcEAqsERbP3Y/hKuZgVrXCuiBILgOl2rYmadblA0883Yq
	1GGxUoly+rTf+9gPmsLSoep+bwxvyRJS0FQ6Zp2oUHKkmNy8s4Oh9DoPV4b9QlA7x71R
	IEswxOJ7m4Brjh1fawksFBmUjUxREyf4sF239a/kw4BmHwO96J9j9khpKplDR+S5eoFR
	gnOg==
X-Gm-Message-State: ALyK8tKjFQFdWY1y8nRm+8l76T7Ptg143uWe1IwL1kzFRJ1JrBr9k+JH03ialqSGTi61o8Uxgdvdpu6cF2+71w==
X-Received: by 10.28.152.5 with SMTP id a5mr17156268wme.76.1468505189790; Thu,
	14 Jul 2016 07:06:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.143.79 with HTTP; Thu, 14 Jul 2016 07:06:29 -0700 (PDT)
In-Reply-To: <CAJTo0LYeQTGao7nW93MQVMfj3HLc+X4pPXa0TVU58VkPfjt4cg@mail.gmail.com>
References: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
	<CAJTo0LYeQTGao7nW93MQVMfj3HLc+X4pPXa0TVU58VkPfjt4cg@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
Date: Thu, 14 Jul 2016 19:36:29 +0530
Message-ID: <CAA2DH4uMyVWETkOfPhBgccUiaARGdavfp-S7HypnjC_-EVjk+w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Force exclude a package
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
X-List-Received-Date: Thu, 14 Jul 2016 14:06:36 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 14, 2016 at 12:42 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 11 July 2016 at 14:03, Prasant J <pj0585@gmail.com> wrote:
>>
>> My build is failing because 2 packages (that I did not include
>> intentionally - speex & taglib) is failing to build. I have tried
>> IMAGE_INSTALL_remove but does not help.
>>
>>
>> How do I find out: what package or image feature forces a package to
>> be included in the first place?
>> Is there a way by which I can force exclude a package?
>
>
> You can use "bitbake <myimage> -g" and read the resulting dot files (ideally
> with a tool that can display dot files) to identify what is pulling in the
> recipes.  Then use that knowledge to identify how to stop the package
> appearing: maybe remove an image feature from your image, or stop using or
> redefine a package group.  At the end of the day the images and
> packagegroups in oe-core are examples and if they're not doing what you
> want, you can write your own.
>
> The only thing in oe-core that depends on taglib is GStreamer, so that is
> being pulled into your image some how - likely though some package group or
> image feature.
>

@Ross: Thanks for the response. I was having difficulty in following
the .dot files, anyway I found the dependency chain by a hack. I
removed the speex & taglib recipes. While building it complained of
the missing recipes with the dependency chain. So thats how I got it.

Anyway thanks for responding.

@Leonardo: Sorry, I will remember this next time. I thought when I was
asking a generic question recipe specific logs may not be of help. So
I did not put it. But anyway, its good to have more information.


Regards, Pj

