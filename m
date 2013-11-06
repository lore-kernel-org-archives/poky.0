Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43AA8E017A2
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 09:10:19 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id x12so5331334wgg.16
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 09:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=7k0zIAKFAY+WGiVAQ+Zr0jl1lBBmDJr6sJ4zX9hnYrY=;
	b=mKt4aQVzhNRs6Qt7RRAcLnh5TlFd8urGvjnATg2aD85fZLkHFRA8zcVHwbbh5QLk+S
	ecMe6bB9UxJh9NfiGOLPQ+yv8pTNCKWU7c0Pjsww8sQNqGR3r1Hffnm+fV0gjCZX5U01
	WkCaPJO/wu7LQUjqJ9ElSB3kNNgDjnog89kFKQpwOQhG0JzR+kl0krQR44mk/EesrVgZ
	iRa3lt4pVOLlM2af2ky3M2+9Ml+jWFFfdcxBipQ1kjD0FcDhgewH8pyKRgsKxZdRbqG+
	8zY36+YB1bvuoBOr0aLT/70dZ9IluNwweiyRPbBvXssiMWasJemDGmruTWFfeDCrlubd
	0Szw==
X-Received: by 10.180.149.179 with SMTP id ub19mr3241651wib.43.1383757817990; 
	Wed, 06 Nov 2013 09:10:17 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id b7sm26251043wiz.8.2013.11.06.09.10.13
	for <poky@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 09:10:13 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org
Date: Wed,  6 Nov 2013 17:10:05 +0000
Message-Id: <cover.1383757684.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [PULL] [PATCH 0/2] sqlite3: Add support for column metadata API,
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
X-List-Received-Date: Wed, 06 Nov 2013 17:10:21 -0000

I found that Mono.Data.SQlite has a dependency on the column meta-data API, thus enabling this API enables use of Hibernate / Mono with SQLite and no doubt enables other ORMs / utility libraries.

ref: https://bugzilla.xamarin.com/show_bug.cgi?id=6333

The API is present in the used SQLite3 sqlite-autoconf-3080002 source-base. Thus we are enabling pre-existing SQLite support rather than introducing new code.

I am not aware of any issues that enabling this SQLite functionality introduces, other than a slightly increased library size of circa 1.5KB , i.e. coretexa9_vfp_neon i.MX6   

- with column meta-data API        610360 libsqlite3.so.0.8.6
- without column meta-data API  608880 libsqlite3.so.0.8.6

The following changes since commit 9f7f7afaa47bc3a058234269bffa55e15558df16:

  irda-utils: restart irda daemon correctly (2013-11-01 11:09:03 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ajlennon/sqlite
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ajlennon/sqlite

Alex J Lennon (2):
  sqlite3: Add support for column metadata API, bumped PR
  sqlite3: Add support for column metadata API

 meta/recipes-support/sqlite/sqlite3_3080002.bb |    5 +++++
 1 file changed, 5 insertions(+)

-- 
1.7.9.5


