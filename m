Return-Path: <john.tobias.ph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C639E01AF6; Sat, 12 May 2018 20:31:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.tobias.ph[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F874E00EE2
	for <poky@yoctoproject.org>; Sat, 12 May 2018 20:31:06 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id m16-v6so12077772qtg.13
	for <poky@yoctoproject.org>; Sat, 12 May 2018 20:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kmYvmEFYhI1QZD+9rx8+DDKdiMQAlequASV/twfD5c0=;
	b=O8pVYJDRuaO+5SStb14WD0Up98T7nEpVTvjih9uWcbjoUjbFEiZQ4G6QGcoN5i0v/y
	Krfc1JA+zwwEYQGZADjz82teO/DNTFSAELy/8/lSdCFl+4JsPRMZ9LTO8qiwzNkfto1R
	B8LvG5Gj+qQkhUvBvVgBkGFppDj2mPJqmM0E7BeBBxEiNdApGt2FF5+MlpXlAGfIbvi8
	fIxhg6zI1CkCvkMpj8egGcmEvvc/Trrw/WQQcSlsk2fySSryo3x6QrKmYl9fsbzDuRvZ
	8pDepB8+szGWwWhzFMjGLvONgjr8OtL1r+tlV4UsvxQO3vq5eG/YPzWBREDEZ/C6Ssq+
	3V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kmYvmEFYhI1QZD+9rx8+DDKdiMQAlequASV/twfD5c0=;
	b=rZBFBJ+4HvS/3+5MMxnnCwRaQvCINLNw+YcAIim1UEEfUQfVQ1w96zcj3S5c0C57NS
	EeFQbDA0d9u9dCQyfhp4TSztxz/FBOQLEm06DCXBEAndtDTh/Rna80SJsCgiqwWLXzBE
	8D+OOrnaFm+LqeLfGX51TOCI+PlaqaELznHT2uCQWINvShjCtankvOd7Us/HW9SKwCjK
	4idX0xsULyE42c1Jtlc64ZqcD0CAHY+GslsISlOIhpd00cQn5VPW6N89RQy7S/gTpdbP
	brVVEHYsb2fatz1Nwz08g3j8m3eLsOSltqTih/CDJe2acESSMsfEQmsQ8MPvFdjjRxHY
	Ig1A==
X-Gm-Message-State: ALKqPwe+BYY8WkT6myBOqevBnO2xDhMNaXB7/CG8wWUfg+0vsHCzdKRs
	5suqJ59MiCE3abhXh0jSbzf+x/HolWsHpbSMUoal2w==
X-Google-Smtp-Source: AB8JxZo/8AkyQl+XmkK0lhwVpoqsCcgdE005E/ZFEwuuQjQe4SV6G4PV1HfQwErTswqJxzn3Nx6D7ubj9mVBqU5gS5k=
X-Received: by 2002:ac8:3487:: with SMTP id
	w7-v6mr3971355qtb.220.1526182265212; 
	Sat, 12 May 2018 20:31:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.138.165 with HTTP; Sat, 12 May 2018 20:31:04 -0700 (PDT)
From: John Tobias <john.tobias.ph@gmail.com>
Date: Sat, 12 May 2018 20:31:04 -0700
Message-ID: <CACUGKYNCx3o8oftrU-m8b_e2p83VekEbBiU0TXsMMUh17_WV2A@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Sysroot location
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
X-List-Received-Date: Sun, 13 May 2018 03:31:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hi All,

I compiled poky sumo and I am using eclipse oxygen. I installed the
yocto plugin in eclipse but, when I configured it, I couldn't figure
it out the sysroot location. The Yocto plugin able to see the target
architecture, if I enter /path/poky/build/tmp in Toolchain Root
Location.

I ran bitbake meta-toolchain; bitbake meta-ide-support

I really appreciate if anyone could give me some hints to locate the
correct sysroot.

Regards,

John

