Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC9EE00739
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:14 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=52HSSPMXQWbhamwot8JYjlftZfzfDEGrk68LjNHRHgg=;
	b=N0Y7HHUkhJn7yf/b4OAV06fmr5GJm/MezTJb0EMckF7u9WsgYUkSXjT7qRa/AKgm7V
	MsiQ6KI8kQXMgY4VD+5Cd7XfmtcXB5z0K9mS3fVPWkuxgGqPhunq3O+4k/yWx6sI/iAj
	b1GglgDswDYJwoD7oSjMfTC/AqvGjg4ESdINF59pOG+x12rGvcc2YpkDxrn7L8sZPcOU
	7af7G9w9VYgx8QAJHgWbCu4PTVJl7DshlVMddNjF+7OB2RzQUxurOG78CPP9V0NkM4bf
	rjOJn4bT7WeSsdUBhXXZqn0fKkXCipR7e8UtQREsXLV1HJU8YDD1zDr2m4rLhdgm5HQh
	DL3w==
Received: by 10.68.226.38 with SMTP id rp6mr11453620pbc.90.1341354733745;
	Tue, 03 Jul 2012 15:32:13 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id rg9sm16334803pbc.67.2012.07.03.15.32.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:12 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:31:53 -0700
Message-Id: <cover.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Khem Raj <kraj@juniper.net>
Subject: [denzil][PATCH 0/9] bitbake fetch improvements backport to denzil
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:14 -0000

On denzil bitbake was still trying to go out to internet for git repos
when BB_NO_NETWORK was set. This set of backports fix that issue
and now BB_NO_NETWORK works as expected

The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:

  documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib kraj/denzil-fetcher-update
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=kraj/denzil-fetcher-update

Richard Purdie (9):
  bitbake/fetch: Spell out which fetcher backends support and recommend
    checksums
  bitbake: fetch2/__init__: Make it clearer when uri_replace doesn't
    return a match
  bitbake: fetch2: Fix error handling in uri_replace()
  bitbake: fetch2: Only cache data if fn is set, its pointless caching
    it against a None value
  bitbake: fetch2: Ensure when downloading we are consistently in the
    same directory
  bitbake: fetch2: Split try_mirrors into two parts
  bitbake: fetch2: Explicitly check for mirror tarballs in mirror
    handling code
  bitbake: fetch2: Improve mirror looping to consider more cases
  bitbake: fetch2: Handle errors orruring when building mirror urls

 bitbake/lib/bb/fetch2/__init__.py |  218 ++++++++++++++++++++++++-------------
 bitbake/lib/bb/fetch2/git.py      |    3 +
 bitbake/lib/bb/fetch2/ssh.py      |    3 +
 bitbake/lib/bb/fetch2/wget.py     |    3 +
 4 files changed, 149 insertions(+), 78 deletions(-)

-- 
1.7.9.5


