Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E4064C8009A
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 00:49:56 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so232163wyb.35
	for <poky@yoctoproject.org>; Tue, 08 Mar 2011 22:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=SYiu5s1s8+ndbq62m/rMccUxpAkPdXj6MHpY6REf5CY=;
	b=l2uWwEsw7BxYDpZCFvEUJGlUokdZVRRYrE+nSbpVj2vquizQ3P761dvXC+Whz1ni++
	uWvScf6yflHdsZr8TpZ22SLcXKDAWj7uI5Lkuojp2mWCSlA3d6AO0UUiJ/6WoyAQc0rs
	R2wfn2Y/zA/FIaXsMb8OOqKTyhJxJkrhSvH3o=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=Ioy5g/210vUU0WWJ04ryrr4WXgQIJ+KTjkFyHpzxds8JwE8rZEDi9pP5oyun/NhN/0
	8yIqzen9ZUmukE62r0BWH5mXmzz0gB66u8LDAvPTfvjy/gYBqeyZiCI5fpzs4ffeympC
	AfCiJa+6h1O/u/kvukE5k8SZmqTEcet8qCe8c=
MIME-Version: 1.0
Received: by 10.216.157.129 with SMTP id o1mr4232051wek.59.1299653395115; Tue,
	08 Mar 2011 22:49:55 -0800 (PST)
Received: by 10.216.236.166 with HTTP; Tue, 8 Mar 2011 22:49:55 -0800 (PST)
Date: Wed, 9 Mar 2011 12:19:55 +0530
Message-ID: <AANLkTikhM5c1rMZPy3R9FGHe1E6RHoQNxBNKUnNyrP5L@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Error while adding alsa-utils to recipe
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
X-List-Received-Date: Wed, 09 Mar 2011 06:49:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
        I have added alsa-utils. I got an error while compiling it.
Please go thru the error below and suggest me the appropriate
solution.


 configure: WARNING: panel.h: present but cannot be compiled
| configure: WARNING: panel.h:     check for missing prerequisite headers?
| configure: WARNING: panel.h: see the Autoconf documentation
| configure: WARNING: panel.h:     section "Present But Cannot Be Compiled"
| configure: WARNING: panel.h: proceeding with the compiler's result
| checking for panel.h... no
| configure: error: required curses helper header not found

In my recipe file I have added dependencies..."alsa-lib ncurses
gettext dialog pciutils psmisc"
I am using ubuntu 10.04 on 64 bit machine

Thanks and regards
-- 
V kubera Samrat

