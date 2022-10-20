Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web08.10168.1666276172029775939
 for <poky@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 07:29:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=eLvl4bpO;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.44, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f44.google.com with SMTP id t12-20020a17090a3b4c00b0020b04251529so3236470pjf.5
        for <poky@lists.yoctoproject.org>; Thu, 20 Oct 2022 07:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PCVrPtwuTGEjX30yhz64vkspeIIglqj+rn9FQruouzE=;
        b=eLvl4bpOAjLgTJ4Wq5+HCWOLKWlgX7WlMpsHug4tTXpN4dhfDX/fi76nfz5qeQteln
         sMq4+xYeB2+UaCqpABNH2bg9jlnAaULC2aG3dGw1amXAUZqk6MO1PJ2fIaF44xTSqzMs
         w75GHx6KU6axDIDwzZn13broG94qTn4OsKZOXh8Z7VAX1dhnJvt8WVEDUjTwt/sG90Rc
         NY3mvhjbkTmrZmAxCxPDWn2/p43/PvBUM2mdXzY/CzKUuI8GAdFTasvl/1IBReADurDo
         NE75k/4zwqED1yxmjMHWrwq00Q2KWub5TM2vy45DbFuiTIRVSALkQAmQMEiLJSqGlZD/
         j9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PCVrPtwuTGEjX30yhz64vkspeIIglqj+rn9FQruouzE=;
        b=A7cXCcvNvOXpNXQF716siTZWwr0JJ8rkwCILp07batBrUnHxsGN+niTLvGPnBoVJO/
         4o9/uIvA6rSH3gANhKNl3VtAnlYBnO/wFOsiY5JhG3S6hUyyMFgctvfm9EUbUMwL8QZP
         w2IrBIO3zz7dnsiwI6Y33L6j8o/I8j+mgwTsO1d38zzk3uw2eJTdnWZXNKevQS118O/b
         lu11qWx87SGXXk39nNHp1GQolGRQgQrXS0M+YO6ECakQwm2RJImxJ97saWUfDiATUDY/
         8o4cPIEgdz2PvoeT/ygXLi/FrVGjwdXaTGjfaIR2qiP8lP4SNaibq7xjCMTJFFLitKVG
         uEXQ==
X-Gm-Message-State: ACrzQf0AyBpQmuXfvaM4WyXTBnoVIu0YF6TAT43GMJLCIL4kFsgQ5lMU
	UpbfFQTl3Rkf2oe7WL+q8FTpB8ySG5NGqjmL
X-Google-Smtp-Source: AMsMyM6aBG9DQkj8k2aqmB/cy7h1hmRrgU6kk16VyvuUoV0otjUia0Nw13sFUuncQGz2W9r/IecaoA==
X-Received: by 2002:a17:902:ec81:b0:185:3cea:6326 with SMTP id x1-20020a170902ec8100b001853cea6326mr14431630plg.24.1666276171035;
        Thu, 20 Oct 2022 07:29:31 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id q22-20020aa79616000000b0053e468a78a8sm13394030pfg.158.2022.10.20.07.29.29
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 07:29:30 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/1] Pull request (cover letter only)
Date: Thu, 20 Oct 2022 04:29:20 -1000
Message-Id: <cover.1666276124.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit ca9c465e37b693ab768ee8e21a929d1c18956e98:

  poky.conf: bump version for 4.0.4 (2022-09-09 06:51:02 -1000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Alexander Kanavin (1):
  local.conf.sample: correct the location of public hashserv

 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

