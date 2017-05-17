Return-Path: <maryan.pricak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AFC3E00B27; Wed, 17 May 2017 15:25:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maryan.pricak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D82F2E00B20
	for <poky@yoctoproject.org>; Wed, 17 May 2017 15:25:07 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id y10so6902088wmh.0
	for <poky@yoctoproject.org>; Wed, 17 May 2017 15:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=5SIUtsysdpYv4GrC/Z/W2eeioXduJZjh43miIxFTYHc=;
	b=Dixow12nn5tY5Q1NStpScqZyDGniot5W8nnUb7w1iC1OscGH5Krqd+VDgBp8PAhH4S
	Fr9m7eukUQQ7Orq4MWmJs3hTgyfgBmq79tDFbIVIBNIR2CDx8DumiLVUx72XWCOVzalt
	XvLVQf5Ora2LQQokNrs740O5To6lDqgHuBA85rAhk2QL/5J26gkPTUyX6fH/PatT0oSR
	P2I73IzXH2FpFwhd3lOOpBrS5x5W3CYikVWESbJrRRsew7F8A25H2FN9yYUKWMiu6ftw
	LwtgSYGop/1szkvxqpokSfkbt3M/8AQhV+nirt9CU0ft5UcTVEqI8xPu6xbD/xkx35K9
	LLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5SIUtsysdpYv4GrC/Z/W2eeioXduJZjh43miIxFTYHc=;
	b=b/zE/Q8UGad+iCwwudMPll5AMNlgxBNkBmt09ixw4ddi2/kd0Dl62Yn1GNqAAERWu5
	pGWspvffNgNXEOzkpnmfY7tq1NtQwHPy/+vQIYAKOTiUP09T2Lcj4actNitfapVaZCKS
	b5pH8S+gKw/kXnBXW828/6Dfdl9LBPc60xKj31z/6Tn+8vq4az6oIcUvqNVAdmVSFIse
	tEgnAUA1j24D7cJaq03KeclljgorUFO0lUCm7yALyH8hmDj1yuXWQjrV9QyIaN2FYws2
	qBglLW2FWJCxRjE+VMWITJocK0DlOObP89ry4vebPfJ+ZTLUoETVTbxXhTA97afJT36v
	Gd0Q==
X-Gm-Message-State: AODbwcDAXZGk+CIwEKhw4TmAhmZSTYwiESHsb9+n8O9z/zEL0+n1EUSL
	pcDo+uFipAEFhg==
X-Received: by 10.25.29.7 with SMTP id d7mr104631lfd.51.1495059905252;
	Wed, 17 May 2017 15:25:05 -0700 (PDT)
Received: from localhost.localdomain ([93.75.94.160])
	by smtp.gmail.com with ESMTPSA id h67sm33068lfh.24.2017.05.17.15.25.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 17 May 2017 15:25:04 -0700 (PDT)
From: Marian Pritsak <maryan.pricak@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 18 May 2017 01:24:56 +0300
Message-Id: <cover.1495058109.git.maryan.pricak@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 0/1] libjansson: Initial support
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
X-List-Received-Date: Wed, 17 May 2017 22:25:09 -0000

The following changes since commit 2568e18701fb20d7105eb6e4929f3aff4b9f9c06:

  byacc: remove the recipe (2017-05-16 14:08:30 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib marianp/jansson
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=marianp/jansson

Marian Pritsak (1):
  libjansson: Initial support

 meta/recipes-core/libjansson/libjansson_2.10.bb | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 meta/recipes-core/libjansson/libjansson_2.10.bb

-- 
2.7.4


