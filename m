Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C77E00B74; Fri, 30 Sep 2016 08:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46802E009E6
	for <poky@yoctoproject.org>; Fri, 30 Sep 2016 08:46:49 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id p138so31847053wmb.1
	for <poky@yoctoproject.org>; Fri, 30 Sep 2016 08:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=9Ud/aTjUZQF/GZKZCxRR2Jal5TChcdlar7AIfb/31wg=;
	b=vforLf2YtIxKaIpWipqWRfZRMP89ftexASLr/bkAg0GNtVFNIlCYf3kwS1XZam5gDK
	zHWIeT5aBJb2EM+bNbsL7jnzOm7D4HLPG7vFmRx+4PXryxVdvydhWg7X2OHn7ceTsL6w
	J4FGcfQ4Kq+2dw3KPyyM3Mc95La0Z0idcojaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9Ud/aTjUZQF/GZKZCxRR2Jal5TChcdlar7AIfb/31wg=;
	b=R9QJwmKl77LwWumKajla1CJvC7lgAkDpesabfh8HAiU1voCA6LVlvokDgNwK5TmHLF
	RFuIca6TD4/PKrpDWjX+RyRoORcdqRh9BSCRCX52vPqkn0dHVzqn/AhZHXNjQ4zXQdmv
	Gzx4rF+zKIbvtH4yQ5dU38P8yGtyKtmnDYCzD6M1yfQ9J6o02j17k6Zmio5Yjr546ksq
	jXQojR+17RYVlY23iV6qn/HJB5AtMToA3VYilMRSlmAmsReEnplNTR55O6iHu/CIijC5
	GmzC5vHNeBy4luFbIjUawgbwxf2SEMlshgeXMvX0Dmqbj1903E8J5DVQocojcTXIwh3O
	uhRA==
X-Gm-Message-State: AA6/9Rme1a0nbVbjrGEej/JlO7O0PdKehvCl5G8XzMgh89aEhcdgHqmTBD/3qF0DKgidLw==
X-Received: by 10.194.122.137 with SMTP id ls9mr7344028wjb.29.1475250407735;
	Fri, 30 Sep 2016 08:46:47 -0700 (PDT)
Received: from anton-ats.internal.advancedtelematic.com
	(p4FC5BB70.dip0.t-ipconnect.de. [79.197.187.112])
	by smtp.gmail.com with ESMTPSA id
	w71sm4754615wmw.17.2016.09.30.08.46.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Sep 2016 08:46:47 -0700 (PDT)
From: Anton Gerasimov <anton@advancedtelematic.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2016 17:43:01 +0200
Message-Id: <20160930154302.2901-1-anton@advancedtelematic.com>
X-Mailer: git-send-email 2.9.3
Cc: seebs@seebs.net
Subject: [PATCH 0/1] pseudo: bugfix for losing attributes on renameat
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
X-List-Received-Date: Fri, 30 Sep 2016 15:46:53 -0000

Bug is described it the bugzilla:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10349

Anton Gerasimov (1):
  Add check for existence of old file to renameat

 ports/unix/guts/renameat.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

-- 
2.9.3


