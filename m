Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74D51E01657
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 07:02:41 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id e52so436623eek.16
	for <poky@yoctoproject.org>; Wed, 09 Oct 2013 07:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=9cEguQ4KMQDGP6xYuwz6c3aqQuT82d11au7juhF7qs8=;
	b=KKrMuMGlLH1psb3hen0qGeiaTZk4bIfgWBEs8sKLUJVM17rZuGrKJlSec+WAtOB2Ht
	DsDtXDdQx7t7tugIZBFd9D0261F39xMSaeTYbOVDZ7YKBOqoe1M7YFF6jkrtiKgc7HGG
	r5n/bkmNVKvQMTbkFJPHFxyby4gg8WzqQVw48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9cEguQ4KMQDGP6xYuwz6c3aqQuT82d11au7juhF7qs8=;
	b=frGhlgTFCo2BSIfpIqUwaLIitJK2kzmHm0ht0NG1UwHuZPe85tgTojxYGw54N+zzk1
	6GZhkdn2NfMmtMTalsQgZu+UChT4tTfRJQgNb9PBRvO5iu2W19j6yWXouTniWTNQcn5+
	VsHzzCXp+zYCSGiMVI0YPeWYzYf8erTDhPlcsTWPM7pKs9kLzDdhVFCYnwFyzxmI6XcJ
	P8Y3UZ4vq/7n9NQqxEwg4Cyn6z7/mBngU4L0VT4VYHM0IjWV/+ZkTAUb2+jEuMvOz3XN
	AgSiT+XbGKyFMcstHTrtWGH/dZyfUM0dQlcjSk75sJtQblt2pZ0aAj8qSKGMQ3kKIOaX
	jYhQ==
X-Gm-Message-State: ALoCoQkK4TjEEpl3yC8dn0Pbq2RsoxHYuDNQeoHL9tlQT3ofQqwiH9+keZ/HZiG2JHruOP6rsSzz
MIME-Version: 1.0
X-Received: by 10.14.122.132 with SMTP id t4mr12087097eeh.20.1381327360239;
	Wed, 09 Oct 2013 07:02:40 -0700 (PDT)
Received: by 10.223.131.3 with HTTP; Wed, 9 Oct 2013 07:02:40 -0700 (PDT)
In-Reply-To: <CAJfvnsA2GJ62JiUMhh7v1NLa+_VXjx0gBL+Fv3SCGk=1rK6hWQ@mail.gmail.com>
References: <CAJfvnsA2GJ62JiUMhh7v1NLa+_VXjx0gBL+Fv3SCGk=1rK6hWQ@mail.gmail.com>
Date: Wed, 9 Oct 2013 07:02:40 -0700
Message-ID: <CA+gsK-pLwneEFPazPxZCpS0oHgbL++hFrurt3hVDNNb4bZLmOw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Pablo <kaishos@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Build failure for 0001-Add-linux-support-for-congatec-evaluation-board-qmx6q.patch
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
X-List-Received-Date: Wed, 09 Oct 2013 14:02:43 -0000
Content-Type: multipart/alternative; boundary=001a11c28efaa03e8804e84f569f

--001a11c28efaa03e8804e84f569f
Content-Type: text/plain; charset=ISO-8859-1

Hi Pablo,

Your error message has nothing to do with the Yocto Project build system.
The patch that you are trying to apply to the kernel source does not apply
to that source revision. To fix it you will have to match the patch with
the right kernel version.

:rjs

--001a11c28efaa03e8804e84f569f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Pablo,<div><br></div><div>Your error message has nothin=
g to do with the Yocto Project build system. The patch that you are trying =
to apply to the kernel source does not apply to that source revision. To fi=
x it you will have to match the patch with the right kernel version.</div>
<div><br></div><div>:rjs</div><div class=3D"gmail_extra"><br><br>
</div></div>

--001a11c28efaa03e8804e84f569f--
