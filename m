Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.20982.1584122613337306718
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 11:03:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCYRuG9X;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5EB5E01841; Fri, 13 Mar 2020 11:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BC4E0183B;
	Fri, 13 Mar 2020 11:03:32 -0700 (PDT)
Received: by mail-pl1-f169.google.com with SMTP id w12so4600930pll.13;
        Fri, 13 Mar 2020 11:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=LGQ6K3DIrn5xRqxvcBNLQM7xFvQbGFiU/Wb5RdyijfM=;
        b=SCYRuG9Xdrx1p6eZhWB9/u4LW2Q+h5fAZVJQf25YBFof3wQdPY6XfLxpCLGS0JIIbV
         uwiOOar4LLaYHUjRtre730Ykp3Ax4MTjEFx4oQshcVhcXu4rQi2KGLRqVApXnDj9fQCn
         3iatVFOh5wZnsnKWivCqnFdlzy0z2NEB/W8LI70CQKDYGRLtG/RGbuP0IIHaiS9jxSAl
         mO6CDvGRk7/1JOrzNnq6oGB3/Me8EqDsEIPUYiVXVUCH3PYT5o7P2z1QYdlQWfMBrVDd
         uncD1zruMEaYWNEHrL+PSXPhDU2/Jb8mxdECuDeRUqDVEWW5ZQYuxTxTdd/qmV5K105X
         rCzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language;
        bh=LGQ6K3DIrn5xRqxvcBNLQM7xFvQbGFiU/Wb5RdyijfM=;
        b=M9QmCGoG9XtRCQbHxUtr8px1dI/Ep+Q+5NKX4l7qlGq00H/BPWOBINIIgL1lJWr0aa
         /RceJ+gxCCAHaJjCyp5u6y9ncejOH9a58DDY8xAFCGorNRjuo5Mwvxl/UnTPNqGJ6X89
         +VDXMp+bAx+qsw05GcOnZ71mi1TLlwbmaPHFOmCScznmbe8yje1O7GFrPc6FShu8PaaQ
         DQUkd42udSBAXqFgBTSI+3z4TmY8ZtoBGfZyXJB+gDTsnWPgSJFtfzOhGxPKkpLDWkJG
         psTtVKfZ8x/I/tiGzcUkq0w4jvCy9LCQ7c2xHYyRL9XyJ/mm9j+47JOyV+tL6Fr4a7xh
         4sxA==
X-Gm-Message-State: ANhLgQ1i5IBhnMmj1cSjXotriO+h8VaIWyVqCmz/bE/dkqIG5ql8gNZk
	P8igOpkstN8asSJz0jpECIQ=
X-Google-Smtp-Source: ADFU+vvcCSfbsJzpHsvm1IhyQYA4ihAFBs8akhu4kqSLXNGhl4cYCcXGSwPckCK4yC4jEHVVEsmBXQ==
X-Received: by 2002:a17:90a:bd86:: with SMTP id z6mr10977441pjr.15.1584122611654;
        Fri, 13 Mar 2020 11:03:31 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:7d2d:b94:8631:6205? ([2601:202:4180:a5c0:7d2d:b94:8631:6205])
        by smtp.gmail.com with ESMTPSA id i2sm21870430pfr.151.2020.03.13.11.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:03:31 -0700 (PDT)
To: Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "poky@yoctoproject.org" <poky@yoctoproject.org>,
 "bitbake-devel@lists.openembedded.org" <bitbake-devel@lists.openembedded.org>
From: "akuster" <akuster808@gmail.com>
Subject: Thud community support
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <cfa17dac-03d6-0248-fa3c-0e6112d62371@gmail.com>
Date: Fri, 13 Mar 2020 11:03:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


The Poky thud branch is now under 'Community support' and is seeking a
maintainer to continue supporting the following repos for the thud releas=
e:

bitbake, core, meta-yocto and yocto-docs.


There will be no more point releases.

see
https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS#Maintainer_Proc=
edures=C2=A0
to get an idea on what is expected.

The one thing we (YP) don't know is if there will be AutoBuilder
resources available.=C2=A0 Please contact me or Richard regarding that st=
atement.

If no one steps up by April 24th (six weeks -ish from now), Thud will be
moved to EOL status.

- Armin



