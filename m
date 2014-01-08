Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E47D8E0082D
	for <poky@yoctoproject.org>; Wed,  8 Jan 2014 08:09:32 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id c9so56935qcz.41
	for <poky@yoctoproject.org>; Wed, 08 Jan 2014 08:09:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Zx1oUm5E8XqxMiuaalxYNdvHck+oUSaXQ03AGrfT8UU=;
	b=gyIMY8umKjISl7jlip532FxfhfGlg5cOZlnJPS2khxgrBFqfa+6ISifMDO6Zwy8NZa
	QdsZe8NSlYhNwKrwVQypIv93sDVAWPRuQEyBDCE9sFfxyWku2K/pYydjdMTHJi739Pt7
	75LyuO8JG5QJMbBEDQa6oFkEMNHpwl7IavFQLbd2XlkdSwZ5Y9xGoed/qOfpcjuylTGP
	DAdGdfTq3ilwVPC2sGLRQV26U3ysLWVVt6Z+TNvkZ2EdRMcdtyayVeTQwEuHo4yvXM3S
	c0KdHz0eGBSmZb/M0NBgmQF66gegnb4PlgA1Fk4SyGeCpcPnbt1N/GGFiffx9W05RMrR
	Ibug==
X-Gm-Message-State: ALoCoQkHhXTsi33Y+g7CtUZdrTXV+rb8OYZJ3HNnvkfVy+51qPYIL1nRMcSF5FNtbvgMSAff2ffq
X-Received: by 10.229.122.195 with SMTP id m3mr201502894qcr.7.1389197371300;
	Wed, 08 Jan 2014 08:09:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Wed, 8 Jan 2014 08:09:10 -0800 (PST)
In-Reply-To: <52B8DECA.6060704@balister.org>
References: <CAJTo0LZsBfxGm=OJPa++egDjL6L0ZABMebTtTr_Bmw_TdQrohg@mail.gmail.com>
	<52B8DECA.6060704@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Jan 2014 16:09:10 +0000
Message-ID: <CAJTo0LaEgLWZHk34e-_-+z69Zw3J+S1zGFFJAONjfYBDQ1TehQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Poky Project <poky@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Piglit in Poky
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
X-List-Received-Date: Wed, 08 Jan 2014 16:09:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Despite a good start this thread got rapidly hijacked, so let's try again!

On 24 December 2013 01:09, Philip Balister <philip@balister.org> wrote:
>> 1) Move piglit and deps to oe-core.  Piglit is for QA purposes only
>> and pushes the boundaries of "core platform".  In a sense this is a
>> repeat of the discussion we had with Midori...  does oe-core contain
>> everything needed to sufficiently exercise the core components it
>> ships or not?
>
> I expect Richard will push back on this, and I would support him here.

Probably best to let Richard speak for himself here. :)

>> 2) Add piglit and deps to meta-yocto.  Probably a new layer called
>> meta-yocto-qa (or similar) because the Yocto Compatible guidelines
>> forbid mixing distribution policy and recipes.  We'd need to sync
>> meta-yocto-qa with the pieces of meta-oe that we want somehow, but
>> that's our problem.
>
> So meta-yocto is right out. I'm a user of numpy, and I certainly do not
> want to include something called meta-yocto-qa just to pick up numpy.

Right, so my point with the syncing was that this meta-yocto-qa layer
would be a copy of recipes from other places through combo-layer, and
would be clearly marked as such.

Reviewing the options:

1) Add python-mako, python-numpy, waffle and piglit to oe-core, for
all BSPs to use.
2) Add python-mako, python-numpy, waffle and piglit to meta-yocto
(effectively read-only clones with combo-layer, maintained in meta-oe
still) for Poky to use.
3) Add meta-python layer to Poky, and waffle/piglit to meta-yocto
(read-only clones) for Poky to use.

Paul raises a good point about other BSPs potentially using Piglit to
test their GL stacks.  Do any other BSPs test their GL integration,
and if so what tooling to they use?  I'm only pushing for Piglit
because it's what the Intel driver team use to test Mesa, but if
nobody else wants to use it then that's an argument for keeping it in
Poky (or even cloning it into meta-intel?).

Ross

