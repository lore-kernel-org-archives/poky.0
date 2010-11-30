Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f171.google.com (mail-iw0-f171.google.com
	[209.85.214.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CED04C80815
	for <poky@pokylinux.org>; Tue, 30 Nov 2010 10:05:03 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn38 with SMTP id 38so2040952iwn.2
	for <poky@pokylinux.org>; Tue, 30 Nov 2010 08:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=4iwwvt6+C0+usuC1ueFLmT/BGklXCD1jbKAyvqN3oxU=;
	b=cGbyE60XEmCJLwyXsnTs1D35uuDypR1EzInkljYGaUEqWlIRLCGqL9AWHRFn7vDaAk
	rkG+C6+18JPipmHNA0TEFoGdWmiByVOz3jRVICaYueCzI05FNatoUirNY6KDuOix7usk
	ZmIZMWregLO5sH+4EIH78zFpVF10iYMMOA958=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=jOnwmV6FPw9XaeDjz9n9FZwxTyTfD0TWkBDpDQ26BtbOYr0rx5Lzs+QTuRbqcRuUXB
	n2WMSjB8UMGRgS9qELpZG+MjIqseEGh0WfdmHEYZP9lU1jMc3IlG8HVlq2pTrw1ZxfE1
	qQ6S4oyjb0MAJ+JiMdJk2br0l5nMVIni9yHn8=
MIME-Version: 1.0
Received: by 10.231.39.133 with SMTP id g5mr7535888ibe.161.1291133102526; Tue,
	30 Nov 2010 08:05:02 -0800 (PST)
Received: by 10.231.12.3 with HTTP; Tue, 30 Nov 2010 08:05:02 -0800 (PST)
In-Reply-To: <201011301505.42532.paul.eggleton@linux.intel.com>
References: <201011301505.42532.paul.eggleton@linux.intel.com>
Date: Tue, 30 Nov 2010 11:05:02 -0500
Message-ID: <AANLkTim8Jh_rbhyt3tCmS86a0ohP9i4i5ziQkP0ukyBC@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: scott.m.rifenbark@intel.com, "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Warning - don't use eCryptFS
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
X-List-Received-Date: Tue, 30 Nov 2010 16:05:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 30, 2010 at 10:05 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi all,
>
> FYI I recently had some fairly serious problems with poky and the "encryp=
ted home directory" function in Ubuntu, which uses eCryptFS. Problems I exp=
erienced included:

On a similar note, I've had plenty of experience with ocfs2 and it
not working with git. Some limited debugging a few months ago
showed it to be missing support for some extended file system
attributes. Very opaque build errors will result if you have this as
your host filesystem.

The reason that this is significant is that the kernel is build directly
out of a git repository, and during the clone and checkout, it
typically fails under ocfs2.

I haven't observed this recently, but this email reminded me that
I should at least float the warning.

Cheers,

Bruce

>
> =A0* pseudo-native failing to write an sstate package ("file name too lon=
g" - apparently eCryptFS is limited to ~140 characters due to design limita=
tions)
>
> =A0* ncurses-native failing at do_install (some kind of interference with=
 libtool that caused it to write an invalid path to the libncurses.la file,=
 I didn't track down the exact cause as it went away when I stopped using e=
CryptFS. Might be indirectly related to the name length limitation.)
>
> Scott, could you please add a warning to the documentation not to use eCr=
yptFS with poky? In particular, it should not be used to store TMPDIR and S=
STATE_DIR.
>
> I'll follow up soon with a patch that will do a sanity check on the file =
name length limit - this will catch any other weird file systems that might=
 cause these kinds of issues.
>
> Cheers,
> Paul
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

