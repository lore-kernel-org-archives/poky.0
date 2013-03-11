Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D729DE00709
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 08:33:53 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id fq11so1737617vbb.10
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 08:33:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=T30W7+fnx710CnNPrPcE6MoUQ+cl1EoTLYlIQTcwWBc=;
	b=nFbo13Gy+ThqdemSyw7eCxetyaFEQxY/1e7ILBM9gUmN9jf4AJNhfsOiv8FWmjXh/w
	1SlaP77oy16Jt6nVTS4Wl9unOJDqXTZBcgPvKlX9Qe+ONP/bhfNIlEKOW0RqL+Oi7Xid
	UnWxYeXGoNUFvwrCLOGHHzjaeWUXoNA+N1Mlr3w+BxANJmxzgKeBG/a5jtbCOQ3GP9r+
	dlHCVmcu+AU/6lPv8auAvMYS/X8uvlLnbVV4PJ1AUd0A/rhKFRUf011WmfF/NKtVn3AU
	ACOaVR5ZAgSVYotloHk+jWpeqsCTWlDq+HSYX0KusjFH8WZh8BZnFA7pshjF93x8GPBW
	LDbA==
X-Received: by 10.52.16.40 with SMTP id c8mr4345842vdd.99.1363016032942; Mon,
	11 Mar 2013 08:33:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.213.2 with HTTP; Mon, 11 Mar 2013 08:33:32 -0700 (PDT)
In-Reply-To: <1363015559-18728-3-git-send-email-cristian.iorga@intel.com>
References: <1363015559-18728-1-git-send-email-cristian.iorga@intel.com>
	<1363015559-18728-3-git-send-email-cristian.iorga@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Mar 2013 08:33:32 -0700
Message-ID: <CAJTo0La9P2ppXqLn=76D-bp+PKLvHWgtLGAboG19yxO+QH7rVA@mail.gmail.com>
To: Cristian Iorga <cristian.iorga@intel.com>
X-Gm-Message-State: ALoCoQm8vLMOUw3pyjBzu9Vxjxaxuv+F6psc6skWmE5+Q/r4FNEidACcbXEALmAa/0x24kCR4Fzt
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/3] upstream-tracking: added dbus no-update reason
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
X-List-Received-Date: Mon, 11 Mar 2013 15:33:54 -0000
Content-Type: text/plain; charset=UTF-8

On 11 March 2013 08:25, Cristian Iorga <cristian.iorga@intel.com> wrote:
> D-Bus 1.7.x is the development branch.

Can we not teach the service that checks about development/stable
releases, as it would be useful to get notifications about a new 1.6.x
release.

(I admit that a generalised way of saying what a stable release is
isn't trivial - maybe a regexp to filter?  i.e. Dbus might be
something like "[0-9]+\.[02468]+\.[0-9]+".

Ross

