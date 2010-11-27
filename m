Return-Path: <baishuwei@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEFFA4C81060
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 20:38:55 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwc9 with SMTP id 9so336740qwc.35
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 18:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=HtaZ6pTNX5+eCEVjUOwPKuS6iQiPrNk06EehVOme08k=;
	b=GngUTYCP+xQAZx9gJTmnXktiFnqqhzmeUBm73lwXux9XIv0OzkT+9+Yv5gKvcVMrzM
	F7O1eb8qRc3ZupbWhT4miksnuZqqHcilXrAv+HE6lA6tF4hdbcY1YmjjtXGkhoK/RK11
	qyG9emJIVKixNgBKIZnCWsOF6JaO7fOXlRXcE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=UXRNISH0ATV1jLxl0+6MgdaYbqzrwOEZ0z4J+FkcKa1XgG2Oq/PA/mYgYnPDbufSSF
	oaN5rpSQUf7ldtr6bgtLhufLkUCTcKinWTK3/w08M38+ohR9PczYvZa/xbz7DFK20f3k
	u7IqzYP+NbgVd0CqxvbJ2eMyx0AWzhNAztUZ4=
MIME-Version: 1.0
Received: by 10.229.189.4 with SMTP id dc4mr2333866qcb.106.1290825535121; Fri,
	26 Nov 2010 18:38:55 -0800 (PST)
Received: by 10.229.221.131 with HTTP; Fri, 26 Nov 2010 18:38:55 -0800 (PST)
Date: Sat, 27 Nov 2010 10:38:55 +0800
Message-ID: <AANLkTikicPDkiO+z1_4+w1vs1y77hA6XmN=PH0kHs3kx@mail.gmail.com>
From: Bai Shuwei <baishuwei@gmail.com>
To: poky@yoctoproject.org
Subject: how much disk space should be used when Poky is installed?
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
X-List-Received-Date: Sat, 27 Nov 2010 02:38:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, all:
   when i try to install poky-image-minimal image for poky, it takes
>25G disk space, but it is failure as "No space left on disk". I  want
to know how much free disk i should prepare before intall it. thanks
all!

It will more pleasure if you can list the size needed for the bellow images

    poky-image-minimal
    poky-image-sato
    meta-toolchain
    meta-toolchain-sdk


Best Regards

Bai Shuwei



-- 
Love other people, as same as love yourself!
Don't think all the time, do it by your hands!

E-Mail: baishuwei@gmail.com

