Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B535E009CB; Tue, 27 Sep 2016 16:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3597FE0097C
	for <poky@yoctoproject.org>; Tue, 27 Sep 2016 16:50:50 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id 92so31619911iol.2
	for <poky@yoctoproject.org>; Tue, 27 Sep 2016 16:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-transfer-encoding:subject:message-id:date:to
	:mime-version; bh=HWpWH9V9pCUBbZB5VmhCzoEDMs4fA68maIIdmhX8Qy8=;
	b=uuA5372oHP5K8qs3NB0Ek7x94lY/0qUjXGW1AVSheXBzcvNedrDKkY5YWH/KUFP95k
	APS7qnrWnmztZ2dRQBD6r+Mb4X3C+dOR1jz1Z58VFrrBR3UUD2ZNYhqmFbipl5L7s9Uv
	9LLejfzARRjo/OHB1ozqfPe0JbCArPEl3lXNrSK1XfZjabmRPMQoAD8PPJ9qH2l8G6I4
	6kiZ8WgdVcF3QD35zgU9Qm06SprsLXd0SRkDx9BZZ2wtOS9ZlPqaKFuTXm7BHYkLsvlE
	V48gkeTOjCJJV1R19a83JSi0NOQfUcm2gYcX6dIcccqT9MmIYuffBjccxFweUl7ovUk5
	J09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=HWpWH9V9pCUBbZB5VmhCzoEDMs4fA68maIIdmhX8Qy8=;
	b=PIifKljGNzQ6mnOEsmIt+Lp/8QEJfxUmSQdmTJRRGQqDVOXPgxZ5oE55KfhB51eXRQ
	ufhwdhvn2tO9igEhMpxv8E/oCpLd7nhLEXSxW/k7x2xD7N+DzIF1Rw9UeRKNKiyyts7d
	bDkLXkuulCadCHRDt02z6IxuTAkYV1R7oa1gcVSOG0jWbSGYm0D0MIofN8yn5f2NH9oi
	B/VO/XrZ3EukNz9+DmCnfM5wn0kQjOAoht90r3h2GYx5WI4a4AoKLse14QYVWUL8jXzT
	BJY2O8o4628CJcYn9b2HkCdr3nommVkkrLbTCQfu3q1Q8zsvhprSr0HBTQLFvPZnh5E1
	pzZw==
X-Gm-Message-State: AA6/9Rk8yAhQEGJy2Au9NQPjLJre4+v72WDn8rhbHIuS2WIaBvAl+GG/AqSrasDpTHm9jA==
X-Received: by 10.107.6.70 with SMTP id 67mr37714678iog.174.1475020249993;
	Tue, 27 Sep 2016 16:50:49 -0700 (PDT)
Received: from [10.0.0.22] (modemcable020.227-83-70.mc.videotron.ca.
	[70.83.227.20])
	by smtp.gmail.com with ESMTPSA id l65sm1851761ioi.9.2016.09.27.16.50.49
	for <poky@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 27 Sep 2016 16:50:49 -0700 (PDT)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <3D83C703-8964-43A1-8141-21657FC3CAE6@gmail.com>
Date: Tue, 27 Sep 2016 19:19:35 -0400
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: PACKAGE_CLASSES definition
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
X-List-Received-Date: Tue, 27 Sep 2016 23:50:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi all,

This one is for the experts... Does it make any difference whether a =
variable
such as PACKAGE_CLASSES is defined in local.conf, the distro.conf or the
machine.conf?

In my particular case, I think the choice of package_rpm is really =
specific to
the distro we define, not a local setting (local.conf).

Thanks!=

