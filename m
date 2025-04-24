Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4CE7C369AB
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 11:23:33 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.12657.1745493804453788056
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 04:23:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ip6tSZPe;
 spf=pass (domain: linaro.org, ip: 209.85.167.52, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54e6788d07eso2226737e87.1
        for <poky@lists.yoctoproject.org>; Thu, 24 Apr 2025 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745493802; x=1746098602; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ooonD6g+lxHqaCfzGDjCCGCoVGr9hYEAHpHWr8FrG0=;
        b=Ip6tSZPevaGE02sYOJNazOdZaL1d4FhUreQ0DTyd7j+o6rZ75QM42woO1dA9yIRsVw
         IKD8dzyIvl34L6jNDvW/ocFA0B/okbLQlHSRK4YxAOQvXR2HqPBP81BchpghrJoQc3Ur
         N/KkwMrcdZz/G02BXhrDLPUiXko0f0vAM0X4Q0COgHRfC3BY21Cqnugi7QTMocYKGnev
         Y2O6PZJ0mcxs+fKA5S5n1AEBdNVekBY4FLAG6ELyVtJLkSqEiWlEoKvauMME6V6cJGMx
         6fx64JW+jxvnGRHPL0py8mEt7g7JYU+fFjRifWOYRXsCmOYm0+BEZG80RKss84mt8QQI
         JpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745493802; x=1746098602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ooonD6g+lxHqaCfzGDjCCGCoVGr9hYEAHpHWr8FrG0=;
        b=I+Um5YEhLLfird2TWOCpy1v/0nN2CXanhSeJVuEdc8ludkivue6Vk3lW77S/OHucDi
         zAgXAztwNzP5u4CFbM0YpkP2ec7Q97voe/FHPCeGaIuVW5bNep2754m2+K9QGy1bEwuK
         UMSxmnppsJ9q6MINYaoy5Pb+K4jPsmm2Wv6Yb/i9PZsy2jxKh64b2do93VuFH6Szdf/M
         TOYGfQOJBbDlr567UZMKPmAH8WG2beIGD/ITtPhjBQGI8Hzqrs3J7GEm8Ql4j0Wz/Sw8
         2cfNuzk0KUWB3UGniyoTNjDkAqF6Q1bSlKdQtx14fNMhdGZHOfMQi0WCyQofTgJbPWH5
         RPzw==
X-Gm-Message-State: AOJu0Yw0foC6C04srIwHV/eL3xsBKEgFYfAJrD7uyeIk8OU4T0bzj+Hu
	SfFfQpozgI7xn+fGKj4DvFA0xSsG/5QjRE2MnmUA6iQAB+teF6L/zeIyNhtefHFMLbQ1aq4ztYg
	J3hI=
X-Gm-Gg: ASbGncujtPdcpUxFrBLivwwbfaARblcEU0dEOqeCZr4i2fq9bP6zQ9iOvPHzhh4HkfH
	+ARIKovajJEpsxNrCeXA3IVqbazaeJ+97b4Q37f7Q7vn9scsjDCF0XFr43rgcaCQy1QEW5MoH7I
	vpAj8lveKMWm+bsw8tTWgZRJ32Fil8FnNlxjdl3Z+tZC8pU31Q/Gt8DXH+HhJxXX6BRUlscJdaa
	HA/Vt9Do9N46/M8B7usL0YR+Ltf1Ca06JYVZ7gGHWqBVXb9qA8DcMMKqzRXJggEp/79q9SnnQc1
	PA+88ytkMH40/NmehbTcdAPo65qFhb/Szp3CMLTXm/mRZR4hjZVcZNh9m8GrEs7yYRoSD2rfrQ=
	=
X-Google-Smtp-Source: AGHT+IG0nMD3PZSzjEdspfZL+fCU9n32Qn9TYON0kR+mFuNfDl3HCKrMLD5R+mf5lVjD9rd4re4B9w==
X-Received: by 2002:a05:6512:318e:b0:549:7c5f:d961 with SMTP id 2adb3069b0e04-54e7d52eb7fmr616225e87.17.1745493802284;
        Thu, 24 Apr 2025 04:23:22 -0700 (PDT)
Received: from nuoska (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cc9e958sm203990e87.125.2025.04.24.04.23.21
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 04:23:22 -0700 (PDT)
Date: Thu, 24 Apr 2025 14:23:20 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v4] systemd: use serial-getty-generator on
 genericarm64
Message-ID: <aAofKDvYXk7wNll0@nuoska>
References: <1834AA7DE0B774F2.30314@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1834AA7DE0B774F2.30314@lists.yoctoproject.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 24 Apr 2025 11:23:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13607

Hi,

This is replaced by "systemd-serialgetty: disable on genericarm64"
since systemd should not be target machine specific but
systemd-serialgetty is since it uses SERIAL_CONSOLES variable.

Cheers,

-Mikko

