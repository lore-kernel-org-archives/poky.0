Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF14F01818
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 09:33:41 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.65818.1772789617661480248
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 01:33:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=nFWULjI+;
 spf=pass (domain: linaro.org, ip: 209.85.208.172, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a3486419cso15582011fa.3
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 01:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772789616; x=1773394416; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hnDTm8rq3OTXl9atCxzVJ8RmaJ57Zgl+A5CqM36Gq9E=;
        b=nFWULjI+i0+dywQDPXfHo5w6U1esRJeMNU72jQi294ayvlXTGwmaR7pQ3sDhqqOCYD
         2evQh0Ra70EiSwvWBnIc5ahYdavucGlEZh0fLk5VYhjUE9rX2FXeps899APNaf/+61/Z
         qPhFLzG7vGkI6N08jIzPbijdUM9e+o6/8TBteCS8uFS+9Y2r0GZKGu4gRRTre0Qo8oAD
         l6kpNguyd93iM07L7luUDI43O3XDMt4W8mBoZ46BYaozNMnxLSHq9QTemlGU9oR2tlAi
         v4Pi0HVwyrRLlRH7xA+aphBCBk4s2SVuG1unEYBgco9lo5R+ISkQ2FTmETC27OcENGzQ
         rNhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789616; x=1773394416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hnDTm8rq3OTXl9atCxzVJ8RmaJ57Zgl+A5CqM36Gq9E=;
        b=CXCQMfSyGfau3gJu+iVkb+1bsK++/ny4V1+LjbMSTRBqWui2NsmEuzbSk51KexK4qv
         WcAoohF7+U5Mb2i07yrMn+nbPDyAhyRzyKcZ/j1CymrrQ9j5gCyIDeCw/O8mO2TW1sME
         HnTHJtcDir+jP1go4B29KQ/oGlInsaR5bfMIKntRw/YquBQEJ0xMYgDHpg/IxKbMvERS
         wGOMn75GzuZUlAC2oFoaMg4fOTnz8if3WknJhFqZbVbcyxltyhVoGybD/aFOFvnw604O
         xrwRNfDCotFgJ1i9mKKXnrDddbReZnSaiPJjvvf4R95U6Jbh9VjKDYDPw21CdpCIB0Jj
         YMKg==
X-Gm-Message-State: AOJu0Yxh2VzS840cxATWY0oniz1TDbzJjou0qSU+kAd/9RSyvBJRiO9T
	iVDgu6AIpwEN/zCt1oj5ijcEQvOmW4pYYcKTy0ZqZ9Fa2n1ToEX7V0NcnwyBdLEMJp+iF1JRUox
	Arhj5i5w=
X-Gm-Gg: ATEYQzyszQe5aaFXIqbbiU7ecebMxMKeP43F4VSGZHYJxlG+1dFCK/KBPgSKb685NbS
	uEr882yD+l46zKk6u4cJmqwJ7AEl6+j62wHh0YkvAT3dbVldva1LBbhk+rpZ6xTrKLSaQwuJ3yI
	rZ2mN6bL5vhrp+z2ipkhvXGdiKFUtE8oXtchdOWVA/pl12bTqihSYsWJayr8+6CarqC1N6J/fA3
	55FDhaOlpgJmvwKhYVdwx01Vf8MiXkVOXqff0xV4QZMIL3/wYyJZBMNV+2uVSFZZT/UW89WvvM9
	6EbhJ2DYBAY+lwrM950sczkfc0l3fWI3b1A8yw/8ZPfEqfqch29H4Yr3p8j0NNZHYo9Ejeys61g
	TANOSXRzdRSPrjr63VNEJTclJvIKtQ2MbqamzsO90VuMEKtb3eHj9C1KZdqKkgB7Nebq/UByCui
	en3xVJlcN8hgHRf3eShWbe7e4XrWXNgjBDwvvM0USOD2Y0G+xZ7SN2mEIC
X-Received: by 2002:a05:651c:141e:b0:383:246a:74ec with SMTP id 38308e7fff4ca-38a40d68d9cmr3178191fa.18.1772789615640;
        Fri, 06 Mar 2026 01:33:35 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a4205a993sm1110821fa.41.2026.03.06.01.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:35 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 0/2] oeqa runtime parselogs: BeaglePlay and KV260 genericarm64 workarounds
Date: Fri,  6 Mar 2026 11:33:14 +0200
Message-ID: <20260306093316.7018-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 09:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13848

These two have not been merged so sending again.

Mikko Rapeli (2):
  oeqa runtime parselogs: workaround current TI BeaglePlay warnings
  oeqa runtime parselogs: ignore KV260 USB error on genericarm64

 .../cases/parselogs-ignores-genericarm64.txt      | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

-- 
2.34.1


