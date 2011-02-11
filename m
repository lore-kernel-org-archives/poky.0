Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f172.google.com (mail-wy0-f172.google.com
	[74.125.82.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id D259A4C800AB
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 16:27:49 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf23 with SMTP id 23so3049964wyf.3
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 14:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=V6+zDp5vCaUWTrt8a42CFJ7ZayAw8vWKpM+a/ookOT4=;
	b=cklHYE201W/LKD6t5zqjhF2QyEwsxt15kH5ceh7aY+3yWeFlH7yIcxjE4tqtlJlWzo
	a+srik+HHq+VC7ChnsxlEmPNqoHXT1hIVNrWlgbQwMXqOcVFV3YMfam9KuOxqi2In25u
	PW/qLeppwzF4ZEkFM1O2HBvFX+W0/CFcwrV5Q=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=YPZFsBnX4jaXlwWQN0XDgN6HKhEynQUCMZb4zefS/aRr8OXycwVA1Azi7sNncddVQW
	jQ9UHoPdAsMfWE5uNDrJyj14F0BM38euaZNbn4uqLS5wG1IWq3wF+k9VAn+pDmpvgraP
	tOBrLbfvBijMr4oWg+RI1hSEkKmx3ZJXudJWY=
Received: by 10.216.19.207 with SMTP id n57mr1243215wen.30.1297463268771; Fri,
	11 Feb 2011 14:27:48 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.17.11 with HTTP; Fri, 11 Feb 2011 14:27:28 -0800 (PST)
In-Reply-To: <1297461009.3188.4.camel@elmorro>
References: <4D55A061.8040901@mlbassoc.com> <1297461009.3188.4.camel@elmorro>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 11 Feb 2011 15:27:28 -0700
X-Google-Sender-Auth: -hinUfn2L18NBVTuiQxXTMfJz0U
Message-ID: <AANLkTinBo5qKwAPcCP2+MbgZ-CzCoDuO_HT-KB3+AwtK@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Useless syslogd
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
X-List-Received-Date: Fri, 11 Feb 2011 22:27:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2011 at 2:50 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Fri, 2011-02-11 at 12:47 -0800, Gary Thomas wrote:
>> ... at least out of the box.
>>
>> It seems that syslog is configured to store its messages in
>> a buffer (memory only?) by default:
>>
>> $ cat meta/recipes-core/busybox/files/syslog.conf
>> DESTINATION=3D"buffer" =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# log de=
stinations (buffer file remote)
>> =C2=A0 =C2=A0...
>>
>> This doesn't seem very useful to me. =C2=A0I know I can override this
>> in my platform recipes, but I was just wondering what's the
>> rationale? =C2=A0Would it not make more sense to chose DESTINATION=3D"fi=
le"?
>> Otherwise, where do the messages go? =C2=A0How can I see them?
>>
>
> I think 'logread' is hooked up to read from the buffer, but it seems to
> be broken at the moment...

logread is indeed the way to access the circular buffer, though it
does seem like operating against a file would be more consistent -- I
think the original logic was that most of the targeted devices didn't
have a writable area to put the logs, other than flash, if that, but
using tmpfs seems just as good a solution and the logs can be read in
a more traditional fashion..
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

