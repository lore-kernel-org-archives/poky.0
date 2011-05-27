Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f171.google.com (mail-vx0-f171.google.com
	[209.85.220.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 144234C800E0
	for <poky@pokylinux.org>; Fri, 27 May 2011 15:07:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxc40 with SMTP id 40so2201947vxc.2
	for <poky@pokylinux.org>; Fri, 27 May 2011 13:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=8hXwDx1MgAzowVPXcY0RpROS8LUDdRYetwSq66oMszo=;
	b=Cnx2F+ssAeueCQcMP+b272zg7JRt0UAcw1JahSlJMzic02NL8Ck6RY+IcpF93wAUjd
	dJJ+ZiP4jC8oL4bOwa5KCnScOmGCKs+aMWyBYV3GKhDMmosS1QQlo6tzubhAJ0y0+0Y5
	WhqaXROr+3GEFPg11pYvIuF+HZksKC2Xnnmns=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=c1qsVd+UZwP74CkxzaFt9mCfsyXgckzMz+o0bZ0YHPQmM8mDRoGDr0S8eSqWjzD6Cn
	/O3XaBFFh+mzjysMXNgJlfOO1ZAXdL9tEiO4Uc0ax57uFzwyKmryoVanLgJrhAk4sZh9
	kHZPvLfDZDICcImb0DB44Sf17MzIihjb9m5ho=
Received: by 10.52.73.195 with SMTP id n3mr3632842vdv.28.1306526827056; Fri,
	27 May 2011 13:07:07 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.109.202 with HTTP; Fri, 27 May 2011 13:06:47 -0700 (PDT)
In-Reply-To: <4DE0002B.2000206@linux.intel.com>
References: <loom.20110527T192603-897@post.gmane.org>
	<4DE0002B.2000206@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 27 May 2011 13:06:47 -0700
X-Google-Sender-Auth: eCxctu0R-AEdpNbr_CeMM96TSYg
Message-ID: <BANLkTi=rJ049XGM5DQGjKtf7QKEAjh0Nqw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Holger Freyther <holger@freyther.de>, poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 20:07:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2011 at 12:48 PM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
> On 05/27/2011 10:42 AM, Holger Freyther wrote:
>> Hi all,
>>
>> I hope these impressions are useful. In the last two days I added a BSP =
for a
>> TI Davinci based system and I am afraid it was a bit harder than I think=
 it
>> should be. This is a summary of the underlying issues (without them bein=
g
>> debugged or completely understood).
>>
>> meta-skeleton and BBFILES:
>> =C2=A0 =C2=A0- Maybe it would be nice if the file glob would list *.bbap=
pend as I think
>> =C2=A0 =C2=A0 =C2=A0many people want to use it.
>>
>> BBLAYERs and dependencies:
>> =C2=A0 =C2=A0 - I had changed BBFILES to list *.bbappend but the change =
didn't take
>> =C2=A0 =C2=A0 =C2=A0 effect. I had to touch conf/local.conf to force a r=
e-parse. So somehow
>> =C2=A0 =C2=A0 =C2=A0 the layers config didn't end up in dependencies.
>>
>> fetch vs. fetch2:
>> =C2=A0 =C2=A0 - I wanted to fetch my kernel from my internal git/ssh rep=
ository. I was
>> =C2=A0 =C2=A0 =C2=A0 not sure where to put the username (git://foo@bar o=
r git://bar;user=3Dfoo)
>
> I believe the correct options would have been:
>
> ssh://foo@bar/path/to/repo
> or
> foo@bar:/path/to/repo
>
> with protocol=3Dgit
>

This is backwards. The url scheme determines the fetcher to use, the
protocol=3D determines the method that fetcher uses to obtain the
sources. Holger had it correct. git:// to associate with the git
fetcher, protocol=3D to ensure it uses ssh.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

