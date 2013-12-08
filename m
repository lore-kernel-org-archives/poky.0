Return-Path: <stefan.seyfried@googlemail.com>
Received: from mail-bk0-f49.google.com (mail-bk0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA611E00782
	for <poky@yoctoproject.org>; Sun,  8 Dec 2013 04:42:32 -0800 (PST)
Received: by mail-bk0-f49.google.com with SMTP id my13so932842bkb.8
	for <poky@yoctoproject.org>; Sun, 08 Dec 2013 04:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=9RDgUHQ3p9Pn01BIYXE+kLYVqv0eI5G1qwmJhO+zkAQ=;
	b=W4yxwo/UPobuUKrvi3ILBj4UxRqNUWaN2cSY06GEo4OWs9rifkyBmkh6z5JPR2rbfo
	UUfxtEV4CUQqoG7ZVNbOLmEYA1EWRCto6dD+d+m6S2QVBOT++EdwcObrHj7gI1RLsvvL
	swZaM956HfnXDP/J4WtrRWUanWjyu173aB/XmkIslIuF5gJUcah3rBNjakkTTsU5pGVW
	pilihGV9sPTEIvc3tdYBucwqYMZlUTzvJCFLn67hqvEf61A4Lygki5Di8NDn8So9gJTu
	4BEf/GCi2veu9i2QTxLLW3PmWg5yEEmodpC+n9ipUNjVPn9sOSUKak/uNad+iYPfezTb
	jaLQ==
X-Received: by 10.205.5.194 with SMTP id oh2mr704408bkb.114.1386506551349;
	Sun, 08 Dec 2013 04:42:31 -0800 (PST)
Received: from susi.home.s3e.de (p54B53326.dip0.t-ipconnect.de. [84.181.51.38])
	by mx.google.com with ESMTPSA id a4sm5182409bko.11.2013.12.08.04.42.30
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Dec 2013 04:42:30 -0800 (PST)
Message-ID: <52A46935.8090803@message-id.googlemail.com>
Date: Sun, 08 Dec 2013 13:42:29 +0100
From: Stefan Seyfried <stefan.seyfried@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: ac_cv_sizeof_off_t breaks curl compilation
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
X-List-Received-Date: Sun, 08 Dec 2013 12:42:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

I investigated why I get a libcurl5 package (libcurl.so.5) out of curl
with poky (branch dora, building for ARM and powerpc32).
Basically, libcurl.so.5 (instead of libcurl.so.4) means "you are doing
it wrong". curl configure detects that the ABI is broken (because off_t
is not 64bits) and bumps the SONAME, see lib/README.curl_off_t in the
curl source.

After a long and hard debugging session, I found out that the following
files set ac_cv_sizeof_off_t to 4:

    meta/site/arm-linux:ac_cv_sizeof_off_t=${ac_cv_sizeof_off_t=4}
    meta/site/ix86-common:ac_cv_sizeof_off_t=${ac_cv_sizeof_off_t=4}
    meta/site/powerpc32-linux:ac_cv_sizeof_off_t=${ac_cv_sizeof_off_t=4}

Now this is true for some cases, but only if e.g. _FILE_OFFSET_BITS is
not set to 64 (which curl does).

Curl does use AC_CHECK_SIZEOF(off_t) which works correctly, but only if
ac_cv_sizeof_off_t is not preset to the wrong value.

I'm now wondering how many other packages silently compile with wrong
features etc because of this. Curl is just very vocal about this issue,
so that it was easy to notify.

If this is not the right list to report such issues, please point me
into the right direction.

Thanks,

	Stefan
-- 
Stefan Seyfried
Linux Consultant & Developer -- GPG Key: 0x731B665B

B1 Systems GmbH
Osterfeldstraße 7 / 85088 Vohburg / http://www.b1-systems.de
GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt,HRB 3537

