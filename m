Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86922E006C2
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 10:14:20 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id wp18so2525227obc.15
	for <poky@yoctoproject.org>; Wed, 09 Jan 2013 10:14:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=rexO2ah2ndN/zLH5pVHIm/gha/oljjJogsA7vlgw1sE=;
	b=H5kta03N5EpM2t36CjExI6PvwfIx2xBENviKdl8gnFWuyHy0ifZsHGaW5+aI5DLi4q
	aeuDQ67MkqUcBHfrCXBTtbE0hLpgjBsBzUNGYD2dW/AGJMxP/r+biuUqvjmgdB8xX4ik
	UQIb9fs7xY4NzD+TRhrHFVViETSKPAPrMpM5pZH+TShVZ74myeYnZTrjcZSO4TLcdp42
	WBCRjh87hD9EICPIs17NERKk6yWxYI3S4OoR9ydrwcuW6dLXUXuZgq2F1zc2WQHYbyAV
	Ov2n9ABerz6Th2WnqFPBOD2Po4shDU56Llzf4ALnaLjSt1rcVQqpOJTcOKzxWgKIY/p9
	MLGQ==
X-Received: by 10.60.32.33 with SMTP id f1mr40296662oei.122.1357755260009;
	Wed, 09 Jan 2013 10:14:20 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id y20sm35362499obh.17.2013.01.09.10.14.18
	(version=SSLv3 cipher=OTHER); Wed, 09 Jan 2013 10:14:19 -0800 (PST)
Message-ID: <50EDB3AC.9050804@felipetonello.com>
Date: Wed, 09 Jan 2013 10:15:08 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Iorga, Cristian" <cristian.iorga@intel.com>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
X-Gm-Message-State: ALoCoQmfGHp+dNND2wqWFZ+QzXJNLX9ckf4tg3tyTxEp7Ci3MKs9cyDgXrKxzdV9WGSppz1Q03a1
Cc: "Felipe F. Tonello" <ftonello@cercacor.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] connman: fixed init script, so it can run with nfs
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
X-List-Received-Date: Wed, 09 Jan 2013 18:14:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hi Iorga,

On 01/09/2013 02:12 AM, Iorga, Cristian wrote:
 > Hello Felipe,
 >
 > I have some questions regarding this patch:
 >
 > 1. On which hardware/machine have you tested this patch? (real 
hardware, qemu machine, etc)
Real hardware.

 > 2. In what way is connman affecting nfs? In other words, what is the 
root cause?
When connman tried to take ownership of eth, it crashes the nfs, that is 
hosting rootfs for instance, connection.

 > 3. Which version of connman are you using?
I'm using 1.9 but I tested this patch on 1.6 as well.

 >
 > I am asking these questions because I am working on something somehow 
related, and I think a more general fix might be needed.

I agree, this is not a generic patch. But it works on most of the times. 
Also I think it's better then just disabling ConnMan with nfs.

Felipe

