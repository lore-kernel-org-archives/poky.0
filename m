Return-Path: <ross.burton@intel.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7FBE013A7
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 08:30:03 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id fs12so11433091lab.25
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 08:30:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=wdtPYPAScpCnmeD/TwCxlQZgLy+yRPau6MKkQhq+cek=;
	b=bAF+DYQtpJ2EAaGM4bcwe5OLQJW3Gp9eJgVIkEiLrnMyVZSw1dfI3/LA0JtJwWyXKJ
	ayU7jakAA9L4UiKmsmPc/H6iZGSbO09cWex32/A7iNhIJ6gAoFNsvxViWzPhRdSGN6ZN
	cnLWOQ24g8buRrZj3nwIhANI1o6TfidnLvSbOQyt0hSD12bxbqKEaY6zhjPwCsT2/+Uo
	ZbYZgjBljY0kDWkvu9EGaAsjGZ7lcMhfpP+IzggoUCivJQWfz6qJBq0WJlXSdHTUODj7
	c0FvYzg18VahsKsqrMwJ4sirUb8wg7qyNpJ0A5i29ChV0lHbFAGn27J1JlFYWzxjrnyU
	G0pw==
X-Received: by 10.152.115.196 with SMTP id jq4mr5966660lab.53.1364225402692;
	Mon, 25 Mar 2013 08:30:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.81.231 with HTTP; Mon, 25 Mar 2013 08:29:42 -0700 (PDT)
In-Reply-To: <51506C09.9060503@mlbassoc.com>
References: <51504DF2.3030206@mlbassoc.com> <1364218498.3097.48.camel@ted>
	<CAJTo0LZ2K0Q4CjrGojjSPwFB+RL6NAkFu5wvZG1s1yr-PD00Lg@mail.gmail.com>
	<51506C09.9060503@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Mar 2013 15:29:42 +0000
Message-ID: <CAJTo0LYR+H_GPH4Dqm66+NE6=SGFmhzDLhiTWDK9p03YEL3D4g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQm9fjd4C5YH492kkRjI6KFjFsJWB84EUSSH6o+Nditrdq8s0KuKrOX+URu15NEpYZmB2e8+
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Calibrating touch screen
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
X-List-Received-Date: Mon, 25 Mar 2013 15:30:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi Gary,

On 25 March 2013 15:23, Gary Thomas <gary@mlbassoc.com> wrote:
>> What hardware/touchscreen are you using?
>
> Sadly it's proprietary and not public.

I'm not surprised, but glad that xinput-calibrator worked!

> The calibration values came from xinput-calibrate which I imported for
> just this project.  As you say, that should get moved to OE-core.
>
> The code in /etc/X11/Xsession.d/30xTs_Calibrate.sh seems totally
> broken (and is how I came to my original question)

Yes. :(  I'll clean this up once I've sorted out systemd exploding
into broken bits after I rebased, unless you fancy submitting some
patches...

Ross

