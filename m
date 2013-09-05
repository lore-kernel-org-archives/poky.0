Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AB57E0154F
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 02:47:54 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w16so949957vbf.35
	for <poky@yoctoproject.org>; Thu, 05 Sep 2013 02:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=IkMeoOxxg6waM6UuSz146yVAkAXFgoXJ90Jw5hVEQlY=;
	b=l43lfC4dIt3zyB+Zr7VFebCM9kjzJ6sont7xfzIyTH4/u/vKjwZO4fdob+PDTE28Vc
	NU0FYSjmvqwp5PlLsBYtY3W8CShunrxyLTRxcT4xhsXy+A6lw6IUSxLeYQ7CEYAcnJTV
	18cz9SaN5tWWptbHwheG53EaRpUfobtmF/LFlY+tKWkzz6Tw6EytaxvXQTkXcgE50HJg
	Q9prD0kyy4pWHxx5cjJOQo9HRYAQw7FssA8v27cqphKw31U2A5VDw9kQqOJsuw75qE+o
	RWeCB/pzvQaJhfPPSiPAO1EwlFe/ERDxgknlrM4nyW7ueOKoP0Cqhudr0f8el15OZ96O
	yQIQ==
X-Gm-Message-State: ALoCoQmOL0vshcCwoi53y1usFbMXB7FtyQBqg0JJAMzu51RFiQ2rf8tfuC5C1UTX5eqJyPSgylSr
X-Received: by 10.52.244.116 with SMTP id xf20mr1911626vdc.16.1378374474454;
	Thu, 05 Sep 2013 02:47:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 5 Sep 2013 02:47:33 -0700 (PDT)
In-Reply-To: <1378352101.14029.52.camel@dvhart-mobl4.amr.corp.intel.com>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<CAP9ODKou8KFNUVjjMq7wcY8wJ5m-rh4YGpuFTA_JugiSis7dEQ@mail.gmail.com>
	<1378352101.14029.52.camel@dvhart-mobl4.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Sep 2013 10:47:33 +0100
Message-ID: <CAJTo0LZb5hTNAjTJvL2ueRWqe1PWPUv3yU-fbobwjcAis-7JCg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yunguo.wei@windriver.com, Poky <poky@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 0/4] Updates in support of genericx86*
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
X-List-Received-Date: Thu, 05 Sep 2013 09:47:57 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2013 04:35, Darren Hart <dvhart@linux.intel.com> wrote:
>> > Some of the oe-core changes could be contained in the meta-yocto-bsp layer, but
>> > as these changes come from meta-intel, they are needed by multiple layers, and I
>> > felt it might make more sense in oe-core. If people object to the mga or intel
>> > xserver video drivers, I can respin those for meta-yocto-bsp.
>>
>> QEMU does not need them so they should be in meta-yocto-bsp.
>
> I'm fine with that if that is the consensus. Does anyone else care to
> weigh in?

By that logic nearly all the X drivers in oe-core should be in
meta-yocto-bsp (synaptics, intel, modesetting, omap, omapfb, keyboard,
mouse), but then we'd be forcing people using anything other than qemu
to use meta-yocto-bsp (or duplicate the recipes).  A more nuanced
rationale for keeping modesettings/intel/etc is that whilst the driver
isn't used on QEMU it is in use on a large number of machines so it
can be centrally maintained in oe-core.  I'm not convinced this holds
for -mga (unless you're reading this from the late 90s) so it should
be in meta-yocto-bsp.

Ross

