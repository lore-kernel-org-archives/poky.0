Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ABF3E00DDC; Fri, 19 Jul 2019 15:28:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E407E00BA1
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 15:28:22 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id 207so30077940wma.1
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 15:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=2SRC2X0hJgu6id531bTClj4tV9Y4RqMdvj747SzBrQ0=;
	b=aLeeAtsIdjRU2isl4fSUL2Cdmg8vZuM2dJu0tqJLmbSiJVqFwJmmOueStzVwmo4+db
	QFbZtS93zN4jM9XOoAzk2DYMasdoB75WlWCJSPhxmNhtGeFgAfqldNquK1/QeccTSOGR
	qxw0kxiAuhXfyuihd0Bah7oXLEL8aqw6JEZEQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=2SRC2X0hJgu6id531bTClj4tV9Y4RqMdvj747SzBrQ0=;
	b=p+H6THq1e7iWLqas1VHXYGU8yk9KePcqj/SgJspFL7FBpBZ0ZhOkYzpoL2t/qfDisA
	uywnjm7cHLNfQL9nL6qiahYpMyD9Gj3o2TX8opdmURLOfGXSud0GJ8KlHuBLWZMti7E3
	UojAeR8mPk9TsED0qTcxF16T+BPxJZel8EZHrZTaqBvPm/b329mEQdQT5EMSCOM/zT+p
	9jj+63nZE7sET8dBegnjn1PRh8pzNb5DQTEhS5AEPY03YldxPs0j+8VGW7IW1A//JUwC
	nPDGQVmFzAjDsT386O6N4Lkbhw2uFRbrgpoBWr+e48+cbwqbrxMgrQCnykdGP7qZ13ZW
	wf8g==
X-Gm-Message-State: APjAAAVLW1rhuMiKQI0PiqA26N3jd7KLI/039W63Nbl3T2iYAsvaFtGF
	K7rBIf191Rp9vNwqt9njE8+5L0QQ+xU=
X-Google-Smtp-Source: APXvYqzDIqokswbpPSGjXaPbufcNNx6jdqSujx9cdXzFGreia/Syz08gyt21yJDwcPKLuEAy9GdLUw==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr51057166wme.98.1563575302200; 
	Fri, 19 Jul 2019 15:28:22 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	f70sm34303408wme.22.2019.07.19.15.28.20
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 19 Jul 2019 15:28:21 -0700 (PDT)
Message-ID: <a3ee2977ee2d63f1908f110d9273352815ba7d35.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Burton, Ross" <ross.burton@intel.com>, Kang Kai <kai.kang@windriver.com>
Date: Fri, 19 Jul 2019 23:28:19 +0100
In-Reply-To: <CAJTo0LbmYp-70L=Z_T0jE4xS1mR_vLXKQE18O_EpeEwD6wdroA@mail.gmail.com>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<CAJTo0LbmYp-70L=Z_T0jE4xS1mR_vLXKQE18O_EpeEwD6wdroA@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Fri, 19 Jul 2019 22:28:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-07-19 at 22:35 +0100, Burton, Ross wrote:
> On Thu, 4 Jul 2019 at 15:40, <kai.kang@windriver.com> wrote:
> > +++ b/meta/conf/distro/include/init-manager-systemd.inc
> > @@ -0,0 +1,6 @@
> > +# Use systemd for system initialization
> > +DISTRO_FEATURES_append = " systemd"
> > +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " sysvinit"
> > +VIRTUAL-RUNTIME_init_manager = "systemd"
> > +VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> > +VIRTUAL-RUNTIME_login_manager = "shadow-base"
> > diff --git a/meta/conf/distro/include/init-manager-sysvinit.inc
> > b/meta/conf/distro/include/init-manager-sysvinit.inc
> > new file mode 100644
> > index 0000000000..7725b30e1e
> > --- /dev/null
> > +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
> > @@ -0,0 +1,6 @@
> > +# Use sysvinit for system initialization
> > +DISTRO_FEATURES_append = " sysvinit"
> > +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
> > +VIRTUAL-RUNTIME_init_manager = "sysvinit"
> > +VIRTUAL-RUNTIME_initscripts = "initscripts"
> > +VIRTUAL-RUNTIME_login_manager = "busybox"
> 
> Back when I integrated systemd into oe-core one of the use cases was
> a single distro that builds a main image using systemd, and a
> rescue/update image using sysv/busybox.  How is this possible with
> this system?

We're still missing one or two init system setup variants, I was
planning to add those and convert our autobuilder tests over to use
them rather than the fragements that are currently coded into
autobuilder-helper.

> Personally, I'd prefer to see the DISTRO_FEATURE wrangling left out
> of those files, and let the user ensure the right features are set.
> After all, systemd will refuse to build unless the systemd feature is
> enabled.

With the addition of the "none" default, users aren't being forced to
use them so that can do something custom or use a precanned default
which I think gives the best of both worlds?

Cheers,

Richard


