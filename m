Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5971E006C2
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 10:01:26 -0800 (PST)
Received: from mail-ye0-f199.google.com ([209.85.213.199])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 16 Jan 2013 10:01:25 -0800
Received: by mail-ye0-f199.google.com with SMTP id l12so2421846yen.6
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 10:01:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=t5pQpmRea20jvRn0jZhEU6hGxMdiVks2o00qWDYVvtM=;
	b=hC3Pw0bhH8zVdKLvgdtVClVD4hBZzsDzj/EjB+AorQfApcOyBbObjNPWMeHoEEpnYf
	QupKcc274XVV5RuxI/yLr9X85zmrYf+RMDV23EazzHiwroMPzjACo0hZpUmRsW6zX1i4
	/RmSk0UMKf4QJbhBWROsJcYfoCRM2s5B8u/K4avSnoZEkOYrewcNovFVRkKt6LeIlGTW
	+Sl6+7BJVNHZ6NEOaWelJRdICTheOHAvMWac42tQqWDplykfqVBXhnNf2u3P/rsnxSx3
	5iV/912XYVvJFHgj8B6QUaGFNDmU/nHB3Cx2+6eBUMWKJo9Swqo/IvVaNN+bA154gtYU
	TMeQ==
X-Received: by 10.52.17.70 with SMTP id m6mr1933692vdd.92.1358359284609;
	Wed, 16 Jan 2013 10:01:24 -0800 (PST)
X-Received: by 10.52.17.70 with SMTP id m6mr1933685vdd.92.1358359284525; Wed,
	16 Jan 2013 10:01:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Wed, 16 Jan 2013 10:01:04 -0800 (PST)
In-Reply-To: <50F6EA62.2010407@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com>
	<CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
	<50F6D82B.4040001@mlbassoc.com>
	<CAJTo0LY5mLse9jYgG+xa2yHAbQKkp60W8OdUnde1gUDY7M=FZg@mail.gmail.com>
	<50F6DA02.2010305@mlbassoc.com>
	<CAJTo0LaqQn6NVot_DDfpwxVgVgW0S5GmPRmtfTagu7dJAbu8zA@mail.gmail.com>
	<50F6EA62.2010407@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Jan 2013 18:01:04 +0000
Message-ID: <CAJTo0LYDrzDJfqf75vyYj3zTEEt5=83Hw8-jF4h+3e53Q=i7=w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnCys4t8Hi/EgXVwCfOVp8fhs7UarxX2RDqlONIO1unc9gaEN4BFUBEPGU304p2LCIjSms8TdAt3HObP2N1oA0yevMSWQPFwNj6gbhYO1iZAD+JCe9n00O6iFgBrWGyXlglbzov0bbJh+/sA10Wr8/izdascQ==
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Using gnome icons
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
X-List-Received-Date: Wed, 16 Jan 2013 18:01:26 -0000
Content-Type: text/plain; charset=UTF-8

On 16 January 2013 17:58, Gary Thomas <gary@mlbassoc.com> wrote:
>> What application is this?  The core apps in Sato are somewhat tuned
>> for the Sato experience which makes this tricky to replicate easily.
>> I thought there might be a tunable for the button style that we're
>> overriding, but I can't see anything obvious.
>
> Home grown using pygtk and gtk.glade.  If you want to try it, I can
> send an example separately.

That would be useful, this is confusing me.

Ross

