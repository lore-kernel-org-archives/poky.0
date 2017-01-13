Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E44BE003C1; Fri, 13 Jan 2017 00:51:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A73E0033D
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 00:51:01 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id k86so31444918lfi.0
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 00:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=F56UQGZ1J4NLNv+nnjwXScQVGhKWYgA8Pnu9VZ8S4iI=;
	b=faOEoUS4Fbuv3EdQN/u0Q4F130LADYZXUmuPoe4twacZr8rn+BJTuKBbQ2xyH/vJcL
	XmHRIxYIchiwXXN1hYEsJhbiYsGYcnklw49RrKBZvuv6HyMBFdY+wfpS3mOIrxm6zft8
	5xGqQLtKLI6Fx1C2rYFU0Anm7KTrdmqnxkNrnQmx3MVKWA6ZAixGDaS/7nCSDco5AvbR
	2+VvmzxnpPlcUQHBnjwt7b4gvPkaV4JhFuWpyiKsz2nqeQJJY3bQx+ez0tem2o9/53Mq
	dxH3a/+cJFs18KAL1zCF9oLA77uJHUFDso1L4ZwvU6IORGggROFXQNDLsSPsglk56ELs
	dh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=F56UQGZ1J4NLNv+nnjwXScQVGhKWYgA8Pnu9VZ8S4iI=;
	b=f8YrfmvjnDvngqoi2Rr/wX9rmfufOeKrSf9WnlV+KFz1XcXVf4Hb0K9IinpUoeBkDJ
	3a+SPCzEDtCYKsajBd0XRB2Uz46Pyc8wbuN/ll86hjK9pTqhNCASMGEKbZ1elhpn6Sy/
	9YWwLv9/Gi9QlypGi7Ome2APtJpEXcF8mydZGw+exJOOT3efj2F38F5+SXioUKX/AmHp
	i6nx6PHtdLADOVcJQqmNhgiVt6BXaE78Kv1QDX20sArsPmeqdMgrhNFEBrB5I17XKbt0
	Z9QfcYSnFmwlbFx1JmbXjWdiCP6QUzGf6ijZzUkEUFrfrDIQorGvj3c9ZiCgEwI/DlDw
	m6qA==
X-Gm-Message-State: AIkVDXLJajWehMCQeFP1mc93bTlLlSRFOoCUOZul0rEIxAIOOYo3bZRjFdnyx5U/kenpJg==
X-Received: by 10.25.193.194 with SMTP id r185mr7121533lff.103.1484297460150; 
	Fri, 13 Jan 2017 00:51:00 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	a78sm3402097ljb.47.2017.01.13.00.50.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jan 2017 00:50:59 -0800 (PST)
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
Date: Fri, 13 Jan 2017 09:50:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: SSTATE_MIRRORS not working?
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
X-List-Received-Date: Fri, 13 Jan 2017 08:51:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

For some time now, I've had the problem that SSTATE_MIRRORS does not
work properly for me. I can see that it downloads lots of packages from
the cache, but once the setscene stage is over, and runqueue begins, it
starts the whole build from scratch regardless.

This used to work for me before, it would only run a small subset of the
tasks locally, taking full advantage of the cache, so I'm fairly certain
my setup is correct. For me it broke maybe six weeks ago or so (master
branch).

I realize this question may be more appropriate for bitbake-devel, and I
can provide more details, but I thought I'd just hear if anybody else
has experienced the same, before I go digging.

-- 
Kristian

