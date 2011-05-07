Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F1BC4C801BF
	for <poky@yoctoproject.org>; Fri,  6 May 2011 22:56:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1979016yia.35
	for <poky@yoctoproject.org>; Fri, 06 May 2011 20:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=D9rQTslpT1n7WPpEkVs9VhmZNAkgJtac0niOsXeepQk=;
	b=yDzk//sZ8m17EgOvab16N+siMEmtjeQANVkAfR7ItHpGKymsr5UNzfEhXcjbIsR73V
	vflndCq93+q/Jw6iE5kCBaMTts5qEAR1Rul4V0z20i11OyPoUyd6xaDg3Q439w2syehG
	ubgHrNZY1No7OGP3URCnxLb5lg7/9cpmKwEhU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=Y0qc0wWDjcNwMGwLSpl9PIPrAnDWZQTlLLeK4eimRjfzk5TN0iml11+rE+lKH5+a04
	8M+L98ghrXerlq7z/JcbK0yqxtNY7ErfMmBc8Gd8Waez2GKqIC25VDBf+VhOGoofOPO2
	iQACKvxaJHf19nj0eNsTHQ2arNlm4AwJF+eYQ=
MIME-Version: 1.0
Received: by 10.91.63.40 with SMTP id q40mr237086agk.166.1304740574790; Fri,
	06 May 2011 20:56:14 -0700 (PDT)
Received: by 10.90.104.11 with HTTP; Fri, 6 May 2011 20:56:14 -0700 (PDT)
Date: Fri, 6 May 2011 23:56:14 -0400
Message-ID: <BANLkTikX3sP7yTAkH0F70i2DAabrU9u+bw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: poky@yoctoproject.org, Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: bitbake error in master ?
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
X-List-Received-Date: Sat, 07 May 2011 03:56:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Am I the only one seeing:

Traceback (most recent call last):
  File "/home/bruce/poky/bitbake/bin//bitbake", line 34, in <module>
    import bb
  File "/home/bruce/poky/bitbake/lib/bb/__init__.py", line 74, in <module>
    from bb import fetch2 as fetch
  File "/home/bruce/poky/bitbake/lib/bb/fetch2/__init__.py", line 31,
in <module>
    import bb.data, bb.persist_data, bb.utils
  File "/home/bruce/poky/bitbake/lib/bb/persist_data.py", line 29, in <module>
    from bb.compat import total_ordering
ImportError: No module named compat

Which appears to be triggered by:

commit 754d1c69839982b7cdd49839a398e688c0ad9a9b
Author: Chris Larson <chris_larson@mentor.com>
Date:   Mon Apr 4 09:36:45 2011 -0700

    persist_data: implement comparison, same as dict

    (Bitbake rev: 1190406c526c7bb7cf415867be83e0403812a7dd)

    Signed-off-by: Chris Larson <chris_larson@mentor.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

-----

Since I haven't heard anyone else mention this, and it seems to be pretty
fundamental .. I tend to suspect myself. But looking at the poky git
repos for master shows me what I have on disk here.

I'll look at this again tomorrow, but just thought I'd ping the list, since
this is stopping me from testing pretty much anything at the moment.

Cheers,

Bruce


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

