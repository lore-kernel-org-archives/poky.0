Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97EC1E00C46; Fri, 25 Jan 2019 11:32:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6849BE00C28
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:32:22 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id a6so11242710itl.4
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QmEaWPb5keJKC8dwZS/oyLb3FeBFkFGQo4sOMY02frY=;
	b=R+aqCWhGWwTMbYhl8KA1c452K/fWWjQKuzH3EzxZhNCjB704YjgTZ0mjn7NphZfjsB
	onvl0TIQ+z+UliyOd+FLj+GmZc/4hQOtESKB5qS4Fc4X6halU3Ro5mIqmQOAXUS5t2Mn
	n9De4n+AGVAOxl8F5RVs55hVecePNcz/qPY3JMGLgI6ZnC88pe8vlA4OCMCWuwxsR/sg
	AYudAwqU2jLGf7ueByAJ3kYMb/I35TyWTVdDxczQp0pXleE6TrntLEff6l2lL9203FD3
	g/6/WkQhcHQMXCdxWvHOvImWekANoPSSBH5Qvd5IxJnQSc1UqvwcmL1WSeG4JxXViDNd
	M6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QmEaWPb5keJKC8dwZS/oyLb3FeBFkFGQo4sOMY02frY=;
	b=WWI4ryqZCtE2437ZoSPG/vsTcfvDl2vNMOhc2UjngQOoQvRldz5qJSy02iaJ2g0dAF
	ydUSUm720Mq+Z6KKMrTzzcNTXaSVq4R0hALv6spvuuqlvBZ3h9r/cp+QcBe/wvfJK0hj
	tgF4EYn1Ubd3Nj1jmyCk2uTmDjNPsmgMVHfB8in1ySJn2XZDvco8ZVk66nf/bjS/Dc9o
	FNr+yu+GszSuRlfuBBV+SLxnm+B3ZFR6NQ7j37bsUqMIITzG2T6rw/rEtzL+d1pN3Vo/
	Wd8YJx4QQv16K5AWM7tOFvaJhkWnUfblbmhwZnyxcl69C3h6l6zT03XXssXmzTalmn2D
	ka+g==
X-Gm-Message-State: AJcUukcbUkhpTlOoswS/EKJeCju6jmzGG2FURt6oW9RGd2uDH8XQdJ+D
	hNJj7/ldF4N2tRrFPXObdh0lrV1VBz5w79Nj/UuY92Ugg/Q=
X-Google-Smtp-Source: ALg8bN4jM1Y+Z27MVT4nsBQ6tCbZniXYc9XL03vO9DpXUYYsUa+r2HsGD3ING4HyrGrZINUyKRu8y4fAkaxHhE+DPDA=
X-Received: by 2002:a24:b610:: with SMTP id g16mr3289342itf.3.1548444740090;
	Fri, 25 Jan 2019 11:32:20 -0800 (PST)
MIME-Version: 1.0
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Fri, 25 Jan 2019 20:28:03 +0100
Message-ID: <CAJkqNs1zCk7AaaqPvESHQBhRtKxaVK9VVQ-_wAZMp==YrnYT5w@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PULL][PATCH 0/1] lib/oe/patch.py: Fix applying a directory as a patch
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
X-List-Received-Date: Fri, 25 Jan 2019 19:32:23 -0000
Content-Type: text/plain; charset="UTF-8"

If we add patch git repository to SRC_URI (e.g.
https://github.com/mirror/patch (without the .git suffix) or a local
repository /tmp/patch) the bare clone will go to
downloads/git2/github.com.patch or downloads/git2/tmp.patch and
because the directory ends with '.patch' the do_patch task will assume
it's a patch file, try to patch it, end with 'patch: **** read error:
Is a directory' error and break the build.
To avoid this behaviour I added a conditional to check if the path is
a directory.

No confidential information there.

The following changes since commit 1979d9162a335b7d4718a6697ca57bfa16237f0e:

  bitbake: gitsmy.py: Fix unpack of submodules of submodules
(2019-01-24 17:45:49 +0000)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib dziendzi/patch

Tomasz Dziendzielski (1):
  lib/oe/patch.py: Fix applying a directory as a patch

 meta/lib/oe/patch.py | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.19.1

