Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA7EE00764
	for <poky@yoctoproject.org>; Tue, 28 Jan 2014 09:30:53 -0800 (PST)
Received: by mail-ve0-f170.google.com with SMTP id cz12so476927veb.1
	for <poky@yoctoproject.org>; Tue, 28 Jan 2014 09:30:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=U1S4oNdA7E2ekTm/ZyvAzARV6tHqDL3D708Bfcyg5Rc=;
	b=ZTR+//HjLCBmAJmG3UJdiIc9dERPFPQHaO4qFFFHxSKzVfqOLTe/oV4xKstHAdpjUB
	/3/kg8uAsdFMKJy1z84PkzH6X/7gpM0f3aYgzPlYbp5Z9R+/2fhVff6rsE2K4lp0/6oO
	gGHnLs4fUM2Z/30CLt7yMADujtlM/BU1lZZU+llQhRBfNDWPWGNrV8PpQhbofdxVjG+x
	CBVmK7hkUJL83I6Lw79G83GYC00HPlvdIcolk3eldrBSUjiPWTZYrUBgRiavAztSKoMJ
	iK3z63XRwip6xEXi2H5Rmdf2d1ujZrdOxxc5bdIUavgMzjnmgEzpCzOIcga7YAjnP0Jq
	Cm1w==
X-Gm-Message-State: ALoCoQlJE/ceYJmbdChAHW8JFaNLutPmigpgPi1tr5nmmrTyLGO5cVOwKFD+PdTXiUPTLUfs+lUt
X-Received: by 10.220.161.132 with SMTP id r4mr805141vcx.29.1390930252397;
	Tue, 28 Jan 2014 09:30:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.96.84 with HTTP; Tue, 28 Jan 2014 09:30:32 -0800 (PST)
In-Reply-To: <1390929793-9170-1-git-send-email-krzysztof.m.sywula@intel.com>
References: <1390929793-9170-1-git-send-email-krzysztof.m.sywula@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jan 2014 17:30:32 +0000
Message-ID: <CAJTo0LaXSPqP083r4qO_b4BfF=ys+QWgctuiVXiziwUROrF9xA@mail.gmail.com>
To: Krzysztof M Sywula <krzysztof.m.sywula@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Revert "poky-tiny: Assume pkgconfig is provided"
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
X-List-Received-Date: Tue, 28 Jan 2014 17:30:58 -0000
Content-Type: text/plain; charset=UTF-8

On 28 January 2014 17:23,  <krzysztof.m.sywula@intel.com> wrote:
> This reverts commit a54932dc373ec130f7a166d144f4d5744ec52097.
> pkgconfig does not pull in glib->dbus anymore

Context for Darren as he should vet this. :)

The code that causes -dev packages to RDEPEND on pkgconfig was removed
in bcc73d26ddff01f0e4bb38eab23c57ef9bf76b04 (so in Dylan).

In the general case of pkg-config, target pkg-config builds depend on
glib, but glib doesn't depend on dbus.  GLib appears to have removed
the dependency on dbus (which was only for unit tests we didn't run
until ptest) in Danny onwards.

I think we're good to go but backing this up with actual built images
would be good.  Krzysztof has confirmed that pkgconfig at least builds
on tiny.

Ross

