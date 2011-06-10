Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7333F4C8055B
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 21:50:20 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5A2oFfc010094
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 9 Jun 2011 19:50:15 -0700 (PDT)
Received: from [128.224.162.154] (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 9 Jun 2011 19:50:15 -0700
Message-ID: <4DF1866B.7010106@windriver.com>
Date: Fri, 10 Jun 2011 10:50:19 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4DF0A70C.7080501@windriver.com> <4DF0E4A8.1000608@windriver.com>
In-Reply-To: <4DF0E4A8.1000608@windriver.com>
X-Originating-IP: [128.224.162.154]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Question about apply eglibc configurability to create minimal image
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Jun 2011 02:50:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

Thank you very much for your detailed comments.

>
>  From the above, I'm pretty sure that "netbase" will require a lot of networking
> components, specifically adding things like libc-inet.  So avoid netbase.
>
> It's possible that keyboard/keymaps may cause additional stuff to come in due to
> locale requirements.. so I'd dump those as well..
>
> sysvinit may also introduce some additional items -- so if it causes problems,
> remove it and switch to the init located within busybox.

sysvinit and  busybox, tinilogin require eglibc libc-crypt support.

And busybox need libnsl, so I try to finger out how to break these 
depencies.

> update-alternatives is what included gettext -- so this might need some
> enhancement to avoid gettext as a requirement.  So I'd suggest skipping it.
> (Note without it, it's likely busybox, tinylogin may not get setup properly...)

I will test it.

> udev is quite complex and drags in a number of components -- so drop that..

RP suggested using mdev provided by busybox instead, I'll do it later.

> Leaving:
>
>      base-files \
>      base-passwd \
>      busybox \
>      initscripts \
>      modutils-initscripts \
>      sysvinit \
>      tinylogin
>
> First see if you can compile the above with a minimal eglibc configuration.  If
> not I can help you work through those issues..  If you can, you SHOULD see a
> fairly dramatic decrease in size.
First of all, I do the minimal with your direction and give you feedback.

> --Mark
Thank & Regards,
Kai
>> Thanks a lot!
>>
>> I made a mistake that try eglibc configurability in a directory which
>> has build core-image-minimal, so the packages which depend on eglibc
>> didn't rebuild, and I didn't find the dependency before. I am sorry!
>>
>> Regards,
>> Kai


