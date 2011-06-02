Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 769FC4C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 09:32:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so1087996vxa.35
	for <poky@yoctoproject.org>; Thu, 02 Jun 2011 07:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=y9huyomQaNY/JSYec1JsV49aTwmB4VUlKv0IvRkoZNA=;
	b=GbG/qtgikmKm6tIRz0ZXbH6qCG2HdVojZ2zgvIW/GGONs7qMkWhV8JKzF68VYMaWZ0
	bH1aywWYceU1YUAL1NIg/UiUL9neMr/ALIYnSHH6qIVjTLJs5xaTHjRnzblJB/Y3h48s
	vj8ECb11yVDyv1eZkEHJns/veTCL4CHmY8hNk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=KQQgrIRcJOTi9BCTFXfXF1Y/r8QZ2r4WEsGN15rMU4x+lfLJZJZ1hdqVigsPHlKRnv
	w7+czndAYonPVePcHxl60Sk9fjLYdzM69ULjvouQ76Pe8lyOYouXgQb1p2b40yMXUr27
	aUzW4Z7bahjZZMqBsPX0k+hmPp8lkSzR8MmWg=
Received: by 10.52.73.67 with SMTP id j3mr1038076vdv.75.1307025141031; Thu, 02
	Jun 2011 07:32:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.101.134 with HTTP; Thu, 2 Jun 2011 07:32:01 -0700 (PDT)
In-Reply-To: <4DE79CB7.8070300@mlbassoc.com>
References: <4DE79508.7010305@mlbassoc.com>
	<BANLkTikZXYszA=Z_amB+-m-TV+Bru4my0A@mail.gmail.com>
	<4DE79CB7.8070300@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 2 Jun 2011 07:32:01 -0700
X-Google-Sender-Auth: sMxynaicRaMdU33OwrLFWqEyPKo
Message-ID: <BANLkTinLRTXi_5vawQLjUYzuO_z=iSWAJg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Duplicated error messages
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jun 2011 14:32:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 2, 2011 at 7:22 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> This is my fault -- at least, the continuing on is. As a part of
>> working on improving the exception handling in bitbake, the behavior
>> of exceptions in event handlers was changed. =C2=A0We should likely chan=
ge
>> it back for the SystemExit case, or add a more explicit method for
>> event handlers to communicate with bitbake proper. Sorry about that.
>
> Thanks. =C2=A0Even if this is not the desired behaviour (bitbake used to =
just
> quit
> at the start when this happened), it is pointing out two other problems;
> the duplicated error messages (I'd look for why this happens, but I reall=
y
> wouldn't know where to start) and the less than helpful Python traceback.

Indeed, regardless those should go on the ever growing list of ugly
error message issues :) I suspect at least some of the error
duplications which have been reported are caused by the fact that
python tasks both emit their messages directly to the user (not the
case for shell tasks, obviously), and to their log file, and the log
file is then shown to the user on failure. For the python case, either
the task shouldn't be able to output directly to the user, or we
shouldn't show their log on failure, I suspect.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

