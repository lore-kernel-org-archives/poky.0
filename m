Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F11E006F6
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 07:07:31 -0800 (PST)
Received: by mail-pd0-f174.google.com with SMTP id z10so6169236pdj.19
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 07:07:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=rc4IaoCNHHTlqAbzA1WKkwR6t+mvXZFRFUv704NZdfY=;
	b=UmLbg5HPnrWVpTC9sRt4/MboxQjjWmDvebKyhAhKwPKNhWllVTG9qWUQZFrVeCqzMe
	VeVOZmPZQGs+isA0150CiIWLAIM9ZHhO+Va89zdUynhq6IkWTYyfYKiLHgtSWNhpWN5W
	fYwkQJUuq2t2f/4YRM/+Rrm7EKdFmavAW1MkIqMRS8bOumYAEH6lJ3jTT9lJHAXngHIf
	/d/22lRajsTiQpczCj5XaejftbM9b2Us2hdgwxw1PvUlIytEkSsLKJGXTNMn6XAWGpkM
	ee9RQETg9rXdb/XtQsqjfUJ3okpawd1L0cFl60RHc+GLQeTBk3NG2f+qUuHD4ybOx70j
	a3iA==
X-Gm-Message-State: ALoCoQkCVha++CDQsNkVl9sp//oLRLfixMUF8XSdu8+Ub+QkgOQerGQ4oTgbbhq5co7IEnZLb1Li
MIME-Version: 1.0
X-Received: by 10.68.189.5 with SMTP id ge5mr37955942pbc.42.1392044851241;
	Mon, 10 Feb 2014 07:07:31 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.21.228 with HTTP; Mon, 10 Feb 2014 07:07:31 -0800 (PST)
In-Reply-To: <20140210145748.GM23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com> <20140210095533.GB3194@piout.net>
	<20140210145748.GM23583@axis.com>
Date: Mon, 10 Feb 2014 15:07:31 +0000
X-Google-Sender-Auth: Pn9Xnp3ihbl3ktVYFOl7wZ5NPvo
Message-ID: <CAOMwXhOKYK=yxvrEE7q7KY3jC5Ec6ZEc2g29s0HuVAvorU0gBg@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Olof Johansson <olof.johansson@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 15:07:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 10, 2014 at 2:57 PM, Olof Johansson <olof.johansson@axis.com> wrote:
> On 14-02-10 10:55 +0100, Alexandre Belloni wrote:
>> What if a minor distro actually breaks ? :)
>
> Debian have policies that limit the type of changes entering a
> stable point release, and it is my opinion that we can assume
> that a new point release doesn't break anything (to the level of
> insanity --- this is SANITY_TESTED_DISTROS we are talking about
> here), and then react to this not being the case instead of the
> other way around.
>
> It's quite unfortunate that we have to update it ~every other
> month. These changes are usually not backported to the stable
> branch of poky, and as such, people using it will have warnings
> about using a non-supported host distribution, even though this
> isn't the case.

How is a software distribution supported if untested?

