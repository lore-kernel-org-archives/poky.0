Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7E7FE002AB
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 10:14:01 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id ta14so2499654obb.5
	for <poky@yoctoproject.org>; Wed, 09 Jan 2013 10:14:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=uXTFpNibCDdwsmGgrTSXD+jLcjfmVI/lhIOZvtRFERw=;
	b=TAa9ExrpRBFA6s9DTXpyeTJTmuP03uysi0AVJOlZSeC3HQv9KPmEo6Fc7OH9wyA8nL
	5mKu30uZX6qc2rMy3RjuTBUNxzS9nm9m5TzKhmY+5A2suBnIa7pYN586NdHThJk5+ITG
	Zv7CM6xdtgvhExcvIeXPG1WsunZb/+M3zEPKN89BbE7Q11NhwgHuPjRqYeH3ZTad5O7R
	cJFysD6znNvghopHf8l/3Qr8CvdVQaIbf2AuHLH8nUvQLTwY8qYVTztig7lEF2H7Irj2
	XT/C7PdNx9o2gV6q2xv9mMzoDq53fS6/xDs4tGIPyQxolLsq7nXv9CpaDNPTHpkOgERo
	8AMA==
X-Received: by 10.182.150.72 with SMTP id ug8mr49146105obb.1.1357755241081;
	Wed, 09 Jan 2013 10:14:01 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id 7sm3047889obu.4.2013.01.09.10.13.59
	(version=SSLv3 cipher=OTHER); Wed, 09 Jan 2013 10:14:00 -0800 (PST)
Message-ID: <50EDB399.509@felipetonello.com>
Date: Wed, 09 Jan 2013 10:14:49 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
	<1357736629.13022.55.camel@ted>
In-Reply-To: <1357736629.13022.55.camel@ted>
X-Gm-Message-State: ALoCoQmfy09k5emEhHDkYs+bDSWiyMtU4nZCDWemRki0mOilsathxxIiHx1WRD3zV4/klSCUhwoV
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
X-List-Received-Date: Wed, 09 Jan 2013 18:14:01 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Hi Richard,

On 01/09/2013 05:03 AM, Richard Purdie wrote:
 > On Wed, 2013-01-09 at 10:12 +0000, Iorga, Cristian wrote:
 >> Hello Felipe,
 >>
 >> I have some questions regarding this patch:
 >>
 >> 1. On which hardware/machine have you tested this patch? (real 
hardware, qemu machine, etc)
 >> 2. In what way is connman affecting nfs? In other words, what is the 
root cause?
 >> 3. Which version of connman are you using?
 >>
 >> I am asking these questions because I am working on something 
somehow related, and I think a more general fix might be needed.
 >
 > I'd also add that:
 >
 > a) Patches to this part of the tree need to go to the OE-Core mailing 
list
Ok.

 > b) Unconditionally running the expression is inefficient, it should move
 > inside the if statement as it triggers a number of exec calls. This may
 > sound trivial but that all mount up.
I agree. I will fix that before sending to OE-Core.

Felipe

