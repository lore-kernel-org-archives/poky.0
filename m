Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DEBCE00C5F; Tue,  8 Jan 2019 12:41:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 312BAE00B81
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 12:41:03 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id n32so5913345qte.11
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 12:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=S3ol4RODoL21HfLn2Fe1pk+r1DEtdWyZmVepRbDnZeo=;
	b=TO/ENhgf7mE/+8uKver/2av06TSHEnsWbd+JBxdOiwje6msQ3mSv3k+cVgTOmG/VSQ
	m+qG0TsPFPhT3CPVhtt4Sg0uqM2KMX/vdTOYlf9f1Zwf7kJ5drMAwQ7zTunFNyuv0pZb
	oGFhd+DEi29ZwNnDNrbx/rRvNgOhc40jKnXao3NqVHfq98XE8rN6rN4hWE+OpfrVf97H
	CY3LChzJah5jc5LGx4i54bWBH8umEXZAoqOtU1KOf/76OqGPvATU0bvvLMOJYwB1PvyP
	Tr9jVFTiv7owLze5b78AjCxh+Vkvg9ptSSY3cCHx7jYxMeBx0A9kLwl9FYPFjOEv6PXJ
	62ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=S3ol4RODoL21HfLn2Fe1pk+r1DEtdWyZmVepRbDnZeo=;
	b=e9WTwCIXsivqJF7866HM+aLwbkD4NAGIrPSRbpa6z+XrUY2xMxiLmDAHo8r4l+7HA+
	ktZD9teAFwsYkU5weY1LvTqQywGgLRSFC5YR2mUy12EFJkhh+EhRfbb6JqaXk3ovDeEO
	0zUvzeFFiKfG+f8LPdWjnzUyQ8fMr3exS7uNX2HjuXoh5jmKwyDWP+HY1OiZCiKT8H7H
	rQsJJ9uOhODLRN91p1NeXZrV9F7kAl5szyceuxFMct/k8K6qPJkt1o2PwDtJUD14QLuB
	+weh/DeZLVGP5ZFEc+cKNgpDBK7hgRJS8PLqTlyy4RyLSAWMBtvXLJM7HdRSbvoD25RO
	mtIQ==
X-Gm-Message-State: AJcUukeU8N2fbnhc+OezgcmLy/wdYJRMc25pW3xpzuIba6seyAdrx8KE
	iITjDARHu+bdC8malsYfZzy3f73S
X-Google-Smtp-Source: ALg8bN61cmFpGvcqS2J00yp3K2Ku+RsJUM7sD1jbqjU5MF2R+DidqJmDsHYEd6B5TJ2wuYz1M6Y3IA==
X-Received: by 2002:a0c:99d9:: with SMTP id y25mr3187288qve.133.1546980062249; 
	Tue, 08 Jan 2019 12:41:02 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	c11sm31553866qtn.95.2019.01.08.12.40.59 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Jan 2019 12:41:00 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <F240E478-55ED-4D37-A21D-B4C33EC9F501@gmail.com>
Date: Tue, 8 Jan 2019 15:40:58 -0500
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3445.102.3)
Subject: systemd privatetmp and symlink to /var/volatile/tmp
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
X-List-Received-Date: Tue, 08 Jan 2019 20:41:04 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,


On sumo, I've just ran a "systemd" version of my image and the only red =
I see is
for systemd-hostnamed...

myhost :~# systemctl status systemd-hostnamed
=E2=97=8F systemd-hostnamed.service - Hostname Service
   Loaded: loaded (/lib/systemd/system/systemd-hostnamed.service; =
static; vendor preset: enabled)
   Active: failed (Result: exit-code) since Mon 2019-01-07 18:50:15 UTC; =
6min ago
     Docs: man:systemd-hostnamed.service(8)
           man:hostname(5)
           man:machine-info(5)
           https://www.freedesktop.org/wiki/Software/systemd/hostnamed
  Process: 1735 ExecStart=3D/lib/systemd/systemd-hostnamed (code=3Dexited,=
 status=3D226/NAMESPACE)
 Main PID: 1735 (code=3Dexited, status=3D226/NAMESPACE)

systemd[1]: Starting Hostname Service...
systemd[1735]: systemd-hostnamed.service: Failed to set up mount =
namespacing: No such file or directory
systemd[1735]: systemd-hostnamed.service: Failed at step NAMESPACE =
spawning /lib/systemd/systemd-hostnamed: No such file or directory
systemd[1]: systemd-hostnamed.service: Main process exited, code=3Dexited,=
 status=3D226/NAMESPACE
systemd[1]: systemd-hostnamed.service: Failed with result 'exit-code'.
systemd[1]: Failed to start Hostname Service.


I've isolated it to the "PrivateTmp=3Dyes" clause which, if commented =
out, the
service works fine.

I am speculating that this might be related to the fact that /var/tmp is =
a
symbolic link to /var/volatile/tmp. But this would mean that every poky =
user
would encounter the same problem and google would give more results than =
I was
getting.

Upstream from v239, it seems to be fixed:
https://github.com/systemd/systemd/issues/6212 but I have not been able =
to test
it.

Any thoughts?=

