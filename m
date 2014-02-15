Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2AE5E0044C
	for <poky@yoctoproject.org>; Fri, 14 Feb 2014 17:22:01 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so21277085qcv.33
	for <poky@yoctoproject.org>; Fri, 14 Feb 2014 17:22:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PJUXKgdHZ4LTfFX4Ff0IcdBMwHs/mQIpVLuOGxMnPd4=;
	b=HIIho5pkdDR6CIpXpvGkxZiaTUzTD91xp8VlHx5pKCT6109dk4AKtN7TF3v8V+1gRP
	cWl9xCj+BPqmamS5BOJTD+mhNSRERCbzsFDSVd/AZGMd05XOL0045f7wewi99j+JSJ2y
	+PMfKaxN/x2VWIjHX20HPGUuIZFsrrGwIguYVTYwvhuu5iKbZed9q8CMWNhZiPsEsiIY
	2EtTp2AQd8lol+vJlJbPE8lvKX8CHvcq7kJ0jVIw0pGlpzhIS2NgIHjHRPerM9BHx0gx
	qMlM2EYwVA7dLBS4yN18+a0WJhZ4GcQGGKsETBbhHufnlYDH4VI7cq+aL7b49qcJ8NWG
	3d+Q==
X-Gm-Message-State: ALoCoQno4DuosXsFRqtTSyil6toY4HIlGVqnfvJqxD4nyctvyJaxlcW6c0ZQtkJov24cy/mbIvjK
X-Received: by 10.224.98.139 with SMTP id q11mr18898528qan.64.1392427321226;
	Fri, 14 Feb 2014 17:22:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 14 Feb 2014 17:21:41 -0800 (PST)
In-Reply-To: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
References: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 15 Feb 2014 01:21:41 +0000
Message-ID: <CAJTo0LZb-LEWRa_zEgSe7wFGkogpiyT0X-_pUSf6iEmZOQnuaQ@mail.gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: Poky Project <poky@yoctoproject.org>, jimwall@q.com, brian@crystalfontz.com
Subject: Re: [for-dora][PATCH] matchbox-keyboard: daemonize launch
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
X-List-Received-Date: Sat, 15 Feb 2014 01:22:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I know this has been sitting unmerged because I said I'd review it and
didn't, sorry about that.

On 7 January 2014 04:02, Alexandre Belloni
<alexandre.belloni@free-electrons.com> wrote:
> -if [ "$CMD" ]; then
> -    # Delay to make sure the window manager is active
> -    # by waiting for the desktop to say its finished loading
> -    dbus-wait org.matchbox_project.desktop Loaded
> -    exec $CMD
> -fi

Whilst I agree that using .shbg is unwise I'm not sure this is the
best approach.  Why not just rename the script to .sh (gaining a small
optimisation by not forking when running it) and simply have this
block to be:

if [ "$CMD" ]; then
    # Delay to make sure the window manager is active
    # by waiting for the desktop to say its finished loading
    ( dbus-wait org.matchbox_project.desktop Loaded && $CMD ) &
fi

Ross

