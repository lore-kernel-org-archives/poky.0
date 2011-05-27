Return-Path: <raj.khem@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C93D4C800C1
	for <poky@yoctoproject.org>; Fri, 27 May 2011 12:12:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwk4 with SMTP id 4so6009315wwk.5
	for <poky@yoctoproject.org>; Fri, 27 May 2011 10:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Z1eRxkbPNkL6xEVFfuvp9+sDqfuXbOJOJ+YtoIHRTFo=;
	b=SNpdCUV8rBq85nmsKymVyJkSZ2kbbavxvLLMFoL98sMyqTLaMUIDg7oyOJNjysypap
	+7m2fERvEgdKD+4n5iyk/eghq3j2m6xw4cwMWPuakjyEQm+aC2Jx1Ae1V7uXjyN1bfp6
	abxRZFdoUnDhuQpQKmvS1PiUD1u5CHV8L+XOk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=WgD1OzNWgx3WGQT6aICxewKLMESRGL9T2f147zZ1bc9LrWHODmnyNBByyqk+Otmg48
	OEhrsyTBRHKS6GGmFb1RXTBf5R6M9KxmK2H+6PNgxgPpp7b8bCjvG369KaGeus6xXYCQ
	BLYcJxYYcHdcCZlsInaFCNpm/uYfz/6leXzx4=
Received: by 10.216.27.67 with SMTP id d45mr2309115wea.21.1306516369302; Fri,
	27 May 2011 10:12:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.60.145 with HTTP; Fri, 27 May 2011 10:12:19 -0700 (PDT)
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 27 May 2011 10:12:19 -0700
Message-ID: <BANLkTinAp6G=xhwmvfagDv2QdhzCo04Akw@mail.gmail.com>
To: Yu Ke <ke.yu@intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/4] fetcher2 git cleanup
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
X-List-Received-Date: Fri, 27 May 2011 17:12:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2011 at 1:53 AM, Yu Ke <ke.yu@intel.com> wrote:
> This patch series is some clean up of the git fetcher according to the co=
mment
> from mailing list.
>
> The following changes since commit 9bccbc5fbc71b331911b558a2ba15e0a6d0046=
b4:
> =C2=A0Nitin A Kamble (1):
> =C2=A0 =C2=A0 =C2=A0 =C2=A0tcmode-default: workaround for gcc 4.6.0 failu=
re on beagleboard
>
> are available in the git repository at:
>
> =C2=A0git://git.pokylinux.org/poky-contrib kyu3/git-cleanup
> =C2=A0http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dkyu3/g=
it-cleanup
>
> Yu Ke (4):
> =C2=A0fetche2 git: change default protocol from rsync to git
> =C2=A0fetcher2 git: unify the nocheckout option format

above patch has typo in commit message nocheckou is missing 't'

> =C2=A0fetcher2/git: add document for git fetcher supported options

while the contents are ok there are grammatical corrections needed in the a=
bove

> =C2=A0fetch2 git: enhance the unpack by using "git checkout"
>
> =C2=A0bitbake/lib/bb/fetch2/git.py | =C2=A0 51 ++++++++++++++++++++++++++=
++++++++-------
> =C2=A01 files changed, 42 insertions(+), 9 deletions(-)
>
>

