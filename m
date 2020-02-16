Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web09.10547.1581849415863401765
 for <poky@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 02:36:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=Y6lK8l+l;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48L3T064mxzv
	for <poky@lists.yoctoproject.org>; Sun, 16 Feb 2020 11:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1581849413;
	bh=ocacYQy5YHGSmnseb+1/+GNUSxg/l8bH9rfFf+5wxgc=;
	h=Date:From:To:Subject:From;
	b=Y6lK8l+lE8Lci6MS79Lgeb+ZvQaSMXSGFwJpu8D/cX9ROshL8UFe+R90lbzTJ3hyQ
	 wTs/vjunZUZ3j2OjQnHvIbtOvIBzbi8UJa9nH3ubtc7658wjz/D5JeMsGDY1lMu1Qm
	 5lWbPiIaGc9GMFx5eogV+vvn7lV3g7A5HBmSPszDIUsZ6WBe0IRFfW2ajKtk1alWX7
	 b27L5SrHhbfLVw0+/r2V3zsj44oG5982s39TGegICVEl4xxDiTF0T8ZoowVTQOfD0S
	 OUVbAYMYtzUgkZV9VDBoomx+kSJxrzppX1LdAKaPzUENgjwq1LRgsosz/dLR8dKmqC
	 OBHdHUDgpfaGIU/zXnsHspp4sFTmsduoUDZcb+BFqzD7flRpbb8/NhLZ6qL06ee7Ut
	 Kl/D78QPXubesPZJcR/ywtfmPIrdc6BEJwh1hBKAgsDe2w1OGaqDyqr0XLq753KiBi
	 lZXrilrnedPJrDB1mNLm6q+1CB6BbLmFdRWIGipCIGsWyWTGpj7MSeqXQweJEC2/p7
	 vhU5PaxLJpAPoYQmmP2ihRZDuMRVg5HzNI30pKo44VGkv+uIdbbrpar7OCWQY0m2j6
	 Q4mXREDlunK1mlnoStKmqho7mtga2lNkjR1woqEcOl0cG9uvDKbD5m69wOGrJRvTxd
	 3TFJQkM92qzlBY9yfiT6SC1A=
Date: Sun, 16 Feb 2020 12:36:49 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: poky@lists.yoctoproject.org
Subject: poky master and master-next branches disappearing
Message-ID: <20200216103649.GA30014@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

For the last ~ 2 days the poky master and master-next branches 
are disappearing sometimes:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads

...
laverne	x11-common: Fix unusable serial console	Wolfgang Denk	9 years
master-next2	HACK: Test hashserv on autobuilder	Richard Purdie	5 months
morty	bitbake: bitbake-user-manual: Added "usehead" parameter.	Yong, Jonathan	14 months
pinky	Pinky 3.1.2 Release	Richard Purdie	10 years
...


cu
Adrian

BTW: The stale master-next2 branch looks like a candidate
     for removal, but that's unrelated.
