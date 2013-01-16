Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76DFAE006C2
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:37:18 -0800 (PST)
Received: from mail-gh0-f197.google.com ([209.85.160.197])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 16 Jan 2013 08:37:05 -0800
Received: by mail-gh0-f197.google.com with SMTP id f15so2315108ghb.4
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:37:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=6JTzPBYt+SQ+LakjgI6DzNsLU5bcCRJMGhQENKPo4DE=;
	b=XBQfCAmZD7MBtZIQrpYy1ttEzeNpPNyd9Nk1gN86MHBwZ8TV8DFc+/z1OSgtHfvER6
	6sTqnPVEo+FZ+rk58zgJmjNp6Swh7gPpRskG/K6tJV360MDVy1dWudA6NeGfcz0wxu3h
	/PRSjRG4J+o9M3NL0nJI6gCyAnH0EIWGlKhVvU4RcUzNFrR8eVTwIzuBSHJZM0QlW2yt
	n2Pcn23YOBFh2L9Hirin1l2gqOifGrnzkf3AbhQaBHH/KUW6hRxTMfbFJkqSA+iyW7tp
	nOgR8srsiCARbJoGYMeM5XxHSFARvCAvfqvv0ljrzzo0WYg1/b9kTzEcEiMMpCd+L7j3
	S4mA==
X-Received: by 10.52.66.71 with SMTP id d7mr1591719vdt.121.1358354219908;
	Wed, 16 Jan 2013 08:36:59 -0800 (PST)
X-Received: by 10.52.66.71 with SMTP id d7mr1591710vdt.121.1358354219775; Wed,
	16 Jan 2013 08:36:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Wed, 16 Jan 2013 08:36:39 -0800 (PST)
In-Reply-To: <50F6D326.9000500@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Jan 2013 16:36:39 +0000
Message-ID: <CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQk0nY+C/Cdo/9gvqsxSwUgVEkEOrmfAJT/FnTXb70/w+TNiJO45co20EVjt/CzG94J3a+J1Cz9otz7GhhX13eGSO0JjXou53RGhRu2x/L8RGdKoKVW5LE1uhea/r6nGu4HCfWpn4Pmt6uo92S2Ux3TlNXD7YQ==
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
X-List-Received-Date: Wed, 16 Jan 2013 16:37:18 -0000
Content-Type: text/plain; charset=UTF-8

On 16 January 2013 16:19, Gary Thomas <gary@mlbassoc.com> wrote:
> I have an image based on core-image-sato.  How can I enable this
> to use the full gnome icon set?  e.g. I run an application
> which uses GTK+ directly which has a button using GTK_STOCK_MEDIA_RECORD
> On my Sato based device, this button just says 'Record' whereas on
> my desktop it shows with a nice red record icon.
>
> Is there a way to make this work on my Poky/Yocto based system?

Did your image include the gnome-icon-theme package?

Ross

