Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C399E00C3A; Wed,  6 Jan 2016 23:15:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D0BE00BB9
	for <poky@yoctoproject.org>; Wed,  6 Jan 2016 23:15:55 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id f206so108556227wmf.0
	for <poky@yoctoproject.org>; Wed, 06 Jan 2016 23:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9avePZtmxGC92BN677HNIOEWHBA2EdZU3uHI2gn6nHY=;
	b=qkbgZ7s/ckvTOL6+sI79yVXakMtdJDcnSI8lPvi4r/Qsvh+aIMTyY5Ga8vXB3c6Cff
	Da4E1uZjMzIaRoRIjRM51bGqDShagIKQ7oKDi6ifUL6/9EsGLbdzaaVJK6SItpmixuKW
	gb0OB9gU1YNvenQUnpAahSBqjw68Xc6awZvnWRhJEqZzuFuB7BF0bQPQ0SFGzbz6cggj
	AxKMCtzQkWtNmIBUDZ7qSPaKFfEKjQLZLgXmkKhfLBNxU+qAEEPgarQJfVDLwPi3a6QW
	O91z52Akzvu8O/XVgPbKK8pyN60uwuaYGJ7ugLj/WaSBEb12XhfUzJ+RISlimZ44aMZ3
	rSmQ==
MIME-Version: 1.0
X-Received: by 10.28.101.213 with SMTP id z204mr14223340wmb.57.1452150955203; 
	Wed, 06 Jan 2016 23:15:55 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 6 Jan 2016 23:15:55 -0800 (PST)
Date: Thu, 7 Jan 2016 12:45:55 +0530
Message-ID: <CAA2DH4uwne3WO4h7JpGpr=_M=A_yZeTQuZqdq0Bo0w2w7gZUsw@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Custom recipe not able to create init script symlinks
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
X-List-Received-Date: Thu, 07 Jan 2016 07:15:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to create a system service recipe that will install
SysVInit initscripts.

I have 2 recipes:

Recipe 1: compiles a source code and also installs SysVInit (Works as expected)
Recipe 2: only installs a initscript


Recipe 2 is only installing as a postinst task (I see an entry in
/etc/rpm-postinst/) but SysVinit symlinks are not created in
/etc/rc?.d/ directories.

Any idea on how I can force it to create symlinks during image creation?


There is no difference in Recipe 1 & Recipe 2 (update-rc.d wise) but
still one installs during image creation and the other one is deferred
post installation. I do not understand this behavior.


Any inputs will be of help!


Regards, PJ

