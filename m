Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB1EE01468
	for <poky@yoctoproject.org>; Mon, 21 Jan 2013 04:25:29 -0800 (PST)
Received: from mail-qc0-f198.google.com ([209.85.216.198])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 21 Jan 2013 04:25:28 -0800
Received: by mail-qc0-f198.google.com with SMTP id l35so9810474qco.5
	for <poky@yoctoproject.org>; Mon, 21 Jan 2013 04:25:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=f7or4hkAq02yO2zsOFEWWeS5gTWd3vbwrKE+jOO5UKM=;
	b=f7g5X61qY6aTMUv3KEiCKefwypbtDHW7Qs5O1P0A1oYJTihi6K2xjb1Pg8g55M2Je4
	aW8S6GaHSpw8J87kquaZkEq8yuv2ymjqlneItq1ZHIV3Dd5G/Ta1m5YJ6NumlDMfBCGZ
	gkIgxfuOxOyii8Hml4IpW5zq0kBRIfE7yzad/QEfvVaID37Kl8N+1z7gjmu2hm8128XM
	WCoeVego5Uf/tlF+R5H3Rg6awL5KIApEBaNeCQl9mojUXdvhuXlmtSflsshFBSgLAS6M
	FqUD+C+sxEjGVlwUOEiSmxX/v/Jw48yl//ht63QqNq6gV74B/oQwfaixmvnWyFB8d+nQ
	akGg==
X-Received: by 10.52.72.137 with SMTP id d9mr2987493vdv.105.1358771125153;
	Mon, 21 Jan 2013 04:25:25 -0800 (PST)
X-Received: by 10.52.72.137 with SMTP id d9mr2987479vdv.105.1358771125031;
	Mon, 21 Jan 2013 04:25:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.152.232 with HTTP; Mon, 21 Jan 2013 04:25:04 -0800 (PST)
In-Reply-To: <50FD2AB4.7040105@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com> <50FCE77D.3020008@windriver.com>
	<50FD2AB4.7040105@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Jan 2013 12:25:04 +0000
Message-ID: <CAJTo0LaO_6B23yaQSkwQ7KmCsndL8an5oLBNEmUuqf876Yz2+Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlXmlFm77mZz8GmnfoC+L0hUfUtJyd/2Y11/5yNsMBovY09ysZwMUygJr/uca9DEz4jClFDTwMlk/ill0FDFEeixfyF1Ta/rFL5/ArJXxboZ20qttfF323GVMAG1zfAn6gxNvgBIGQyGEiwQG7l+/CFmKhZ/Q==
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
X-List-Received-Date: Mon, 21 Jan 2013 12:25:29 -0000
Content-Type: text/plain; charset=UTF-8

On 21 January 2013 11:47, Gary Thomas <gary@mlbassoc.com> wrote:
>> Gtk has a config option for that (icons beside button text). You might
>> need to turn it on.
>
> It seems to be much more complicated than this.  If I run my application
> using the native X server, i.e. on my embedded LCD, I get on the simple
> "record" text in the button.  However, if I run the same application on
> the embedded unit, but the display is remote (e.g. on my desktop using
> ssh -X), I get a button with icons.
>
> Something very tricky is afoot here...

As I said earlier, this configuration option is generally controlled
by a root window property (this is "xsettings").  Digging around shows
that it wasn't being set by any of our xsettings code, but then I
remembered that it can also be overridden by the GTK+ theme:

http://git.yoctoproject.org/cgit/cgit.cgi/gtk-sato-engine/tree/data/gtkrc-vga

The Sato theme turns it off.  Feel free to patch out
gtk-button-images=0 in your system.

You got the button images when you run it on the device but with
DISPLAY over SSH because it's again using xsettings to detect the
theme to use, doesn't have whatever your desktop is using, and falls
back to Raleigh, which doesn't set this option.

Ross

