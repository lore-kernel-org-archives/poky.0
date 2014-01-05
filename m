Return-Path: <stefan.seyfried@googlemail.com>
Received: from mail-bk0-f44.google.com (mail-bk0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F171E00836
	for <poky@yoctoproject.org>; Sun,  5 Jan 2014 04:10:41 -0800 (PST)
Received: by mail-bk0-f44.google.com with SMTP id d7so5397340bkh.31
	for <poky@yoctoproject.org>; Sun, 05 Jan 2014 04:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=g52RNuKRoocLqp2eDa0/+Yal2bUCu7jKbGsj71lVUYU=;
	b=WaMCADfniw4/HbHHDX/+g0b0Wbzx6cNJY5kiwwbJZDn+pGsWx2PwRoF+Wj8oy0DDXP
	4xv2TstpcvX47RX7VymXRGA0peLWF4cEe89eCLl4deNS3G2OGoPNPExwewosaGHSks4w
	JLIUPllNg5sK/nuy23s0hUsQPw84NuSUMogi4NWo3Zr7FAJrVOR4RfB5bOhrrnQEOvyy
	yy0GIVlQHtD+NjJnbcn07PN9O+ZJyplROAWfiY543WtbN3mYNDSn/NDeDHYHDRcD4bsz
	vsoSEzwWB+zOhPt1ncUyqLMFuX+0/ADvK/xNExHpSP0wmGLHBs1kehZ/36pSs0UPpJKB
	r1bQ==
X-Received: by 10.205.14.197 with SMTP id pr5mr11626bkb.33.1388923840482;
	Sun, 05 Jan 2014 04:10:40 -0800 (PST)
Received: from susi.home.s3e.de (p54B532B9.dip0.t-ipconnect.de.
	[84.181.50.185])
	by mx.google.com with ESMTPSA id lr9sm51330743bkb.2.2014.01.05.04.10.38
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 05 Jan 2014 04:10:39 -0800 (PST)
Message-ID: <52C94BBD.6030307@message-id.googlemail.com>
Date: Sun, 05 Jan 2014 13:10:37 +0100
From: Stefan Seyfried <stefan.seyfried@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: dora regression: "WARNING: Duplicate inclusion for meta/recipes-core/eglibc/eglibc-common.inc in meta/recipes-core/eglibc/eglibc-initial.inc"
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
X-List-Received-Date: Sun, 05 Jan 2014 12:10:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This commit

commit 564c687c2a2b90f277f444eed298b6defc51c467
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Nov 29 23:15:56 2013 +0000

    bitbake: parse/ConfHander/BBHandler/utils: Fix cache dependency bugs

Leads to lots of

WARNING: Duplicate inclusion for
/space/tmp/yocto-test/meta/recipes-core/eglibc/eglibc-common.inc in
/space/tmp/yocto-test/meta/recipes-core/eglibc/eglibc-initial.inc

I think the problem is not with this commit but with eglibc recipes:

eglibc-initial_2.18.bb:1: including eglibc_2.18.bb
eglibc_2.18.bb:1: including eglibc.inc
eglibc.inc:1: including eglibc-common.inc
....
eglibc-initial_2.18.bb:2: including eglibc-initial.inc
eglibc-initial.inc:1: including eglibc-common.inc

So eglibc-common.inc is really included twice.

I'm in no case expert enough to tell which of the includes could or
should be omitted, but I'd probably remove the one in eglibc-initial.inc

Best regards,

	Stefan
-- 
Stefan Seyfried
Linux Consultant & Developer -- GPG Key: 0x731B665B

B1 Systems GmbH
Osterfeldstraße 7 / 85088 Vohburg / http://www.b1-systems.de
GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt,HRB 3537

