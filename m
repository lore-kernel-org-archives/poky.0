Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BDCE014DB
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 10:08:47 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id p12so2334331vbe.1
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 10:08:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=7vOYcp4YLmimxSOxqu2DqdREFrhr7oda64Sxo5erJwY=;
	b=cQfblGoEgCJanZcCYTStmnBKatTaqCV9pNKivxrxgjUpSNWoHt5RL1USMkDpMgyk6i
	lQupTbc03QqDeiS526AWyn1gB/OJ+AnhP1LsqeVltBbUnTbWiu8TOhxeoAPkJQWcR09Y
	Ydd0V6ssEEAjsHCe7dj/JD9PFhLTcFc5kcWHOWFXFbNc9KBD0d77GEUeZTfd3A2HGPSU
	DI4tBC7qSAGPkY0UErudqcr//uYLwei1q+vKf9Gljfiafs7IQ+zEayj56PYImmr+5ilA
	e2usx9qGAp7/Tod0gSqZaIwWyQfDdI/BHl+oGpfF9DrNcyVg+ficiY6LkgGGZZqJwruU
	wfNw==
X-Received: by 10.220.153.2 with SMTP id i2mr9025507vcw.53.1365786527123; Fri,
	12 Apr 2013 10:08:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Fri, 12 Apr 2013 10:08:26 -0700 (PDT)
In-Reply-To: <CA+aQ=RMndaWC8Suv2eouL3oNRQYu2yLsTST578+B2hZQ9GsJGg@mail.gmail.com>
References: <CA+aQ=RMndaWC8Suv2eouL3oNRQYu2yLsTST578+B2hZQ9GsJGg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Apr 2013 18:08:26 +0100
Message-ID: <CAJTo0LYGhwgVZOw+MHYMQd96UrH8PjMCEtcx5AkD3gSKo_gjhw@mail.gmail.com>
To: Robert Sheffield <rsheffield2011@my.fit.edu>
X-Gm-Message-State: ALoCoQkLByFunL33CpUZ6MQCMoQtrKIgEZkzjQKzKXLUxr0BbGfd1Z9i+EWqJ3+xxYEEmzbNajyy
Cc: poky@yoctoproject.org
Subject: Re: NMEA data reader/parser
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
X-List-Received-Date: Fri, 12 Apr 2013 17:08:48 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert,

On 12 April 2013 18:05, Robert Sheffield <rsheffield2011@my.fit.edu> wrote:
> I am working with a new dev board and need to parse and sae the NMEA data
> from the Linx GPS device that I am using. I am new to the Yocto project and
> am having trouble with the procedures for usig the information on here. I
> have read about a gypsy patch that may do what I need, but am not sure
> because I can't find a lot of information on it.

It should be fairly simple to write a daemon that does that using
Gypsy, or alternatively gpsd may already support that behaviour.

Ross

