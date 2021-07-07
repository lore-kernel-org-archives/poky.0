Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
 by mx.groups.io with SMTP id smtpd.web12.20459.1625661966905479341
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Jul 2021 05:46:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=dwrobel@ertelnet.rybnik.pl header.s=ertelnet header.b=VBlXWZUQ;
 spf=pass (domain: ertelnet.rybnik.pl, ip: 136.143.188.14, mailfrom: dwrobel@ertelnet.rybnik.pl)
ARC-Seal: i=1; a=rsa-sha256; t=1625661964; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KU3WS5YdejjH7rm17nAmYHs962mWmcL5uTGJzv2Ys6AtNpcZ9NDAL8d26kzn+fd32hM6Gq21BYRBhhIU87XtRo8qywxMnM3EIkONvmsbTQXswNTqLaYS2X8knLzUq2nNlNpLvSKbvJiro2/3qhGvOZN7eBbHfqmHtPijOAVix/k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1625661964; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=Yywqo4HBHOSjDKb0nFlTcF9r3yrHjXf9YEXfm7/07uw=; 
	b=Pxk0ab4xs8/L312OHmmZUcx5sL1Pyvy74Wb39kyzgqA7WJJiV/MyZB+P5kG0CrGsk9exs/A3DxWhtEhmdEuObq+HuvduLlVF0iczputw8tJ8pZrKunIpMTAYqASbqECHmo6p9/RCfoaSkUIicYjI1s9Zlck20JZvxCvPvpccAe8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ertelnet.rybnik.pl;
	spf=pass  smtp.mailfrom=dwrobel@ertelnet.rybnik.pl;
	dmarc=pass header.from=<dwrobel@ertelnet.rybnik.pl>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1625661964;
	s=ertelnet; d=ertelnet.rybnik.pl; i=dwrobel@ertelnet.rybnik.pl;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=Yywqo4HBHOSjDKb0nFlTcF9r3yrHjXf9YEXfm7/07uw=;
	b=VBlXWZUQGdjEWQuOKz0dV4/RGW7MqGkUf8dkyUccFmo08EjEnKvYXe4lGmq7y36t
	Lqgd0hvwkgP8fz+lDzM8nRoWG542uzi43g1Ra5fA65AxtLJhefXn0mtO6x0BsagDU6J
	MqVlu4b3LsJfqo3snf/MF6N6Ptvp86jtGl8vD8zc=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1625661958858682.5583543877026; Wed, 7 Jul 2021 05:45:58 -0700 (PDT)
Date: Wed, 07 Jul 2021 14:45:58 +0200
From: "Damian Wrobel" <dwrobel@ertelnet.rybnik.pl>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>
Cc: "poky" <poky@lists.yoctoproject.org>,
	"Adam Romanek" <romanek.adam@gmail.com>
Message-ID: <17a8100eaa6.e37881523515.3648162003838370041@ertelnet.rybnik.pl>
In-Reply-To: <CANNYZj8FZFFKRfNS2rged44E3q2fTmmBGMnC83c555Nm54jUQA@mail.gmail.com>
References: <20210707104004.2490664-1-dwrobel@ertelnet.rybnik.pl> <CANNYZj8FZFFKRfNS2rged44E3q2fTmmBGMnC83c555Nm54jUQA@mail.gmail.com>
Subject: Re: [poky] [PATCH] bitbake: fetch2/git: run gc in foreground to avoid race with tar
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

 ---- On Wed, 07 Jul 2021 14:23:09 +0200 Alexander Kanavin <alex.kanavin@gmail.com> wrote ----
 > Can you send the patch to bitbake-devel list please?

Here is the reference: https://lists.openembedded.org/g/bitbake-devel/message/12408

--
Damian

 > Alex
 > 
 > On Wed, 7 Jul 2021 at 12:40, Damian Wrobel <dwrobel@ertelnet.rybnik.pl> wrote:
 > From: Adam Romanek <romanek.adam@gmail.com>
 > 
 > It looks like git gc can interrupts the package creation when
 > BB_GENERATE_MIRRORS_TARBALL is in use.
 > 
 > Log excerpts:
 > 
 > tar -czf TOPDIR/../downloads/git2_bitbucket.name-hidden.git.tar.gz . failed with exit code 1, output:
 > tar: ./objects/pack/pack-89a1d76f6c08f53172ef1d02ff851d90564362c4.pack: file changed as we read it
 > tar: ./objects/pack/pack-b4a48ada355d333630fdf6b4f67205b7c264dc2c.idx: File removed before we read it
 > 
 > Auto packing the repository in background for optimum performance.
 > See "git help gc" for manual housekeeping.
 > 
 > Signed-off-by: Adam Romanek <romanek.adam@gmail.com>
 > Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
 > ---
 >  bitbake/lib/bb/fetch2/git.py | 2 +-
 >  1 file changed, 1 insertion(+), 1 deletion(-)
 > 
 > diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
 > index 5e65c83c63..488f4c7414 100644
 > --- a/bitbake/lib/bb/fetch2/git.py
 > +++ b/bitbake/lib/bb/fetch2/git.py
 > @@ -231,7 +231,7 @@ class Git(FetchMethod):
 >              for name in ud.names:
 >                  ud.unresolvedrev[name] = 'HEAD'
 > 
 > -        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c core.fsyncobjectfiles=0"
 > +        ud.basecmd = d.getVar("FETCHCMD_git") or "git -c core.fsyncobjectfiles=0 -c gc.autoDetach=false"
 > 
 >          write_tarballs = d.getVar("BB_GENERATE_MIRROR_TARBALLS") or "0"
 >          ud.write_tarballs = write_tarballs != "0" or ud.rebaseable
 > -- 
 > 2.31.1
 > 
 > 
 > 
 > 
 > 
