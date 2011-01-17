Return-Path: <aalonso00@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63B074C8120D
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:12 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 15so1914215gwj.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=PNl9YykSQOyyNdcVURizc4r24YYnfG7W0tdeSBmeYiE=;
	b=vg1RfdQFdFPsdFkpTho+WfuqTjz0tGgaBDC6/2CYv5u7jVb/CFnoTtTjds7vU4oiEz
	fYfkxhP3GgL2uDBZvJCDnrdeDslFjns5pUDH7goe4Or9ajEYOhecruIYto855hOkQBPX
	Byig3PTJ8MKivtARD7LcUrdyPxX87L6Xavn5A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=ooYRL8yWtdDuUp8ep+UJRoEyzOEeQujjAJJh2lkS044fgB960kAq54v/0PHzHwSFkW
	pmpr1CWmcBE+BPmUbeM2JtK5r/9Y+nZESm1nQD1iT6OWnYkgFwVJSOUIjTM6BD58ik/Y
	vQjaafv8+DCaI9ZHAAr0aaPNQ1v1BW6a5i9g4=
Received: by 10.91.10.24 with SMTP id n24mr5033159agi.162.1295295852291;
	Mon, 17 Jan 2011 12:24:12 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.09
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:11 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:30 -0600
Message-Id: <1295296178-18590-17-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 17/25] device-table: add tty uartlite static dev nodes
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:12 -0000

* Add static dev nodes for uartlite serial console
  ttyULx

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 files/device_table_add-xsa.txt |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/files/device_table_add-xsa.txt b/files/device_table_add-xsa.txt
index a0bc48e..23cc8c9 100644
--- a/files/device_table_add-xsa.txt
+++ b/files/device_table_add-xsa.txt
@@ -3,3 +3,4 @@
 /dev/xsa1   b   640     0   1   125     0   0   0   -
 /dev/xsa2   b   640     0   2   125     0   0   0   -
 /dev/xsa3   b   640     0   3   125     0   0   0   -
+/dev/ttyUL  c   666     0   0   204     187 0   1   4
-- 
1.7.3.4


