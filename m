Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59948E01257; Fri, 13 Jul 2018 13:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5BD0E01257
	for <poky@yoctoproject.org>; Fri, 13 Jul 2018 13:18:56 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id d189-v6so64448615oib.6
	for <poky@yoctoproject.org>; Fri, 13 Jul 2018 13:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=szYf+0d7Cjf6bzPgMuaY5khfjEOTpqWzXrURXV4TlZc=;
	b=OukLMTBfbDPseL7O14ABP1LtwYHRIeS+Ku83ajgPncw338cKaLU3EQ2wiVOx3RnND8
	zj17GAYf5YAVfV0z2SAwxAl/MOpZST+xca9RxldIM0UgSSJD918umsdmzu223oGzDm7r
	QLAoEKOpRbUeGS9SDJNxaRYag6xoyJFe9hckY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=szYf+0d7Cjf6bzPgMuaY5khfjEOTpqWzXrURXV4TlZc=;
	b=BD57Ewg4rTpQP9qIpFBzKVBsV72YBVvkkz8JifKb+appvl38HEC12NelnPjWQ4pi3u
	QTpbjDhMlkl1+6cy9riQrbQZEHvTP2Yzv1dZVLuaI+ABFVKW5Z1j8zHmVtxTLC8FPTq1
	GjnsVmdGEicd41mt0dZuHfzgt6YtzJtG+wmUQUt6GiCUUjIa2QpaPay9MYYDkLcD5PYw
	b9ZeL4XI8pXnNJ+5mYYDRlLMql44dNSOYMCGulfZlYiOWFU3nZoTB5a7bHhQogoPzF2I
	7TifsPadBGtgr5Cijj7EB6/Yi8SYoDDN5Rx3NeKXGzi/gMvyV+jb2P1rFcdFdNKZd1O9
	DXsA==
X-Gm-Message-State: AOUpUlGAqhzndUxwtFt4qvuArGXtCOnEykqQiEqHVMKfDLQ25ZbioEUa
	eMk+zmo/1d45SFaUgvOpoKWkGweFpJtbcXYqOsIIO8kE
X-Google-Smtp-Source: AAOMgpedrF6bdVwhXdzBFE23mQbJJfU/ugHHPkrBiNOWiyQ5kgd7VHYlnX96TUM6TAAyWBdJ1fpmXUYIz25tT3kVJRw=
X-Received: by 2002:aca:2c02:: with SMTP id s2-v6mr9141955ois.82.1531513135867;
	Fri, 13 Jul 2018 13:18:55 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdQa5rj4F/r1K+LjRo2m7CJrxV3o+A==
Date: Fri, 13 Jul 2018 13:18:54 -0700
Message-ID: <f0340599af16638211afdc47b8b14fab@mail.gmail.com>
To: poky@yoctoproject.org
Subject: no source code in dbg package when devtool used
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
X-List-Received-Date: Fri, 13 Jul 2018 20:19:02 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Before I report a bug, is there a reason why the source code isn't added
to the dbg package when using devtool on a recipe pointing to a git repo
but it does get added if the recipe isn't devtool'd? It makes it difficult
to debug code using core dumps when I devtool a recipe, change code, and
then dnf the dbg package on the target to get the updated souce and debug
symbols - no code found to list in gdb.

Thanks.

