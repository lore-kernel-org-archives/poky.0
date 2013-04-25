Return-Path: <andrea.adami@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0045E013C3
	for <poky@yoctoproject.org>; Thu, 25 Apr 2013 14:21:59 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id w20so2347860lbh.34
	for <poky@yoctoproject.org>; Thu, 25 Apr 2013 14:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=45ghjH/rvg828FxtPe4HA9B65E467jqWe6HDZBNRtDs=;
	b=PqcCyKGphNBJHukO/yDCzPQoRe343MXHy9y6q4yn0FywncCHGLkbicE4hu6q9B2XDv
	TrMD4RqugtAI2GCU7evc9eSqe5fZZNwIUbpGHIKYFMRr4QhRluRqNN5n+6BvSnRZYyBC
	EnT53DpbquATNQj2K4oDjprzoy6yA1NLXEHvxxMXyMxdE35koTpVMSP+zRSnAYQ24iaJ
	yd0FGp3/lXqQTIDJXB36Gk9G0M0w1D7mRgtX67rBrzoMn8XISsPKqPJ1K5U1NPikb1V8
	LNkb9QFgN5XNtLAbLlDnMeZa0ekuJLiKJ+1hcNq5hEJHmdixUhcC7+IDv/9t7Y266pBC
	dhFA==
MIME-Version: 1.0
X-Received: by 10.112.132.166 with SMTP id ov6mr20459863lbb.71.1366924917981; 
	Thu, 25 Apr 2013 14:21:57 -0700 (PDT)
Received: by 10.112.131.228 with HTTP; Thu, 25 Apr 2013 14:21:57 -0700 (PDT)
In-Reply-To: <51767DCC.7050105@windriver.com>
References: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
	<1366665616-24832-3-git-send-email-michel.thebeau@windriver.com>
	<CAAQYJAt-wVghaptCaB9zk8qN7nFckPsF-ZTYQ7L0Z0_o6sF=wg@mail.gmail.com>
	<51767DCC.7050105@windriver.com>
Date: Thu, 25 Apr 2013 23:21:57 +0200
Message-ID: <CAAQYJAu7ub4+9mnh5XaFOFJyBkGU3XCfbStYjUPegsgsNb4aKQ@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel 3.8: routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
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
X-List-Received-Date: Thu, 25 Apr 2013 21:22:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 23, 2013 at 2:25 PM, Michel Thebeau
<michel.thebeau@windriver.com> wrote:
>
>
> On 13-04-23 04:16 AM, Andrea Adami wrote:
>> On Mon, Apr 22, 2013 at 11:20 PM,  <michel.thebeau@windriver.com> wrote:
>>> From: Michel Thebeau <michel.thebeau@windriver.com>
>>>
>>> routerstationpro is limited to 16mb flash size.  Exceeding that size may
>>> not be noticed immediately, which we don't want.
>>>
>>> "The current latest kernel for the routerstationpro machine is far
>>> beyond the 16MB of it's flash size [0]. I think it would be good to
>>> [test if the size of the image is above that size]."
>>>
>>> Setting this variable will enable the do_sizecheck task and produce an
>>> error when the image is too large:
>>>
>>> "ERROR: This kernel (size=90230265 > 16777216) is too big for your
>>> device. Please reduce the size of the kernel by making more of it
>>> modular."
>>>
>>> Taken from commit 83716e40edacfd20dec8ef41f415ad5828d4643b.
>>>
>>> [YOCTO #3514]
>>>
>>> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
>>> ---
>>>  .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> index 479a386..769dcc0 100644
>>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>>> @@ -12,3 +12,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>>  COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>>  COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>>> +
>>> +# routerstationpro has a flash size of 16mb
>>> +KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
>>
>> Why would it need an _append_ ?
>> KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216" should be enough.
>>
>> And by the way such kernel sizes look really exaggerated.
>
> Thanks Andrea,
>
> I'll drop _append_.
>
> I'm not sure what you mean mean by exaggerated.  I multiplied 16mb with
> 2^20 == 16777216.
>
> M

My comment was about the kernel sizes listed in the error msg:

 "ERROR: This kernel (size=90230265 > 16777216) is too big for your..."

Not knowing about the specific machine I can only guess this kernel is
embedding an initramfs for some specific purpose...but in my
experience I've never ever seen such huge sizes for a kernel.

Perplexed...

Andrea


>
>>
>> Regards
>>
>> Andrea
>>
>>
>>> --
>>> 1.7.9.7
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>

