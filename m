Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D031E01770
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 07:33:07 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id l18so5125069wgh.30
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 07:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=C9XoCr/7EsFVZgbH/gUjFM+0XsA4WTSKoA9EJ/gyOiM=;
	b=yLmeVZ6tEgSaFlq/f7SXGHqs/MArRIb2BGm1e1S55rvZK+lvAG4Y8oy6r00CUZ4znb
	z+ku1ffepkJOpW2hJAZ/8cwX3PCO11yb9Ni65XpYcL68Rm0w04Tq2V5+QSrW7uSQQAY/
	sTleLSL7eSpGoLkZC36q0EHDcsE/gSTTIap+NIGMoqAgebT25ZbXs8TGX50M1VMKYeoV
	gq3o6vPlTLeMPICqD3W3pp7UNKleE8Fz/q2/n5lRc95fhWzg9oeAVV/iB8Z3HMfdxsEC
	8/APDPvQ5ZBY/86LzGhhgvQALLJUUs4KYKln32mhwOpPM8DoPZbdBis72KJn/MepirOS
	OhOg==
X-Received: by 10.194.3.78 with SMTP id a14mr558887wja.77.1383751986078;
	Wed, 06 Nov 2013 07:33:06 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id
	qc10sm25496697wic.9.2013.11.06.07.33.04 for <poky@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 07:33:05 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org
Date: Wed,  6 Nov 2013 15:32:58 +0000
Message-Id: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [PULL] [PATCH 0/1] sqlite3: Add support for column metadata API
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
X-List-Received-Date: Wed, 06 Nov 2013 15:33:09 -0000

The following changes since commit 9f7f7afaa47bc3a058234269bffa55e15558df16:

  irda-utils: restart irda daemon correctly (2013-11-01 11:09:03 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ajlennon/sqlite
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ajlennon/sqlite

Alex J Lennon (1):
  sqlite3: Add support for column metadata API, bumped PR

 meta/recipes-support/sqlite/sqlite3_3080002.bb |    7 +++++++
 1 file changed, 7 insertions(+)

-- 
1.7.9.5


